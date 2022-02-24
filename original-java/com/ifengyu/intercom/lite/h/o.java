package com.ifengyu.intercom.lite.h;

import com.ifengyu.intercom.i.z;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class o implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ o f5630a = new o();

    private /* synthetic */ o() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        z.a(g0.f, "load config failed failed", (Throwable) obj);
    }
}
