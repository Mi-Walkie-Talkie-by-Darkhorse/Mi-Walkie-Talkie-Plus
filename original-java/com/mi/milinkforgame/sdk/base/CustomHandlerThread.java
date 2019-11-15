package com.mi.milinkforgame.sdk.base;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public abstract class CustomHandlerThread {
    /* access modifiers changed from: protected */
    public Handler mHandler;
    private HandlerThread mHandlerThread;

    /* access modifiers changed from: protected */
    public abstract void processMessage(Message message);

    public CustomHandlerThread(String str) {
        this(str, 0);
    }

    public CustomHandlerThread(String str, int i) {
        this.mHandlerThread = new HandlerThread(str, i);
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) {
            public void handleMessage(Message message) {
                CustomHandlerThread.this.processMessage(message);
            }
        };
    }

    public Message obtainMessage() {
        return this.mHandler.obtainMessage();
    }

    public void sendMessage(Message message) {
        this.mHandler.sendMessage(message);
    }

    public void sendMessageDelayed(Message message, long j) {
        this.mHandler.sendMessageDelayed(message, j);
    }

    public void removeMessage(int i) {
        this.mHandler.removeMessages(i);
    }

    public void removeMessage(int i, Object obj) {
        this.mHandler.removeMessages(i, obj);
    }

    public final boolean post(Runnable runnable) {
        return this.mHandler.post(runnable);
    }

    public final boolean postDelayed(Runnable runnable, long j) {
        return this.mHandler.postDelayed(runnable, j);
    }

    public void destroy() {
        this.mHandlerThread.quit();
    }

    public Looper getLooper() {
        return this.mHandlerThread.getLooper();
    }

    public void setHandler(Handler handler) {
        if (handler == null) {
            return;
        }
        if (handler.getLooper() != getLooper()) {
            throw new IllegalArgumentException("Looper对象不一致，请使用CustomHandlerThread.getLooper()构造Handler对象");
        }
        this.mHandler = handler;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public HandlerThread getHandlerThread() {
        return this.mHandlerThread;
    }
}
