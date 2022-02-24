package com.xiaomi.accountsdk.diagnosis.e;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes2.dex */
public class a {
    public static boolean a(Context context) {
        return b(context).getBoolean("diagnosis_enabled", false);
    }

    public static boolean a(Context context, boolean z) {
        return b(context).edit().putBoolean("diagnosis_enabled", z).commit();
    }

    private static SharedPreferences b(Context context) {
        return context.getSharedPreferences("passport_diagnosis", 4);
    }
}
