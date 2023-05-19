package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.http.entity.NewHttpResult;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3604d implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3604d f12993a = new C3604d();

    private /* synthetic */ C3604d() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        NewHttpResult newHttpResult = (NewHttpResult) obj;
        C4161y.m11049f("UpdateMcuActivity", "activateDevice success");
    }
}
