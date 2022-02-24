package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;

/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static int f8719a = -1;

    public static ag a(Context context) {
        try {
            return (context.getPackageManager().getServiceInfo(new ComponentName("com.huawei.hwid", "com.huawei.hms.core.service.HMSCoreService"), 128) == null || !a()) ? ag.OTHER : ag.HUAWEI;
        } catch (Exception unused) {
            return ag.OTHER;
        }
    }

    private static boolean a() {
        try {
            String str = (String) bj.a("android.os.SystemProperties", "get", "ro.build.hw_emui_api_level", "");
            if (!TextUtils.isEmpty(str)) {
                if (Integer.parseInt(str) >= 9) {
                    return true;
                }
            }
        } catch (Exception e) {
            b.a(e);
        }
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m63a(Context context) {
        Object a2 = bj.a(bj.a("com.google.android.gms.common.GoogleApiAvailability", "getInstance", new Object[0]), "isGooglePlayServicesAvailable", context);
        Object a3 = bj.a("com.google.android.gms.common.ConnectionResult", "SUCCESS");
        if (a3 == null || !(a3 instanceof Integer)) {
            b.c("google service is not avaliable");
            f8719a = 0;
            return false;
        }
        int intValue = ((Integer) Integer.class.cast(a3)).intValue();
        if (a2 != null) {
            if (a2 instanceof Integer) {
                f8719a = ((Integer) Integer.class.cast(a2)).intValue() == intValue ? 1 : 0;
            } else {
                f8719a = 0;
                b.c("google service is not avaliable");
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("is google service can be used");
        sb.append(f8719a > 0);
        b.c(sb.toString());
        return f8719a > 0;
    }

    public static boolean b(Context context) {
        boolean z = false;
        Object a2 = bj.a("com.xiaomi.assemble.control.COSPushManager", "isSupportPush", context);
        if (a2 != null && (a2 instanceof Boolean)) {
            z = ((Boolean) Boolean.class.cast(a2)).booleanValue();
        }
        b.c("color os push  is avaliable ? :" + z);
        return z;
    }

    public static boolean c(Context context) {
        boolean z = false;
        Object a2 = bj.a("com.xiaomi.assemble.control.FTOSPushManager", "isSupportPush", context);
        if (a2 != null && (a2 instanceof Boolean)) {
            z = ((Boolean) Boolean.class.cast(a2)).booleanValue();
        }
        b.c("fun touch os push  is avaliable ? :" + z);
        return z;
    }
}
