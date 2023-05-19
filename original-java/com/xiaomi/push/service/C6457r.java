package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.service.C6381bd;
import java.util.Locale;

/* renamed from: com.xiaomi.push.service.r */
/* loaded from: classes2.dex */
public class C6457r {

    /* renamed from: a */
    public final int f23219a;

    /* renamed from: a */
    public final String f23220a;

    /* renamed from: b */
    public final String f23221b;

    /* renamed from: c */
    public final String f23222c;

    /* renamed from: d */
    public final String f23223d;

    /* renamed from: e */
    public final String f23224e;

    /* renamed from: f */
    public final String f23225f;

    public C6457r(String str, String str2, String str3, String str4, String str5, String str6, int i) {
        this.f23220a = str;
        this.f23221b = str2;
        this.f23222c = str3;
        this.f23223d = str4;
        this.f23224e = str5;
        this.f23225f = str6;
        this.f23219a = i;
    }

    /* renamed from: a */
    private static String m1304a(Context context) {
        if ("com.xiaomi.xmsf".equals(context)) {
            if (TextUtils.isEmpty(null)) {
                String m1847a = C6306l.m1847a("ro.miui.region");
                return TextUtils.isEmpty(m1847a) ? C6306l.m1847a("ro.product.locale.region") : m1847a;
            }
            return null;
        }
        return C6306l.m1845b();
    }

    /* renamed from: a */
    public static boolean m1305a() {
        try {
            return C6469u.m1234a(null, "miui.os.Build").getField("IS_ALPHA_BUILD").getBoolean(null);
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m1303a(Context context) {
        return "com.xiaomi.xmsf".equals(context.getPackageName()) && m1305a();
    }

    /* renamed from: b */
    private static boolean m1300b(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    /* renamed from: a */
    public C6381bd.C6383b m1302a(XMPushService xMPushService) {
        C6381bd.C6383b c6383b = new C6381bd.C6383b(xMPushService);
        m1301a(c6383b, xMPushService, xMPushService.m1758b(), UMCommonContent.f19350aD);
        return c6383b;
    }

    /* renamed from: a */
    public C6381bd.C6383b m1301a(C6381bd.C6383b c6383b, Context context, C6444j c6444j, String str) {
        c6383b.f23032a = context.getPackageName();
        c6383b.f23036b = this.f23220a;
        c6383b.f23043h = this.f23222c;
        c6383b.f23038c = this.f23221b;
        c6383b.f23042g = "5";
        c6383b.f23039d = "XMPUSH-PASS";
        c6383b.f23034a = false;
        if (m1300b(context)) {
            C6175g.m2808b(context);
        }
        C6470v.C6471a c6471a = new C6470v.C6471a();
        c6471a.m1226a("sdk_ver", 47).m1226a("cpvn", "4_8_2").m1226a("cpvc", 40082).m1226a("country_code", C6338a.m1718a(context).m1714b()).m1226a("region", C6338a.m1718a(context).m1719a()).m1226a("miui_vn", C6306l.m1840c()).m1226a("miui_vc", Integer.valueOf(C6306l.m1852a(context))).m1226a("xmsf_vc", Integer.valueOf(C6175g.m2814a(context, "com.xiaomi.xmsf"))).m1226a("android_ver", Integer.valueOf(Build.VERSION.SDK_INT)).m1226a("n_belong_to_app", Boolean.valueOf(C6368au.m1573a(context))).m1226a("systemui_vc", Integer.valueOf(C6175g.m2819a(context)));
        String m1304a = m1304a(context);
        if (!TextUtils.isEmpty(m1304a)) {
            c6471a.m1226a("latest_country_code", m1304a);
        }
        String m1838d = C6306l.m1838d();
        if (!TextUtils.isEmpty(m1838d)) {
            c6471a.m1226a("device_ch", m1838d);
        }
        String m1836e = C6306l.m1836e();
        if (!TextUtils.isEmpty(m1836e)) {
            c6471a.m1226a("device_mfr", m1836e);
        }
        c6383b.f23040e = c6471a.toString();
        String str2 = m1300b(context) ? "1000271" : this.f23223d;
        C6470v.C6471a c6471a2 = new C6470v.C6471a();
        c6471a2.m1226a("appid", str2).m1226a("locale", Locale.getDefault().toString()).m1226a(Constants.EXTRA_KEY_MIID, C6469u.m1237a(context)).m1226a("sync", 1);
        if (m1303a(context)) {
            c6471a2.m1226a("ab", str);
        }
        c6383b.f23041f = c6471a2.toString();
        c6383b.f23031a = c6444j;
        return c6383b;
    }
}
