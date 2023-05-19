package com.ifengyu.intercom.device.oldDevice;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.models.DeviceModel;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.oldDevice.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3621n implements Function {

    /* renamed from: a */
    public static final /* synthetic */ C3621n f13064a = new C3621n();

    private /* synthetic */ C3621n() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        DeviceModel mo14239f;
        mo14239f = AppDatabase.m14275G(MiTalkiApp.m14296h()).mo14270E().mo14239f((String) obj);
        return mo14239f;
    }
}
