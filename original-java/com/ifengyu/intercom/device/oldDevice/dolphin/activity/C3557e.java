package com.ifengyu.intercom.device.oldDevice.dolphin.activity;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3557e implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3557e f12869a = new C3557e();

    private /* synthetic */ C3557e() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f("DolphinSettingActivity", "activateDevice success");
    }
}
