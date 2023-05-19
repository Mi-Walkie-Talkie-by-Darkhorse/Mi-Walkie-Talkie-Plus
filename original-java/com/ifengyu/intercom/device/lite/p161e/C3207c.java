package com.ifengyu.intercom.device.lite.p161e;

import com.ifengyu.library.utils.C4971k;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.lite.e.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3207c implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3207c f12218a = new C3207c();

    private /* synthetic */ C3207c() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        C4971k.m8656d(LiteViewModel.f12233k, "load device from db failed", (Throwable) obj);
    }
}
