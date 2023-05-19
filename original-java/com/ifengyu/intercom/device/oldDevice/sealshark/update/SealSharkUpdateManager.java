package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import android.content.Context;
import com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.i */
/* loaded from: classes2.dex */
public class SealSharkUpdateManager {

    /* renamed from: b */
    private static volatile SealSharkUpdateManager f13619b;

    /* renamed from: a */
    private SealSharkUpdateHelper f13620a;

    /* renamed from: a */
    public static SealSharkUpdateManager m12523a() {
        if (f13619b == null) {
            synchronized (SealSharkUpdateManager.class) {
                if (f13619b == null) {
                    f13619b = new SealSharkUpdateManager();
                }
            }
        }
        return f13619b;
    }

    /* renamed from: b */
    public static void m12522b() {
        if (f13619b != null) {
            f13619b = null;
        }
    }

    /* renamed from: c */
    public void m12521c(Context context, String str, Integer num, String str2, SealSharkUpdateHelper.InterfaceC3827e interfaceC3827e) {
        SealSharkUpdateHelper sealSharkUpdateHelper = new SealSharkUpdateHelper(context, str);
        this.f13620a = sealSharkUpdateHelper;
        sealSharkUpdateHelper.m12581B(num.intValue(), str2, interfaceC3827e);
    }
}
