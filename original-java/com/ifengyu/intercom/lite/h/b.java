package com.ifengyu.intercom.lite.h;

import com.ifengyu.intercom.i.z;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f5592a = new b();

    private /* synthetic */ b() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        z.a(g0.f, "delete config file failed", (Throwable) obj);
    }
}
