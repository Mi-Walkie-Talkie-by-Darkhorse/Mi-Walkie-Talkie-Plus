package com.ifengyu.intercom.node;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Future;

/* compiled from: DeviceConnection */
public class g {
    final q a;
    final ConnectionConfiguration b;
    public final p c;
    public final Future d;
    public final Future e;
    public final InputStream f;
    public final OutputStream g;

    public g(q qVar, ConnectionConfiguration connectionConfiguration, p pVar, Future future, Future future2, InputStream inputStream, OutputStream outputStream) {
        this.a = qVar;
        this.b = connectionConfiguration;
        this.c = pVar;
        this.d = future;
        this.e = future2;
        this.f = inputStream;
        this.g = outputStream;
    }
}
