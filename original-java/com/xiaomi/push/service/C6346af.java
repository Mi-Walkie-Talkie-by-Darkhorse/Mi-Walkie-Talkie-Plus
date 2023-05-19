package com.xiaomi.push.service;

import android.content.Context;
import android.os.Messenger;
import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.AbstractC6191gj;
import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C6072da;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6253ik;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6285jl;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6279jg;
import com.xiaomi.push.service.C6381bd;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.af */
/* loaded from: classes2.dex */
public final class C6346af {
    /* renamed from: a */
    static C6173fy m1694a(XMPushService xMPushService, byte[] bArr) {
        C6260ir c6260ir = new C6260ir();
        try {
            C6278jf.m1932a(c6260ir, bArr);
            return m1693a(C6459s.m1294a((Context) xMPushService), xMPushService, c6260ir);
        } catch (C6285jl e) {
            AbstractC5876b.m4143a(e);
            return null;
        }
    }

    /* renamed from: a */
    static C6173fy m1693a(C6457r c6457r, Context context, C6260ir c6260ir) {
        try {
            C6173fy c6173fy = new C6173fy();
            c6173fy.m2838a(5);
            c6173fy.m2825c(c6457r.f23220a);
            c6173fy.m2827b(m1700a(c6260ir));
            c6173fy.m2833a("SECMSG", CrashHianalyticsData.MESSAGE);
            String str = c6457r.f23220a;
            c6260ir.f22466a.f22332a = str.substring(0, str.indexOf("@"));
            c6260ir.f22466a.f22336c = str.substring(str.indexOf("/") + 1);
            c6173fy.m2830a(C6278jf.m1933a(c6260ir), c6457r.f23222c);
            c6173fy.m2831a((short) 1);
            AbstractC5876b.m4147a("try send mi push message. packagename:" + c6260ir.f22471b + " action:" + c6260ir.f22464a);
            return c6173fy;
        } catch (NullPointerException e) {
            AbstractC5876b.m4143a(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C6260ir m1691a(String str, String str2) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(str2);
        c6263iu.m2176c("package uninstalled");
        c6263iu.m2189a(AbstractC6211ha.m2656i());
        c6263iu.m2185a(false);
        return m1690a(str, str2, c6263iu, EnumC6237hv.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T extends InterfaceC6279jg<T, ?>> C6260ir m1690a(String str, String str2, T t, EnumC6237hv enumC6237hv) {
        return m1689a(str, str2, t, enumC6237hv, true);
    }

    /* renamed from: a */
    private static <T extends InterfaceC6279jg<T, ?>> C6260ir m1689a(String str, String str2, T t, EnumC6237hv enumC6237hv, boolean z) {
        byte[] m1933a = C6278jf.m1933a(t);
        C6260ir c6260ir = new C6260ir();
        C6253ik c6253ik = new C6253ik();
        c6253ik.f22331a = 5L;
        c6253ik.f22332a = "fakeid";
        c6260ir.m2226a(c6253ik);
        c6260ir.m2222a(ByteBuffer.wrap(m1933a));
        c6260ir.m2228a(enumC6237hv);
        c6260ir.m2216b(z);
        c6260ir.m2217b(str);
        c6260ir.m2221a(false);
        c6260ir.m2223a(str2);
        return c6260ir;
    }

    /* renamed from: a */
    private static String m1700a(C6260ir c6260ir) {
        Map<String, String> map;
        C6251ii c6251ii = c6260ir.f22465a;
        if (c6251ii != null && (map = c6251ii.f22313b) != null) {
            String str = map.get("ext_traffic_source_pkg");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return c6260ir.f22471b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1692a(String str) {
        return str + ".permission.MIPUSH_RECEIVE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1699a(XMPushService xMPushService) {
        C6457r m1294a = C6459s.m1294a(xMPushService.getApplicationContext());
        if (m1294a != null) {
            C6381bd.C6383b m1302a = C6459s.m1294a(xMPushService.getApplicationContext()).m1302a(xMPushService);
            AbstractC5876b.m4147a("prepare account. " + m1302a.f23032a);
            m1697a(xMPushService, m1302a);
            C6381bd.m1509a().m1503a(m1302a);
            C6407bu.m1427a(xMPushService).m1426a(new C6347ag("GAID", 172800L, xMPushService, m1294a));
            m1696a(xMPushService, m1294a, 172800);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1698a(XMPushService xMPushService, C6260ir c6260ir) {
        C6072da.m3402a(c6260ir.m2219b(), xMPushService.getApplicationContext(), c6260ir, -1);
        AbstractC6191gj m1801a = xMPushService.m1801a();
        if (m1801a == null) {
            throw new C6203gu("try send msg while connection is null.");
        }
        if (!m1801a.mo2761a()) {
            throw new C6203gu("Don't support XMPP connection.");
        }
        C6173fy m1693a = m1693a(C6459s.m1294a((Context) xMPushService), xMPushService, c6260ir);
        if (m1693a != null) {
            m1801a.mo2747b(m1693a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1697a(XMPushService xMPushService, C6381bd.C6383b c6383b) {
        c6383b.m1490a((Messenger) null);
        c6383b.m1489a(new C6349ai(xMPushService));
    }

    /* renamed from: a */
    private static void m1696a(XMPushService xMPushService, C6457r c6457r, int i) {
        C6407bu.m1427a(xMPushService).m1426a(new C6348ah("MSAID", i, xMPushService, c6457r));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1695a(XMPushService xMPushService, String str, byte[] bArr) {
        C6072da.m3400a(str, xMPushService.getApplicationContext(), bArr);
        AbstractC6191gj m1801a = xMPushService.m1801a();
        if (m1801a == null) {
            throw new C6203gu("try send msg while connection is null.");
        }
        if (!m1801a.mo2761a()) {
            throw new C6203gu("Don't support XMPP connection.");
        }
        C6173fy m1694a = m1694a(xMPushService, bArr);
        if (m1694a != null) {
            m1801a.mo2747b(m1694a);
        } else {
            C6463v.m1274a(xMPushService, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "not a valid message");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C6260ir m1688b(String str, String str2) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(str2);
        c6263iu.m2176c(EnumC6248if.AppDataCleared.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.m2185a(false);
        return m1690a(str, str2, c6263iu, EnumC6237hv.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T extends InterfaceC6279jg<T, ?>> C6260ir m1687b(String str, String str2, T t, EnumC6237hv enumC6237hv) {
        return m1689a(str, str2, t, enumC6237hv, false);
    }
}
