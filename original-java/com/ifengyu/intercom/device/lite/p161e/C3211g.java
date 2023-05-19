package com.ifengyu.intercom.device.lite.p161e;

import com.ifengyu.library.utils.C4971k;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.lite.e.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3211g implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3211g f12223a = new C3211g();

    private /* synthetic */ C3211g() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        C4971k.m8656d(LiteViewModel.f12233k, "update device to db failed", (Throwable) obj);
    }
}
