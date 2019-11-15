package com.mi.milinkforgame.sdk.base.os;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Messenger;

public class HandlerThreadEx implements Callback {
    private Callback callback;
    private Handler handler;
    private boolean ipcable;
    private Messenger messenger;
    private String name;
    private int priority;
    private HandlerThread thread;

    public HandlerThreadEx(String str, Callback callback2) {
        this(str, true, callback2);
    }

    public HandlerThreadEx(String str, boolean z, Callback callback2) {
        this(str, z, 0, callback2);
    }

    public HandlerThreadEx(String str, boolean z, int i, Callback callback2) {
        this.priority = 0;
        setName(str);
        setIpcable(z);
        setPriority(i);
        setCallback(callback2);
        start();
    }

    public boolean handleMessage(Message message) {
        if (this.callback != null) {
            return this.callback.handleMessage(message);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public synchronized void start() {
        if (this.thread == null || !this.thread.isAlive() || this.handler == null || (this.ipcable && this.messenger == null)) {
            if (this.thread == null) {
                this.thread = new HandlerThread(getName(), getPriority());
            }
            if (!this.thread.isAlive()) {
                this.thread.start();
            }
            if (this.thread.isAlive()) {
                this.handler = new Handler(this.thread.getLooper(), this);
            }
            if (this.ipcable && this.handler != null) {
                this.messenger = new Messenger(this.handler);
            }
        }
    }

    public synchronized void stop() {
        if (this.thread != null && this.thread.isAlive()) {
            this.thread.quit();
            this.thread = null;
        }
    }

    public Handler getHandler() {
        start();
        return this.handler;
    }

    public Messenger getMessenger() {
        start();
        return this.messenger;
    }

    public boolean isIpcable() {
        return this.ipcable;
    }

    /* access modifiers changed from: protected */
    public void setIpcable(boolean z) {
        this.ipcable = z;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
        if (this.thread != null && this.thread.isAlive()) {
            this.thread.setName(str);
        }
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setCallback(Callback callback2) {
        this.callback = callback2;
    }
}
