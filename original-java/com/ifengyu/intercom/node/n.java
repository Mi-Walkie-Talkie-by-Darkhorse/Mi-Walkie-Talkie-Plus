package com.ifengyu.intercom.node;

/* compiled from: ThreadWrapper.java */
/* loaded from: classes2.dex */
public class n extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f5933a;

    public n(Runnable runnable) {
        super(runnable);
    }

    public final void a() {
        this.f5933a = false;
    }

    public final boolean b() {
        return this.f5933a;
    }

    @Override // java.lang.Thread
    public void interrupt() {
        this.f5933a = true;
        super.interrupt();
    }
}
