package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6207gy;
import com.xiaomi.push.C6209gz;
import com.xiaomi.push.C6213hc;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.service.C6381bd;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: com.xiaomi.push.service.j */
/* loaded from: classes2.dex */
public class C6444j {

    /* renamed from: a */
    private C6464w f23190a = new C6464w();

    /* renamed from: a */
    public static String m1357a(C6381bd.C6383b c6383b) {
        StringBuilder sb;
        String str;
        if ("9".equals(c6383b.f23042g)) {
            sb = new StringBuilder();
            sb.append(c6383b.f23032a);
            str = ".permission.MIMC_RECEIVE";
        } else {
            sb = new StringBuilder();
            sb.append(c6383b.f23032a);
            str = ".permission.MIPUSH_RECEIVE";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: a */
    private static void m1365a(Context context, Intent intent, C6381bd.C6383b c6383b) {
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, m1357a(c6383b));
        }
    }

    /* renamed from: a */
    C6381bd.C6383b m1361a(C6173fy c6173fy) {
        Collection<C6381bd.C6383b> m1501a = C6381bd.m1509a().m1501a(Integer.toString(c6173fy.m2843a()));
        if (m1501a.isEmpty()) {
            return null;
        }
        Iterator<C6381bd.C6383b> it2 = m1501a.iterator();
        if (m1501a.size() == 1) {
            return it2.next();
        }
        String m2821g = c6173fy.m2821g();
        while (it2.hasNext()) {
            C6381bd.C6383b next = it2.next();
            if (TextUtils.equals(m2821g, next.f23036b)) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    C6381bd.C6383b m1360a(AbstractC6211ha abstractC6211ha) {
        Collection<C6381bd.C6383b> m1501a = C6381bd.m1509a().m1501a(abstractC6211ha.m2654k());
        if (m1501a.isEmpty()) {
            return null;
        }
        Iterator<C6381bd.C6383b> it2 = m1501a.iterator();
        if (m1501a.size() == 1) {
            return it2.next();
        }
        String m2650m = abstractC6211ha.m2650m();
        String m2652l = abstractC6211ha.m2652l();
        while (it2.hasNext()) {
            C6381bd.C6383b next = it2.next();
            if (TextUtils.equals(m2650m, next.f23036b) || TextUtils.equals(m2652l, next.f23036b)) {
                return next;
            }
            while (it2.hasNext()) {
            }
        }
        return null;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: a */
    public void m1366a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.service_started");
        if (C6306l.m1839c()) {
            intent.addFlags(16777216);
        }
        AbstractC5876b.m4147a("[Bcst] send ***.push.service_started broadcast to inform push service has started.");
        context.sendBroadcast(intent);
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: a */
    public void m1364a(Context context, C6381bd.C6383b c6383b, int i) {
        if ("5".equalsIgnoreCase(c6383b.f23042g)) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_closed");
        intent.setPackage(c6383b.f23032a);
        intent.putExtra(AbstractC6391bh.f23095u, c6383b.f23042g);
        intent.putExtra("ext_reason", i);
        intent.putExtra(AbstractC6391bh.f23092r, c6383b.f23036b);
        intent.putExtra(AbstractC6391bh.f23066G, c6383b.f23044i);
        if (c6383b.f23026a == null || !"9".equals(c6383b.f23042g)) {
            AbstractC5876b.m4147a(String.format("[Bcst] notify channel closed. %s,%s,%d", c6383b.f23042g, c6383b.f23032a, Integer.valueOf(i)));
            m1365a(context, intent, c6383b);
            return;
        }
        try {
            c6383b.f23026a.send(Message.obtain(null, 17, intent));
        } catch (RemoteException unused) {
            c6383b.f23026a = null;
            StringBuilder sb = new StringBuilder();
            sb.append("peer may died: ");
            String str = c6383b.f23036b;
            sb.append(str.substring(str.lastIndexOf(64)));
            AbstractC5876b.m4147a(sb.toString());
        }
    }

    /* renamed from: a */
    public void m1363a(Context context, C6381bd.C6383b c6383b, String str, String str2) {
        if (c6383b == null) {
            AbstractC5876b.m4138d("error while notify kick by server!");
        } else if ("5".equalsIgnoreCase(c6383b.f23042g)) {
            AbstractC5876b.m4138d("mipush kicked by server");
        } else {
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.kicked");
            intent.setPackage(c6383b.f23032a);
            intent.putExtra("ext_kick_type", str);
            intent.putExtra("ext_kick_reason", str2);
            intent.putExtra("ext_chid", c6383b.f23042g);
            intent.putExtra(AbstractC6391bh.f23092r, c6383b.f23036b);
            intent.putExtra(AbstractC6391bh.f23066G, c6383b.f23044i);
            AbstractC5876b.m4147a(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", c6383b.f23042g, c6383b.f23032a, str2));
            m1365a(context, intent, c6383b);
        }
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: a */
    public void m1362a(Context context, C6381bd.C6383b c6383b, boolean z, int i, String str) {
        if ("5".equalsIgnoreCase(c6383b.f23042g)) {
            this.f23190a.m1265a(context, c6383b, z, i, str);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_opened");
        intent.setPackage(c6383b.f23032a);
        intent.putExtra("ext_succeeded", z);
        if (!z) {
            intent.putExtra("ext_reason", i);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("ext_reason_msg", str);
        }
        intent.putExtra("ext_chid", c6383b.f23042g);
        intent.putExtra(AbstractC6391bh.f23092r, c6383b.f23036b);
        intent.putExtra(AbstractC6391bh.f23066G, c6383b.f23044i);
        AbstractC5876b.m4147a(String.format("[Bcst] notify channel open result. %s,%s,%b,%d", c6383b.f23042g, c6383b.f23032a, Boolean.valueOf(z), Integer.valueOf(i)));
        m1365a(context, intent, c6383b);
    }

    /* renamed from: a */
    public void m1359a(XMPushService xMPushService, String str, C6173fy c6173fy) {
        C6381bd.C6383b m1361a = m1361a(c6173fy);
        if (m1361a == null) {
            AbstractC5876b.m4138d("error while notify channel closed! channel " + str + " not registered");
        } else if ("5".equalsIgnoreCase(str)) {
            this.f23190a.m1261a(xMPushService, c6173fy, m1361a);
        } else {
            String str2 = m1361a.f23032a;
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.new_msg");
            intent.setPackage(str2);
            intent.putExtra("ext_rcv_timestamp", SystemClock.elapsedRealtime());
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_raw_packet", c6173fy.m2834a(m1361a.f23043h));
            intent.putExtra(AbstractC6391bh.f23066G, m1361a.f23044i);
            intent.putExtra(AbstractC6391bh.f23099y, m1361a.f23043h);
            if (m1361a.f23026a != null) {
                try {
                    m1361a.f23026a.send(Message.obtain(null, 17, intent));
                    AbstractC5876b.m4147a("message was sent by messenger for chid=" + str);
                    return;
                } catch (RemoteException unused) {
                    m1361a.f23026a = null;
                    StringBuilder sb = new StringBuilder();
                    sb.append("peer may died: ");
                    String str3 = m1361a.f23036b;
                    sb.append(str3.substring(str3.lastIndexOf(64)));
                    AbstractC5876b.m4147a(sb.toString());
                }
            }
            if ("com.xiaomi.xmsf".equals(str2)) {
                return;
            }
            AbstractC5876b.m4147a(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", m1361a.f23042g, m1361a.f23032a, c6173fy.m2823e()));
            m1365a(xMPushService, intent, m1361a);
        }
    }

    /* renamed from: a */
    public void m1358a(XMPushService xMPushService, String str, AbstractC6211ha abstractC6211ha) {
        String str2;
        String str3;
        C6381bd.C6383b m1360a = m1360a(abstractC6211ha);
        if (m1360a != null) {
            if ("5".equalsIgnoreCase(str)) {
                this.f23190a.m1260a(xMPushService, abstractC6211ha, m1360a);
                return;
            }
            String str4 = m1360a.f23032a;
            if (abstractC6211ha instanceof C6209gz) {
                str3 = "com.xiaomi.push.new_msg";
            } else if (abstractC6211ha instanceof C6207gy) {
                str3 = "com.xiaomi.push.new_iq";
            } else if (abstractC6211ha instanceof C6213hc) {
                str3 = "com.xiaomi.push.new_pres";
            } else {
                str2 = "unknown packet type, drop it";
            }
            Intent intent = new Intent();
            intent.setAction(str3);
            intent.setPackage(str4);
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_packet", abstractC6211ha.mo2641a());
            intent.putExtra(AbstractC6391bh.f23066G, m1360a.f23044i);
            intent.putExtra(AbstractC6391bh.f23099y, m1360a.f23043h);
            AbstractC5876b.m4147a(String.format("[Bcst] notify packet arrival. %s,%s,%s", m1360a.f23042g, m1360a.f23032a, abstractC6211ha.m2655j()));
            m1365a(xMPushService, intent, m1360a);
            return;
        }
        str2 = "error while notify channel closed! channel " + str + " not registered";
        AbstractC5876b.m4138d(str2);
    }
}
