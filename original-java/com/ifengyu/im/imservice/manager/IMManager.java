package com.ifengyu.im.imservice.manager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.ifengyu.im.imservice.callback.Packetlistener;

public abstract class IMManager {
    protected Context ctx;
    protected Handler mHandler = new Handler(Looper.getMainLooper());

    public abstract void doOnStart();

    public abstract void reset();

    /* access modifiers changed from: protected */
    public void setContext(Context context) {
        if (context == null) {
            throw new RuntimeException("context is null");
        }
        this.ctx = context;
    }

    public void onStartIMManager(Context context) {
        setContext(context);
        doOnStart();
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    /* access modifiers changed from: protected */
    public void successRunOnUiThread(final Packetlistener packetlistener, final Object obj) {
        if (packetlistener != null) {
            getHandler().post(new Runnable() {
                public void run() {
                    packetlistener.onSuccess(obj);
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void failRunOnUiThread(final Packetlistener packetlistener) {
        if (packetlistener != null) {
            getHandler().post(new Runnable() {
                public void run() {
                    packetlistener.onFaild();
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void timeOutRunOnUiThread(final Packetlistener packetlistener) {
        if (packetlistener != null) {
            getHandler().post(new Runnable() {
                public void run() {
                    packetlistener.onTimeout();
                }
            });
        }
    }
}
