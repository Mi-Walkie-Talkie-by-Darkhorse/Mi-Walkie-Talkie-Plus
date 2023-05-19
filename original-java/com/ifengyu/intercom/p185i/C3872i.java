package com.ifengyu.intercom.p185i;

import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import java.util.Comparator;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.i.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3872i implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C3872i f13748a = new C3872i();

    private /* synthetic */ C3872i() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return DolphinBleManager.m12356H0((DolphinChannelModel) obj, (DolphinChannelModel) obj2);
    }
}
