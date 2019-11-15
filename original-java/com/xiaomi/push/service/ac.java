package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.slim.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.d;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.v;
import java.nio.ByteBuffer;
import org.apache.thrift.f;

final class ac {
    static b a(XMPushService xMPushService, byte[] bArr) {
        com.xiaomi.xmpush.thrift.ac acVar = new com.xiaomi.xmpush.thrift.ac();
        try {
            ar.a(acVar, bArr);
            return a(q.a(xMPushService), (Context) xMPushService, acVar);
        } catch (f e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            return null;
        }
    }

    static b a(p pVar, Context context, com.xiaomi.xmpush.thrift.ac acVar) {
        try {
            b bVar = new b();
            bVar.a(5);
            bVar.c(pVar.a);
            bVar.b(a(acVar));
            bVar.a("SECMSG", "message");
            String str = pVar.a;
            acVar.g.b = str.substring(0, str.indexOf("@"));
            acVar.g.d = str.substring(str.indexOf("/") + 1);
            bVar.a(ar.a(acVar), pVar.c);
            bVar.a(1);
            com.xiaomi.channel.commonutils.logger.b.a("try send mi push message. packagename:" + acVar.f + " action:" + acVar.a);
            return bVar;
        } catch (NullPointerException e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            return null;
        }
    }

    static com.xiaomi.xmpush.thrift.ac a(String str, String str2) {
        af afVar = new af();
        afVar.b(str2);
        afVar.c("package uninstalled");
        afVar.a(d.j());
        afVar.a(false);
        return a(str, str2, afVar, a.Notification);
    }

    static <T extends org.apache.thrift.a<T, ?>> com.xiaomi.xmpush.thrift.ac a(String str, String str2, T t, a aVar) {
        byte[] a = ar.a(t);
        com.xiaomi.xmpush.thrift.ac acVar = new com.xiaomi.xmpush.thrift.ac();
        v vVar = new v();
        vVar.a = 5;
        vVar.b = "fakeid";
        acVar.a(vVar);
        acVar.a(ByteBuffer.wrap(a));
        acVar.a(aVar);
        acVar.c(true);
        acVar.b(str);
        acVar.a(false);
        acVar.a(str2);
        return acVar;
    }

    private static String a(com.xiaomi.xmpush.thrift.ac acVar) {
        if (!(acVar.h == null || acVar.h.k == null)) {
            String str = (String) acVar.h.k.get("ext_traffic_source_pkg");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return acVar.f;
    }

    static void a(XMPushService xMPushService) {
        if (q.a(xMPushService.getApplicationContext()) != null) {
            am.b a = q.a(xMPushService.getApplicationContext()).a(xMPushService);
            a(xMPushService, a);
            am.a().a(a);
        }
    }

    static void a(XMPushService xMPushService, am.b bVar) {
        bVar.a((am.b.a) new ad(xMPushService));
    }

    static void a(XMPushService xMPushService, com.xiaomi.xmpush.thrift.ac acVar) {
        com.xiaomi.smack.a h = xMPushService.h();
        if (h == null) {
            throw new l("try send msg while connection is null.");
        } else if (h.a()) {
            b a = a(q.a(xMPushService), (Context) xMPushService, acVar);
            if (a != null) {
                h.b(a);
            }
        } else {
            throw new l("Don't support XMPP connection.");
        }
    }

    static void a(XMPushService xMPushService, String str, byte[] bArr) {
        com.xiaomi.smack.a h = xMPushService.h();
        if (h == null) {
            throw new l("try send msg while connection is null.");
        } else if (h.a()) {
            b a = a(xMPushService, bArr);
            if (a != null) {
                h.b(a);
            } else {
                t.a(xMPushService, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "not a valid message");
            }
        } else {
            throw new l("Don't support XMPP connection.");
        }
    }
}
