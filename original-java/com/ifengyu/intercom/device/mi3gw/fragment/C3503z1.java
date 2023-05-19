package com.ifengyu.intercom.device.mi3gw.fragment;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.models.DeviceModel;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.z1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3503z1 implements Function {

    /* renamed from: a */
    public static final /* synthetic */ C3503z1 f12733a = new C3503z1();

    private /* synthetic */ C3503z1() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        DeviceModel mo14242c;
        mo14242c = AppDatabase.m14275G(MiTalkiApp.m14296h()).mo14270E().mo14242c((String) obj);
        return mo14242c;
    }
}
