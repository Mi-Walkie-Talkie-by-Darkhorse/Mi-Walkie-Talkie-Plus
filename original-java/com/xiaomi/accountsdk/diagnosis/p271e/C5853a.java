package com.xiaomi.accountsdk.diagnosis.p271e;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: com.xiaomi.accountsdk.diagnosis.e.a */
/* loaded from: classes2.dex */
public class C5853a {
    /* renamed from: a */
    public static boolean m4205a(Context context) {
        return m4203b(context).getBoolean("diagnosis_enabled", false);
    }

    /* renamed from: a */
    public static boolean m4204a(Context context, boolean z) {
        return m4203b(context).edit().putBoolean("diagnosis_enabled", z).commit();
    }

    /* renamed from: b */
    private static SharedPreferences m4203b(Context context) {
        return context.getSharedPreferences("passport_diagnosis", 4);
    }
}
