package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3804d implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3804d f13524a = new C3804d();

    private /* synthetic */ C3804d() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f("SharkSettingActivity", "activateDevice success");
    }
}
