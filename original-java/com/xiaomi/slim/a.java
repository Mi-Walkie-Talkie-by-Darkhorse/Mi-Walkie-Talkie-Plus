package com.xiaomi.slim;

import android.text.TextUtils;
import com.xiaomi.push.protobuf.b.c;
import com.xiaomi.push.service.am.b;
import java.util.HashMap;

class a {
    public static void a(b bVar, String str, com.xiaomi.smack.a aVar) {
        String str2;
        c cVar = new c();
        if (!TextUtils.isEmpty(bVar.c)) {
            cVar.a(bVar.c);
        }
        if (!TextUtils.isEmpty(bVar.f)) {
            cVar.d(bVar.f);
        }
        if (!TextUtils.isEmpty(bVar.g)) {
            cVar.e(bVar.g);
        }
        cVar.b(bVar.e ? "1" : "0");
        if (!TextUtils.isEmpty(bVar.d)) {
            cVar.c(bVar.d);
        } else {
            cVar.c("XIAOMI-SASL");
        }
        b bVar2 = new b();
        bVar2.c(bVar.b);
        bVar2.a(Integer.parseInt(bVar.h));
        bVar2.b(bVar.a);
        bVar2.a("BIND", (String) null);
        bVar2.a(bVar2.h());
        com.xiaomi.channel.commonutils.logger.b.a("[Slim]: bind id=" + bVar2.h());
        HashMap hashMap = new HashMap();
        hashMap.put("challenge", str);
        hashMap.put("token", bVar.c);
        hashMap.put("chid", bVar.h);
        hashMap.put("from", bVar.b);
        hashMap.put("id", bVar2.h());
        hashMap.put("to", "xiaomi.com");
        if (bVar.e) {
            hashMap.put("kick", "1");
        } else {
            hashMap.put("kick", "0");
        }
        if (!TextUtils.isEmpty(bVar.f)) {
            hashMap.put("client_attrs", bVar.f);
        } else {
            hashMap.put("client_attrs", "");
        }
        if (!TextUtils.isEmpty(bVar.g)) {
            hashMap.put("cloud_attrs", bVar.g);
        } else {
            hashMap.put("cloud_attrs", "");
        }
        if (bVar.d.equals("XIAOMI-PASS") || bVar.d.equals("XMPUSH-PASS")) {
            str2 = com.xiaomi.channel.commonutils.string.b.a(bVar.d, null, hashMap, bVar.i);
        } else {
            if (bVar.d.equals("XIAOMI-SASL")) {
            }
            str2 = null;
        }
        cVar.f(str2);
        bVar2.a(cVar.c(), (String) null);
        aVar.b(bVar2);
    }

    public static void a(String str, String str2, com.xiaomi.smack.a aVar) {
        b bVar = new b();
        bVar.c(str2);
        bVar.a(Integer.parseInt(str));
        bVar.a("UBND", (String) null);
        aVar.b(bVar);
    }
}
