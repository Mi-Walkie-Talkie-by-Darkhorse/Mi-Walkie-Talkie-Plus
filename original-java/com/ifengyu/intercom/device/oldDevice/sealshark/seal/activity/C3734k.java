package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3734k implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3734k f13368a = new C3734k();

    private /* synthetic */ C3734k() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f("SealSettingActivity", "activateDevice success");
    }
}
