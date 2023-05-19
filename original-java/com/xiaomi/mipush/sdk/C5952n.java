package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;

/* renamed from: com.xiaomi.mipush.sdk.n */
/* loaded from: classes2.dex */
public class C5952n {

    /* renamed from: a */
    private static int f20968a = -1;

    /* renamed from: a */
    public static EnumC5920ag m3844a(Context context) {
        try {
            return (context.getPackageManager().getServiceInfo(new ComponentName("com.huawei.hwid", "com.huawei.hms.core.service.HMSCoreService"), 128) == null || !m3845a()) ? EnumC5920ag.OTHER : EnumC5920ag.HUAWEI;
        } catch (Exception unused) {
            return EnumC5920ag.OTHER;
        }
    }

    /* renamed from: a */
    private static boolean m3845a() {
        try {
            String str = (String) C6016bj.m3646a("android.os.SystemProperties", "get", "ro.build.hw_emui_api_level", "");
            if (!TextUtils.isEmpty(str)) {
                if (Integer.parseInt(str) >= 9) {
                    return true;
                }
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m3843a(Context context) {
        Object m3648a = C6016bj.m3648a(C6016bj.m3646a("com.google.android.gms.common.GoogleApiAvailability", "getInstance", new Object[0]), "isGooglePlayServicesAvailable", context);
        Object m3647a = C6016bj.m3647a("com.google.android.gms.common.ConnectionResult", MonitorResult.SUCCESS);
        if (m3647a == null || !(m3647a instanceof Integer)) {
            AbstractC5876b.m4139c("google service is not avaliable");
            f20968a = 0;
            return false;
        }
        int intValue = ((Integer) Integer.class.cast(m3647a)).intValue();
        if (m3648a != null) {
            if (m3648a instanceof Integer) {
                f20968a = ((Integer) Integer.class.cast(m3648a)).intValue() == intValue ? 1 : 0;
            } else {
                f20968a = 0;
                AbstractC5876b.m4139c("google service is not avaliable");
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("is google service can be used");
        sb.append(f20968a > 0);
        AbstractC5876b.m4139c(sb.toString());
        return f20968a > 0;
    }

    /* renamed from: b */
    public static boolean m3842b(Context context) {
        boolean z = false;
        Object m3646a = C6016bj.m3646a("com.xiaomi.assemble.control.COSPushManager", "isSupportPush", context);
        if (m3646a != null && (m3646a instanceof Boolean)) {
            z = ((Boolean) Boolean.class.cast(m3646a)).booleanValue();
        }
        AbstractC5876b.m4139c("color os push  is avaliable ? :" + z);
        return z;
    }

    /* renamed from: c */
    public static boolean m3841c(Context context) {
        boolean z = false;
        Object m3646a = C6016bj.m3646a("com.xiaomi.assemble.control.FTOSPushManager", "isSupportPush", context);
        if (m3646a != null && (m3646a instanceof Boolean)) {
            z = ((Boolean) Boolean.class.cast(m3646a)).booleanValue();
        }
        AbstractC5876b.m4139c("fun touch os push  is avaliable ? :" + z);
        return z;
    }
}
