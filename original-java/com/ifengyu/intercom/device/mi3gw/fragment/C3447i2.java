package com.ifengyu.intercom.device.mi3gw.fragment;

import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.i2 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3447i2 implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3447i2 f12664a = new C3447i2();

    private /* synthetic */ C3447i2() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        UserPrivacyReportUtil.m11135x(Integer.parseInt(((PrivacyInfoEntity) obj).getVersion()), DeviceDataShare.m13732s().m13742n().getAddress());
    }
}
