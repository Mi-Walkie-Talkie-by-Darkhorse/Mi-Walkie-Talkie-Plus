package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6381bd;
import java.util.HashMap;

/* renamed from: com.xiaomi.push.fx */
/* loaded from: classes2.dex */
class C6172fx {
    /* renamed from: a */
    public static void m2845a(C6381bd.C6383b c6383b, String str, AbstractC6191gj abstractC6191gj) {
        String m3626a;
        C6099dw.C6102c c6102c = new C6099dw.C6102c();
        if (!TextUtils.isEmpty(c6383b.f23038c)) {
            c6102c.m3272a(c6383b.f23038c);
        }
        if (!TextUtils.isEmpty(c6383b.f23040e)) {
            c6102c.m3263d(c6383b.f23040e);
        }
        if (!TextUtils.isEmpty(c6383b.f23041f)) {
            c6102c.m3260e(c6383b.f23041f);
        }
        c6102c.m3269b(c6383b.f23034a ? "1" : "0");
        if (TextUtils.isEmpty(c6383b.f23039d)) {
            c6102c.m3266c("XIAOMI-SASL");
        } else {
            c6102c.m3266c(c6383b.f23039d);
        }
        C6173fy c6173fy = new C6173fy();
        c6173fy.m2825c(c6383b.f23036b);
        c6173fy.m2838a(Integer.parseInt(c6383b.f23042g));
        c6173fy.m2827b(c6383b.f23032a);
        c6173fy.m2833a("BIND", (String) null);
        c6173fy.m2835a(c6173fy.m2823e());
        AbstractC5876b.m4147a("[Slim]: bind id=" + c6173fy.m2823e());
        HashMap hashMap = new HashMap();
        hashMap.put("challenge", str);
        hashMap.put("token", c6383b.f23038c);
        hashMap.put("chid", c6383b.f23042g);
        hashMap.put("from", c6383b.f23036b);
        hashMap.put("id", c6173fy.m2823e());
        hashMap.put("to", "xiaomi.com");
        if (c6383b.f23034a) {
            hashMap.put("kick", "1");
        } else {
            hashMap.put("kick", "0");
        }
        if (TextUtils.isEmpty(c6383b.f23040e)) {
            hashMap.put("client_attrs", "");
        } else {
            hashMap.put("client_attrs", c6383b.f23040e);
        }
        if (TextUtils.isEmpty(c6383b.f23041f)) {
            hashMap.put("cloud_attrs", "");
        } else {
            hashMap.put("cloud_attrs", c6383b.f23041f);
        }
        if (c6383b.f23039d.equals("XIAOMI-PASS") || c6383b.f23039d.equals("XMPUSH-PASS")) {
            m3626a = C6021bm.m3626a(c6383b.f23039d, null, hashMap, c6383b.f23043h);
        } else {
            c6383b.f23039d.equals("XIAOMI-SASL");
            m3626a = null;
        }
        c6102c.m3257f(m3626a);
        c6173fy.m2830a(c6102c.m3144a(), (String) null);
        abstractC6191gj.mo2747b(c6173fy);
    }

    /* renamed from: a */
    public static void m2844a(String str, String str2, AbstractC6191gj abstractC6191gj) {
        C6173fy c6173fy = new C6173fy();
        c6173fy.m2825c(str2);
        c6173fy.m2838a(Integer.parseInt(str));
        c6173fy.m2833a("UBND", (String) null);
        abstractC6191gj.mo2747b(c6173fy);
    }
}
