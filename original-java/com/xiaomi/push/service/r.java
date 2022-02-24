package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.g;
import com.xiaomi.push.l;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.u;
import com.xiaomi.push.v;
import java.util.Locale;

/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    public final int f9351a;

    /* renamed from: a  reason: collision with other field name */
    public final String f1006a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9352b;

    /* renamed from: c  reason: collision with root package name */
    public final String f9353c;
    public final String d;
    public final String e;
    public final String f;

    public r(String str, String str2, String str3, String str4, String str5, String str6, int i) {
        this.f1006a = str;
        this.f9352b = str2;
        this.f9353c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.f9351a = i;
    }

    private static String a(Context context) {
        if (!"com.xiaomi.xmsf".equals(context)) {
            return l.b();
        }
        if (!TextUtils.isEmpty(null)) {
            return null;
        }
        String a2 = l.m525a("ro.miui.region");
        return TextUtils.isEmpty(a2) ? l.m525a("ro.product.locale.region") : a2;
    }

    public static boolean a() {
        try {
            return u.a(null, "miui.os.Build").getField("IS_ALPHA_BUILD").getBoolean(null);
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m647a(Context context) {
        return "com.xiaomi.xmsf".equals(context.getPackageName()) && a();
    }

    private static boolean b(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    public bd.b a(XMPushService xMPushService) {
        bd.b bVar = new bd.b(xMPushService);
        a(bVar, xMPushService, xMPushService.m554b(), ai.aD);
        return bVar;
    }

    public bd.b a(bd.b bVar, Context context, j jVar, String str) {
        bVar.f947a = context.getPackageName();
        bVar.f950b = this.f1006a;
        bVar.h = this.f9353c;
        bVar.f9270c = this.f9352b;
        bVar.g = "5";
        bVar.d = "XMPUSH-PASS";
        bVar.f949a = false;
        if (b(context)) {
            g.b(context);
        }
        v.a aVar = new v.a();
        aVar.a("sdk_ver", 47).a("cpvn", "4_8_2").a("cpvc", 40082).a("country_code", a.a(context).b()).a("region", a.a(context).a()).a("miui_vn", l.c()).a("miui_vc", Integer.valueOf(l.a(context))).a("xmsf_vc", Integer.valueOf(g.a(context, "com.xiaomi.xmsf"))).a("android_ver", Integer.valueOf(Build.VERSION.SDK_INT)).a("n_belong_to_app", Boolean.valueOf(au.m597a(context))).a("systemui_vc", Integer.valueOf(g.a(context)));
        String a2 = a(context);
        if (!TextUtils.isEmpty(a2)) {
            aVar.a("latest_country_code", a2);
        }
        String d = l.d();
        if (!TextUtils.isEmpty(d)) {
            aVar.a("device_ch", d);
        }
        String e = l.e();
        if (!TextUtils.isEmpty(e)) {
            aVar.a("device_mfr", e);
        }
        bVar.e = aVar.toString();
        String str2 = b(context) ? "1000271" : this.d;
        v.a aVar2 = new v.a();
        aVar2.a("appid", str2).a("locale", Locale.getDefault().toString()).a(Constants.EXTRA_KEY_MIID, u.a(context)).a("sync", 1);
        if (m647a(context)) {
            aVar2.a("ab", str);
        }
        bVar.f = aVar2.toString();
        bVar.f946a = jVar;
        return bVar;
    }
}
