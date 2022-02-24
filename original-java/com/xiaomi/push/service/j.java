package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fy;
import com.xiaomi.push.gy;
import com.xiaomi.push.gz;
import com.xiaomi.push.ha;
import com.xiaomi.push.hc;
import com.xiaomi.push.l;
import com.xiaomi.push.service.bd;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private w f9334a = new w();

    public static String a(bd.b bVar) {
        StringBuilder sb;
        String str;
        if (!"9".equals(bVar.g)) {
            sb = new StringBuilder();
            sb.append(bVar.f947a);
            str = ".permission.MIPUSH_RECEIVE";
        } else {
            sb = new StringBuilder();
            sb.append(bVar.f947a);
            str = ".permission.MIMC_RECEIVE";
        }
        sb.append(str);
        return sb.toString();
    }

    private static void a(Context context, Intent intent, bd.b bVar) {
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, a(bVar));
        }
    }

    bd.b a(fy fyVar) {
        Collection<bd.b> a2 = bd.a().m611a(Integer.toString(fyVar.a()));
        if (a2.isEmpty()) {
            return null;
        }
        Iterator<bd.b> it = a2.iterator();
        if (a2.size() == 1) {
            return it.next();
        }
        String g = fyVar.g();
        while (it.hasNext()) {
            bd.b next = it.next();
            if (TextUtils.equals(g, next.f950b)) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    com.xiaomi.push.service.bd.b a(com.xiaomi.push.ha r6) {
        /*
            r5 = this;
            com.xiaomi.push.service.bd r0 = com.xiaomi.push.service.bd.a()
            java.lang.String r1 = r6.k()
            java.util.Collection r0 = r0.m611a(r1)
            boolean r1 = r0.isEmpty()
            r2 = 0
            if (r1 == 0) goto L_0x0014
            return r2
        L_0x0014:
            java.util.Iterator r1 = r0.iterator()
            int r0 = r0.size()
            r3 = 1
            if (r0 != r3) goto L_0x0026
            java.lang.Object r6 = r1.next()
            com.xiaomi.push.service.bd$b r6 = (com.xiaomi.push.service.bd.b) r6
            return r6
        L_0x0026:
            java.lang.String r0 = r6.m()
            java.lang.String r6 = r6.l()
        L_0x002e:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L_0x004b
            java.lang.Object r3 = r1.next()
            com.xiaomi.push.service.bd$b r3 = (com.xiaomi.push.service.bd.b) r3
            java.lang.String r4 = r3.f950b
            boolean r4 = android.text.TextUtils.equals(r0, r4)
            if (r4 != 0) goto L_0x004a
            java.lang.String r4 = r3.f950b
            boolean r4 = android.text.TextUtils.equals(r6, r4)
            if (r4 == 0) goto L_0x002e
        L_0x004a:
            return r3
        L_0x004b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.j.a(com.xiaomi.push.ha):com.xiaomi.push.service.bd$b");
    }

    @SuppressLint({"WrongConstant"})
    public void a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.service_started");
        if (l.m532c()) {
            intent.addFlags(16777216);
        }
        b.m1a("[Bcst] send ***.push.service_started broadcast to inform push service has started.");
        context.sendBroadcast(intent);
    }

    @SuppressLint({"DefaultLocale"})
    public void a(Context context, bd.b bVar, int i) {
        if (!"5".equalsIgnoreCase(bVar.g)) {
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.channel_closed");
            intent.setPackage(bVar.f947a);
            intent.putExtra(bh.u, bVar.g);
            intent.putExtra("ext_reason", i);
            intent.putExtra(bh.r, bVar.f950b);
            intent.putExtra(bh.G, bVar.i);
            if (bVar.f941a == null || !"9".equals(bVar.g)) {
                b.m1a(String.format("[Bcst] notify channel closed. %s,%s,%d", bVar.g, bVar.f947a, Integer.valueOf(i)));
                a(context, intent, bVar);
                return;
            }
            try {
                bVar.f941a.send(Message.obtain(null, 17, intent));
            } catch (RemoteException unused) {
                bVar.f941a = null;
                StringBuilder sb = new StringBuilder();
                sb.append("peer may died: ");
                String str = bVar.f950b;
                sb.append(str.substring(str.lastIndexOf(64)));
                b.m1a(sb.toString());
            }
        }
    }

    public void a(Context context, bd.b bVar, String str, String str2) {
        if (bVar == null) {
            b.d("error while notify kick by server!");
        } else if ("5".equalsIgnoreCase(bVar.g)) {
            b.d("mipush kicked by server");
        } else {
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.kicked");
            intent.setPackage(bVar.f947a);
            intent.putExtra("ext_kick_type", str);
            intent.putExtra("ext_kick_reason", str2);
            intent.putExtra("ext_chid", bVar.g);
            intent.putExtra(bh.r, bVar.f950b);
            intent.putExtra(bh.G, bVar.i);
            b.m1a(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", bVar.g, bVar.f947a, str2));
            a(context, intent, bVar);
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void a(Context context, bd.b bVar, boolean z, int i, String str) {
        if ("5".equalsIgnoreCase(bVar.g)) {
            this.f9334a.a(context, bVar, z, i, str);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_opened");
        intent.setPackage(bVar.f947a);
        intent.putExtra("ext_succeeded", z);
        if (!z) {
            intent.putExtra("ext_reason", i);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("ext_reason_msg", str);
        }
        intent.putExtra("ext_chid", bVar.g);
        intent.putExtra(bh.r, bVar.f950b);
        intent.putExtra(bh.G, bVar.i);
        b.m1a(String.format("[Bcst] notify channel open result. %s,%s,%b,%d", bVar.g, bVar.f947a, Boolean.valueOf(z), Integer.valueOf(i)));
        a(context, intent, bVar);
    }

    public void a(XMPushService xMPushService, String str, fy fyVar) {
        bd.b a2 = a(fyVar);
        if (a2 == null) {
            b.d("error while notify channel closed! channel " + str + " not registered");
        } else if ("5".equalsIgnoreCase(str)) {
            this.f9334a.a(xMPushService, fyVar, a2);
        } else {
            String str2 = a2.f947a;
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.new_msg");
            intent.setPackage(str2);
            intent.putExtra("ext_rcv_timestamp", SystemClock.elapsedRealtime());
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_raw_packet", fyVar.m296a(a2.h));
            intent.putExtra(bh.G, a2.i);
            intent.putExtra(bh.y, a2.h);
            if (a2.f941a != null) {
                try {
                    a2.f941a.send(Message.obtain(null, 17, intent));
                    b.m1a("message was sent by messenger for chid=" + str);
                    return;
                } catch (RemoteException unused) {
                    a2.f941a = null;
                    StringBuilder sb = new StringBuilder();
                    sb.append("peer may died: ");
                    String str3 = a2.f950b;
                    sb.append(str3.substring(str3.lastIndexOf(64)));
                    b.m1a(sb.toString());
                }
            }
            if (!"com.xiaomi.xmsf".equals(str2)) {
                b.m1a(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", a2.g, a2.f947a, fyVar.e()));
                a(xMPushService, intent, a2);
            }
        }
    }

    public void a(XMPushService xMPushService, String str, ha haVar) {
        String str2;
        String str3;
        bd.b a2 = a(haVar);
        if (a2 == null) {
            str3 = "error while notify channel closed! channel " + str + " not registered";
        } else if ("5".equalsIgnoreCase(str)) {
            this.f9334a.a(xMPushService, haVar, a2);
            return;
        } else {
            String str4 = a2.f947a;
            if (haVar instanceof gz) {
                str2 = "com.xiaomi.push.new_msg";
            } else if (haVar instanceof gy) {
                str2 = "com.xiaomi.push.new_iq";
            } else if (haVar instanceof hc) {
                str2 = "com.xiaomi.push.new_pres";
            } else {
                str3 = "unknown packet type, drop it";
            }
            Intent intent = new Intent();
            intent.setAction(str2);
            intent.setPackage(str4);
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_packet", haVar.mo337a());
            intent.putExtra(bh.G, a2.i);
            intent.putExtra(bh.y, a2.h);
            b.m1a(String.format("[Bcst] notify packet arrival. %s,%s,%s", a2.g, a2.f947a, haVar.j()));
            a(xMPushService, intent, a2);
            return;
        }
        b.d(str3);
    }
}
