package com.ifengyu.intercom.lite.h;

import com.ifengyu.blelib.a;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class c0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c0 f5595a = new c0();

    private /* synthetic */ c0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        a.b(h0.n, "load device from db failed", (Throwable) obj);
    }
}
