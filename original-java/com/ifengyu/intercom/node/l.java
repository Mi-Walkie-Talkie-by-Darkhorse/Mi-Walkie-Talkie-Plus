package com.ifengyu.intercom.node;

import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.Command.Builder;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* compiled from: RxCallable */
public class l implements Callable<Void> {
    private final InputStream a;
    private final String b;
    private final q c;
    private final j d;
    private final h e = i.a();

    public l(q qVar, InputStream inputStream, e eVar, j jVar) {
        this.c = qVar;
        this.a = inputStream;
        this.b = eVar.a();
        this.d = jVar;
    }

    /* renamed from: a */
    public Void call() throws Exception {
        Thread currentThread = Thread.currentThread();
        currentThread.setName("RxCallable");
        o oVar = (o) currentThread;
        Builder newBuilder = Command.newBuilder();
        while (!oVar.a()) {
            s.a("RxCallable", "reading from peer");
            newBuilder.clear();
            if (i.a(this.e, this.a, newBuilder, this.d) > 0) {
                if (s.a()) {
                    s.a("RxCallable", "incoming Command: " + q.a(newBuilder.build()));
                    s.a("RxCallable", "notifying message transports");
                }
                for (h a2 : this.c.b) {
                    a2.a(this.b, newBuilder.build());
                }
                s.a("RxCallable", "reading from peer is done");
            }
        }
        s.b("RxCallable", "RxCallable is finished.");
        return null;
    }
}
