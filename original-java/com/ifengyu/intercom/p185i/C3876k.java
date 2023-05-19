package com.ifengyu.intercom.p185i;

import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import java.util.Comparator;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.i.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3876k implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C3876k f13752a = new C3876k();

    private /* synthetic */ C3876k() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return DolphinBleManager.m12357G0((DolphinChannelModel) obj, (DolphinChannelModel) obj2);
    }
}
