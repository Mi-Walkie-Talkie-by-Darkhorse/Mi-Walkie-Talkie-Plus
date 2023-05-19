package com.ifengyu.intercom.p181h;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.intercom.h.a */
/* loaded from: classes2.dex */
public class BleLinkerManager {

    /* renamed from: a */
    private static BleLinkerManager f13704a;

    public BleLinkerManager(Context context) {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    /* renamed from: a */
    public static void m12425a(Context context) {
        if (f13704a == null) {
            f13704a = new BleLinkerManager(context);
        }
    }
}
