package com.ifengyu.intercom.lite.h;

import com.ifengyu.blelib.a;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class y implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ y f5641a = new y();

    private /* synthetic */ y() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        a.b(h0.n, "update device to db failed", (Throwable) obj);
    }
}
