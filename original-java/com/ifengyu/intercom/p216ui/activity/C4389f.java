package com.ifengyu.intercom.p216ui.activity;

import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import java.util.Comparator;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.activity.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4389f implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C4389f f14923a = new C4389f();

    private /* synthetic */ C4389f() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.compare(((BluetoothDeviceBean) obj2).getRssi(), ((BluetoothDeviceBean) obj).getRssi());
    }
}
