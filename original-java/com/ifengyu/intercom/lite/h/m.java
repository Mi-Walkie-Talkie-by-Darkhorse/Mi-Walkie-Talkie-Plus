package com.ifengyu.intercom.lite.h;

import com.ifengyu.intercom.i.z;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ m f5628a = new m();

    private /* synthetic */ m() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        z.a(g0.f, "update config file failed", (Throwable) obj);
    }
}
