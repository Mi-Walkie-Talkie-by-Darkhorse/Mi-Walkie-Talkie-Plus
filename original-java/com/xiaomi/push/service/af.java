package com.xiaomi.push.service;

import android.content.Context;
import android.os.Messenger;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.Cif;
import com.xiaomi.push.da;
import com.xiaomi.push.fy;
import com.xiaomi.push.gj;
import com.xiaomi.push.gu;
import com.xiaomi.push.ha;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.ik;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.jg;
import com.xiaomi.push.jl;
import com.xiaomi.push.service.bd;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class af {
    static fy a(XMPushService xMPushService, byte[] bArr) {
        ir irVar = new ir();
        try {
            jf.a(irVar, bArr);
            return a(s.m648a((Context) xMPushService), xMPushService, irVar);
        } catch (jl e) {
            b.a(e);
            return null;
        }
    }

    static fy a(r rVar, Context context, ir irVar) {
        try {
            fy fyVar = new fy();
            fyVar.a(5);
            fyVar.c(rVar.f1006a);
            fyVar.b(a(irVar));
            fyVar.a("SECMSG", "message");
            String str = rVar.f1006a;
            irVar.f649a.f576a = str.substring(0, str.indexOf("@"));
            irVar.f649a.f580c = str.substring(str.indexOf("/") + 1);
            fyVar.a(jf.a(irVar), rVar.f9353c);
            fyVar.a((short) 1);
            b.m1a("try send mi push message. packagename:" + irVar.f654b + " action:" + irVar.f647a);
            return fyVar;
        } catch (NullPointerException e) {
            b.a(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ir a(String str, String str2) {
        iu iuVar = new iu();
        iuVar.b(str2);
        iuVar.c("package uninstalled");
        iuVar.a(ha.i());
        iuVar.a(false);
        return a(str, str2, iuVar, hv.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends jg<T, ?>> ir a(String str, String str2, T t, hv hvVar) {
        return a(str, str2, t, hvVar, true);
    }

    private static <T extends jg<T, ?>> ir a(String str, String str2, T t, hv hvVar, boolean z) {
        byte[] a2 = jf.a(t);
        ir irVar = new ir();
        ik ikVar = new ik();
        ikVar.f575a = 5L;
        ikVar.f576a = "fakeid";
        irVar.a(ikVar);
        irVar.a(ByteBuffer.wrap(a2));
        irVar.a(hvVar);
        irVar.b(z);
        irVar.b(str);
        irVar.a(false);
        irVar.a(str2);
        return irVar;
    }

    private static String a(ir irVar) {
        Map<String, String> map;
        ii iiVar = irVar.f648a;
        if (!(iiVar == null || (map = iiVar.f566b) == null)) {
            String str = map.get("ext_traffic_source_pkg");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return irVar.f654b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return str + ".permission.MIPUSH_RECEIVE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(XMPushService xMPushService) {
        r a2 = s.m648a(xMPushService.getApplicationContext());
        if (a2 != null) {
            bd.b a3 = s.m648a(xMPushService.getApplicationContext()).a(xMPushService);
            b.m1a("prepare account. " + a3.f947a);
            a(xMPushService, a3);
            bd.a().a(a3);
            bu.a(xMPushService).a(new ag("GAID", 172800L, xMPushService, a2));
            a(xMPushService, a2, 172800);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(XMPushService xMPushService, ir irVar) {
        da.a(irVar.b(), xMPushService.getApplicationContext(), irVar, -1);
        gj a2 = xMPushService.m549a();
        if (a2 == null) {
            throw new gu("try send msg while connection is null.");
        } else if (a2.m317a()) {
            fy a3 = a(s.m648a((Context) xMPushService), xMPushService, irVar);
            if (a3 != null) {
                a2.b(a3);
            }
        } else {
            throw new gu("Don't support XMPP connection.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(XMPushService xMPushService, bd.b bVar) {
        bVar.a((Messenger) null);
        bVar.a(new ai(xMPushService));
    }

    private static void a(XMPushService xMPushService, r rVar, int i) {
        bu.a(xMPushService).a(new ah("MSAID", i, xMPushService, rVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(XMPushService xMPushService, String str, byte[] bArr) {
        da.a(str, xMPushService.getApplicationContext(), bArr);
        gj a2 = xMPushService.m549a();
        if (a2 == null) {
            throw new gu("try send msg while connection is null.");
        } else if (a2.m317a()) {
            fy a3 = a(xMPushService, bArr);
            if (a3 != null) {
                a2.b(a3);
            } else {
                v.a(xMPushService, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "not a valid message");
            }
        } else {
            throw new gu("Don't support XMPP connection.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ir b(String str, String str2) {
        iu iuVar = new iu();
        iuVar.b(str2);
        iuVar.c(Cif.AppDataCleared.f527a);
        iuVar.a(ba.a());
        iuVar.a(false);
        return a(str, str2, iuVar, hv.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends jg<T, ?>> ir b(String str, String str2, T t, hv hvVar) {
        return a(str, str2, t, hvVar, false);
    }
}
