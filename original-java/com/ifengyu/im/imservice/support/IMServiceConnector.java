package com.ifengyu.im.imservice.support;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.ifengyu.im.imservice.service.IMService;
import com.ifengyu.im.imservice.service.IMService.IMServiceBinder;
import com.ifengyu.im.utils.Logger;

public abstract class IMServiceConnector {
    protected static Logger logger = Logger.getLogger(IMServiceConnector.class);
    /* access modifiers changed from: private */
    public IMService imService;
    private ServiceConnection imServiceConnection = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName componentName) {
            IMServiceConnector.logger.i("onService(imService)Disconnected", new Object[0]);
            IMServiceConnector.this.onServiceDisconnected();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IMServiceConnector.logger.i("im#onService(imService)Connected", new Object[0]);
            if (IMServiceConnector.this.imService == null) {
                IMServiceConnector.this.imService = ((IMServiceBinder) iBinder).getService();
                if (IMServiceConnector.this.imService == null) {
                    IMServiceConnector.logger.e("im#get imService failed", new Object[0]);
                    return;
                }
                IMServiceConnector.logger.d("im#get imService ok", new Object[0]);
            }
            IMServiceConnector.this.onIMServiceConnected();
        }
    };

    public abstract void onIMServiceConnected();

    public abstract void onServiceDisconnected();

    public IMService getIMService() {
        return this.imService;
    }

    public boolean connect(Context context) {
        return bindService(context);
    }

    public void disconnect(Context context) {
        logger.d("im#disconnect", new Object[0]);
        unbindService(context);
        onServiceDisconnected();
    }

    public boolean bindService(Context context) {
        logger.d("im#bindService", new Object[0]);
        Intent intent = new Intent();
        intent.setClass(context, IMService.class);
        if (!context.bindService(intent, this.imServiceConnection, 1)) {
            logger.e("im#bindService(imService) failed", new Object[0]);
            return false;
        }
        logger.i("im#bindService(imService) ok", new Object[0]);
        return true;
    }

    public void unbindService(Context context) {
        try {
            context.unbindService(this.imServiceConnection);
        } catch (IllegalArgumentException e) {
            logger.w("im#got exception becuase of unmatched bind/unbind, we sould place to onStop next version.e:%s", e.getMessage());
        }
        logger.i("unbindservice ok", new Object[0]);
    }
}
