package com.autonavi.ae.gmap.maploader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.autonavi.ae.gmap.callback.GLMapCoreCallback;

public class NetworkState {
    private static volatile NetworkState mNetworkState;
    private volatile boolean isConnected;
    private GLMapCoreCallback mNetWorkChanggeListener = null;
    private boolean mNetworkInitFlag;
    private Object mNetworkInitLock = new Object();

    public static NetworkState getInstance() {
        if (mNetworkState == null) {
            synchronized (NetworkState.class) {
                if (mNetworkState == null) {
                    mNetworkState = new NetworkState();
                }
            }
        }
        return mNetworkState;
    }

    public boolean isInternetConnected(Context context) {
        initNetworkReceiver(context);
        return this.isConnected;
    }

    private void initNetworkReceiver(Context context) {
        if (!this.mNetworkInitFlag) {
            synchronized (this.mNetworkInitLock) {
                if (!this.mNetworkInitFlag) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    context.registerReceiver(new BroadcastReceiver() {
                        public void onReceive(Context context, Intent intent) {
                            NetworkState.this.resetNetwork(context);
                        }
                    }, intentFilter);
                    resetNetwork(context);
                    this.mNetworkInitFlag = true;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void resetNetwork(Context context) {
        NetworkInfo networkInfo;
        boolean z;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            networkInfo = null;
        }
        if (networkInfo != null) {
            if (State.CONNECTED == networkInfo.getState()) {
                z = true;
            } else {
                z = false;
            }
            if (this.mNetWorkChanggeListener != null && z && !this.isConnected) {
                this.mNetWorkChanggeListener.resetRenderTimeLong();
            }
            if (z != this.isConnected) {
                this.isConnected = z;
            }
        } else if (this.isConnected) {
            this.isConnected = false;
        }
    }

    public void setNetWorkChangeListener(GLMapCoreCallback gLMapCoreCallback) {
        this.mNetWorkChanggeListener = gLMapCoreCallback;
    }
}
