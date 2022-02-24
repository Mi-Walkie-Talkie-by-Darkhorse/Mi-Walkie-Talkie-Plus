package com.ifengyu.intercom.node;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Future;

/* compiled from: DeviceConnection.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final Future f5919a;

    /* renamed from: b  reason: collision with root package name */
    public final Future f5920b;

    /* renamed from: c  reason: collision with root package name */
    public final InputStream f5921c;
    public final OutputStream d;

    public f(p pVar, ConnectionConfiguration connectionConfiguration, o oVar, Future future, Future future2, InputStream inputStream, OutputStream outputStream) {
        this.f5919a = future;
        this.f5920b = future2;
        this.f5921c = inputStream;
        this.d = outputStream;
    }
}
