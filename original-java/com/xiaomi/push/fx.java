package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.dw;
import com.xiaomi.push.service.bd;
import java.util.HashMap;

/* loaded from: classes2.dex */
class fx {
    public static void a(bd.b bVar, String str, gj gjVar) {
        String str2;
        dw.c cVar = new dw.c();
        if (!TextUtils.isEmpty(bVar.f9270c)) {
            cVar.a(bVar.f9270c);
        }
        if (!TextUtils.isEmpty(bVar.e)) {
            cVar.d(bVar.e);
        }
        if (!TextUtils.isEmpty(bVar.f)) {
            cVar.e(bVar.f);
        }
        cVar.b(bVar.f949a ? "1" : "0");
        if (!TextUtils.isEmpty(bVar.d)) {
            cVar.c(bVar.d);
        } else {
            cVar.c("XIAOMI-SASL");
        }
        fy fyVar = new fy();
        fyVar.c(bVar.f950b);
        fyVar.a(Integer.parseInt(bVar.g));
        fyVar.b(bVar.f947a);
        fyVar.a("BIND", (String) null);
        fyVar.a(fyVar.e());
        b.m1a("[Slim]: bind id=" + fyVar.e());
        HashMap hashMap = new HashMap();
        hashMap.put("challenge", str);
        hashMap.put("token", bVar.f9270c);
        hashMap.put("chid", bVar.g);
        hashMap.put("from", bVar.f950b);
        hashMap.put("id", fyVar.e());
        hashMap.put("to", "xiaomi.com");
        if (bVar.f949a) {
            hashMap.put("kick", "1");
        } else {
            hashMap.put("kick", "0");
        }
        if (!TextUtils.isEmpty(bVar.e)) {
            hashMap.put("client_attrs", bVar.e);
        } else {
            hashMap.put("client_attrs", "");
        }
        if (!TextUtils.isEmpty(bVar.f)) {
            hashMap.put("cloud_attrs", bVar.f);
        } else {
            hashMap.put("cloud_attrs", "");
        }
        if (bVar.d.equals("XIAOMI-PASS") || bVar.d.equals("XMPUSH-PASS")) {
            str2 = bm.a(bVar.d, null, hashMap, bVar.h);
        } else {
            bVar.d.equals("XIAOMI-SASL");
            str2 = null;
        }
        cVar.f(str2);
        fyVar.a(cVar.a(), (String) null);
        gjVar.b(fyVar);
    }

    public static void a(String str, String str2, gj gjVar) {
        fy fyVar = new fy();
        fyVar.c(str2);
        fyVar.a(Integer.parseInt(str));
        fyVar.a("UBND", (String) null);
        gjVar.b(fyVar);
    }
}
