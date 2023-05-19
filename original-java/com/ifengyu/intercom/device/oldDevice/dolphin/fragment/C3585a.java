package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3585a implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3585a f12945a = new C3585a();

    private /* synthetic */ C3585a() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f(DolphinPresetFragment.f12907r, "activateDevice success");
    }
}
