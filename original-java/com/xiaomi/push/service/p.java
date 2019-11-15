package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.am.b;
import java.util.Locale;

public class p {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final int g;

    public p(String str, String str2, String str3, String str4, String str5, String str6, int i) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = i;
    }

    public static boolean a() {
        try {
            return Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").getBoolean(null);
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean a(Context context) {
        return "com.xiaomi.xmsf".equals(context.getPackageName()) && a();
    }

    private static boolean b(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    public b a(XMPushService xMPushService) {
        b bVar = new b(xMPushService);
        a(bVar, xMPushService, xMPushService.e(), "c");
        return bVar;
    }

    public b a(b bVar, Context context, b bVar2, String str) {
        bVar.a = context.getPackageName();
        bVar.b = this.a;
        bVar.i = this.c;
        bVar.c = this.b;
        bVar.h = "5";
        bVar.d = "XMPUSH-PASS";
        bVar.e = false;
        String str2 = "";
        if (b(context)) {
            str2 = com.xiaomi.channel.commonutils.android.b.c(context);
        }
        bVar.f = String.format("%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s", new Object[]{"sdk_ver", Integer.valueOf(27), "cpvn", "3_4_5", "cpvc", Integer.valueOf(30405), "aapn", str2});
        bVar.g = String.format("%1$s:%2$s,%3$s:%4$s,%5$s:%6$s,sync:1", new Object[]{"appid", b(context) ? "1000271" : this.d, "locale", Locale.getDefault().toString(), Constants.EXTRA_KEY_MIID, m.a(context).c()});
        if (a(context)) {
            bVar.g += String.format(",%1$s:%2$s", new Object[]{"ab", str});
        }
        bVar.k = bVar2;
        return bVar;
    }
}
