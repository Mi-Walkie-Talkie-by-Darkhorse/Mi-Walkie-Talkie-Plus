package com.ifengyu.intercom.node;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.btle.BtleCentralService.a;
import com.ifengyu.library.util.c;

/* compiled from: BleServiceConnector */
public abstract class b {
    /* access modifiers changed from: private */
    public static final String TAG = b.class.getSimpleName();
    /* access modifiers changed from: private */
    public BtleCentralService mBleService;
    private ServiceConnection mServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (b.this.mBleService == null) {
                b.this.mBleService = ((a) iBinder).a();
                if (b.this.mBleService == null) {
                    c.d(b.TAG, "bleService#get imService failed");
                    return;
                }
                c.a(b.TAG, "bleService#get imService ok");
                b.this.onBleServiceConnected();
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
            b.this.onBleServiceDisconnected();
        }
    };

    public abstract void onBleServiceConnected();

    public abstract void onBleServiceDisconnected();

    public BtleCentralService getBleService() {
        return this.mBleService;
    }

    public boolean connect(Context context) {
        return bindService(context);
    }

    public void disconnect(Context context) {
        c.a(TAG, "bleService#disconnect");
        unbindService(context);
        onBleServiceDisconnected();
    }

    private void unbindService(Context context) {
        try {
            context.unbindService(this.mServiceConnection);
        } catch (IllegalArgumentException e) {
            c.c(TAG, "bleService#got exception becuase of unmatched bind/unbind, we sould place to onStop next version.e:" + e.getMessage());
        }
        c.b(TAG, "unbindservice ok");
    }

    public boolean bindService(Context context) {
        c.a(TAG, "bleService#bindService");
        Intent intent = new Intent();
        intent.setClass(context, BtleCentralService.class);
        if (!context.bindService(intent, this.mServiceConnection, 1)) {
            c.d(TAG, "bleService#bindService(BleCentralService) failed");
            return false;
        }
        c.b(TAG, "bleService#bindService(BleCentralService) ok");
        return true;
    }
}
