package com.ifengyu.intercom.node;

/* compiled from: ThreadWrapper */
public class o extends Thread {
    private volatile boolean a;

    public o(Runnable runnable) {
        super(runnable);
    }

    public final boolean a() {
        return this.a;
    }

    public final void b() {
        this.a = false;
    }

    public void interrupt() {
        this.a = true;
        super.interrupt();
    }
}
