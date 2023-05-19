package com.ifengyu.intercom.device.oldDevice;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3613h implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3613h f13053a = new C3613h();

    private /* synthetic */ C3613h() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f("BleDeviceMapActivity", "activateDevice success");
    }
}
