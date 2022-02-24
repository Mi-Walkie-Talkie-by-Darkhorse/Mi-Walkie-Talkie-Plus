package com.ifengyu.intercom.node;

import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* compiled from: RxCallable.java */
/* loaded from: classes2.dex */
public class k implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f5926a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5927b;

    /* renamed from: c  reason: collision with root package name */
    private final p f5928c;
    private final j d;
    private final h e = i.a();

    public k(p pVar, InputStream inputStream, d dVar, j jVar) {
        this.f5928c = pVar;
        this.f5926a = inputStream;
        this.f5927b = dVar.a();
        this.d = jVar;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        Thread currentThread = Thread.currentThread();
        currentThread.setName("RxCallable");
        n nVar = (n) currentThread;
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        while (!nVar.b()) {
            z.d("RxCallable", "reading from peer");
            newBuilder.clear();
            if (i.a(this.e, this.f5926a, newBuilder, this.d) > 0) {
                if (z.c()) {
                    z.d("RxCallable", "incoming Command: " + p.a(newBuilder.build()));
                    z.d("RxCallable", "notifying message transports");
                }
                for (g gVar : this.f5928c.d) {
                    gVar.a(this.f5927b, newBuilder.build());
                }
                z.d("RxCallable", "reading from peer is done");
            }
        }
        z.a("RxCallable", "RxCallable is finished.");
        return null;
    }
}
