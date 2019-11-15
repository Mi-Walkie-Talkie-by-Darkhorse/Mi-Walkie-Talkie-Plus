package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.ac;
import java.util.Map;

public class az {
    public static Runnable a;

    private static String a(Context context, String str) {
        return context.getSharedPreferences("typed_shield_pref", 0).getString(str + "_title", str);
    }

    public static String a(ac acVar) {
        Map s = acVar.m().s();
        if (s == null) {
            return null;
        }
        return (String) s.get("__typed_shield_type");
    }

    @TargetApi(19)
    static void a(Context context, ac acVar, Notification notification) {
        if (VERSION.SDK_INT >= 19) {
            String a2 = a(acVar);
            if (!TextUtils.isEmpty(a2) && "com.xiaomi.xmsf".equals(ae.a(acVar))) {
                Bundle bundle = notification.extras;
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putString("miui.category", a2);
                bundle.putString("miui.substName", a(context, a2));
                notification.extras = bundle;
            }
        }
    }

    public static boolean a(Context context, ac acVar) {
        if (!"com.xiaomi.xmsf".equals(ae.a(acVar))) {
            return false;
        }
        String a2 = a(acVar);
        if (TextUtils.isEmpty(a2)) {
            return false;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("typed_shield_pref", 0);
        if (!sharedPreferences.contains(a2 + "_shield") && a != null) {
            a.run();
        }
        return sharedPreferences.getBoolean(a2 + "_shield", true);
    }
}
