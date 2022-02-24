package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.cq;
import com.xiaomi.push.cu;
import com.xiaomi.push.de;
import com.xiaomi.push.dw;
import com.xiaomi.push.fm;
import com.xiaomi.push.fw;
import com.xiaomi.push.fy;
import com.xiaomi.push.gk;
import com.xiaomi.push.gx;
import com.xiaomi.push.gy;
import com.xiaomi.push.gz;
import com.xiaomi.push.ha;
import com.xiaomi.push.ho;
import com.xiaomi.push.service.bd;
import java.util.Date;

/* loaded from: classes2.dex */
public class bb {

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f9265a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(XMPushService xMPushService) {
        this.f9265a = xMPushService;
    }

    private void a(gx gxVar) {
        String c2 = gxVar.c();
        if (!TextUtils.isEmpty(c2)) {
            String[] split = c2.split(";");
            cq a2 = cu.a().a(gk.a(), false);
            if (a2 != null && split.length > 0) {
                a2.a(split);
                this.f9265a.a(20, (Exception) null);
                this.f9265a.a(true);
            }
        }
    }

    private void b(ha haVar) {
        bd.b a2;
        String l = haVar.l();
        String k = haVar.k();
        if (!TextUtils.isEmpty(l) && !TextUtils.isEmpty(k) && (a2 = bd.a().a(k, l)) != null) {
            ho.a(this.f9265a, a2.f947a, ho.a(haVar.m335a()), true, true, System.currentTimeMillis());
        }
    }

    private void c(fy fyVar) {
        bd.b a2;
        String g = fyVar.g();
        String num = Integer.toString(fyVar.a());
        if (!TextUtils.isEmpty(g) && !TextUtils.isEmpty(num) && (a2 = bd.a().a(num, g)) != null) {
            ho.a(this.f9265a, a2.f947a, fyVar.c(), true, true, System.currentTimeMillis());
        }
    }

    public void a(fy fyVar) {
        if (5 != fyVar.a()) {
            c(fyVar);
        }
        try {
            b(fyVar);
        } catch (Exception e) {
            b.a("handle Blob chid = " + fyVar.a() + " cmd = " + fyVar.m291a() + " packetid = " + fyVar.e() + " failure ", e);
        }
    }

    public void a(ha haVar) {
        if (!"5".equals(haVar.k())) {
            b(haVar);
        }
        String k = haVar.k();
        if (TextUtils.isEmpty(k)) {
            k = "1";
            haVar.l(k);
        }
        if (k.equals("0")) {
            b.m1a("Received wrong packet with chid = 0 : " + haVar.m335a());
        }
        if (haVar instanceof gy) {
            gx a2 = haVar.a("kick");
            if (a2 != null) {
                String l = haVar.l();
                String a3 = a2.a("type");
                String a4 = a2.a("reason");
                b.m1a("kicked by server, chid=" + k + " res=" + bd.b.a(l) + " type=" + a3 + " reason=" + a4);
                if ("wait".equals(a3)) {
                    bd.b a5 = bd.a().a(k, l);
                    if (a5 != null) {
                        this.f9265a.a(a5);
                        a5.a(bd.c.unbind, 3, 0, a4, a3);
                        return;
                    }
                    return;
                }
                this.f9265a.a(k, l, 3, a4, a3);
                bd.a().m615a(k, l);
                return;
            }
        } else if (haVar instanceof gz) {
            gz gzVar = (gz) haVar;
            if ("redir".equals(gzVar.b())) {
                gx a6 = gzVar.a("hosts");
                if (a6 != null) {
                    a(a6);
                    return;
                }
                return;
            }
        }
        this.f9265a.m554b().a(this.f9265a, k, haVar);
    }

    public void b(fy fyVar) {
        StringBuilder sb;
        String a2;
        String str;
        int i;
        int i2;
        bd.c cVar;
        String a3 = fyVar.m291a();
        if (fyVar.a() != 0) {
            String num = Integer.toString(fyVar.a());
            if ("SECMSG".equals(fyVar.m291a())) {
                if (!fyVar.m294a()) {
                    this.f9265a.m554b().a(this.f9265a, num, fyVar);
                    return;
                }
                sb = new StringBuilder();
                sb.append("Recv SECMSG errCode = ");
                sb.append(fyVar.b());
                sb.append(" errStr = ");
                a2 = fyVar.m298c();
            } else if ("BIND".equals(a3)) {
                dw.d a4 = dw.d.a(fyVar.m295a());
                String g = fyVar.g();
                bd.b a5 = bd.a().a(num, g);
                if (a5 != null) {
                    if (a4.mo223a()) {
                        b.m1a("SMACK: channel bind succeeded, chid=" + fyVar.a());
                        a5.a(bd.c.binded, 1, 0, (String) null, (String) null);
                        return;
                    }
                    String a6 = a4.mo223a();
                    if ("auth".equals(a6)) {
                        if ("invalid-sig".equals(a4.mo225b())) {
                            b.m1a("SMACK: bind error invalid-sig token = " + a5.f9270c + " sec = " + a5.h);
                            fw.a(0, fm.BIND_INVALID_SIG.a(), 1, null, 0);
                        }
                        cVar = bd.c.unbind;
                        i2 = 1;
                        i = 5;
                    } else if ("cancel".equals(a6)) {
                        cVar = bd.c.unbind;
                        i2 = 1;
                        i = 7;
                    } else {
                        if ("wait".equals(a6)) {
                            this.f9265a.a(a5);
                            a5.a(bd.c.unbind, 1, 7, a4.mo225b(), a6);
                        }
                        str = "SMACK: channel bind failed, chid=" + num + " reason=" + a4.mo225b();
                        b.m1a(str);
                    }
                    a5.a(cVar, i2, i, a4.mo225b(), a6);
                    bd.a().m615a(num, g);
                    str = "SMACK: channel bind failed, chid=" + num + " reason=" + a4.mo225b();
                    b.m1a(str);
                }
                return;
            } else if ("KICK".equals(a3)) {
                dw.g a7 = dw.g.a(fyVar.m295a());
                String g2 = fyVar.g();
                String a8 = a7.mo223a();
                String b2 = a7.mo225b();
                b.m1a("kicked by server, chid=" + num + " res= " + bd.b.a(g2) + " type=" + a8 + " reason=" + b2);
                if ("wait".equals(a8)) {
                    bd.b a9 = bd.a().a(num, g2);
                    if (a9 != null) {
                        this.f9265a.a(a9);
                        a9.a(bd.c.unbind, 3, 0, b2, a8);
                        return;
                    }
                    return;
                }
                this.f9265a.a(num, g2, 3, b2, a8);
                bd.a().m615a(num, g2);
                return;
            } else {
                return;
            }
        } else if ("PING".equals(a3)) {
            byte[] a10 = fyVar.m295a();
            if (a10 != null && a10.length > 0) {
                dw.j a11 = dw.j.a(a10);
                if (a11.mo225b()) {
                    bs.a().a(a11.mo223a());
                }
            }
            if (!"com.xiaomi.xmsf".equals(this.f9265a.getPackageName())) {
                this.f9265a.m551a();
            }
            if ("1".equals(fyVar.e())) {
                b.m1a("received a server ping");
            } else {
                fw.b();
            }
            this.f9265a.m555b();
            return;
        } else if ("SYNC".equals(a3)) {
            if ("CONF".equals(fyVar.m297b())) {
                bs.a().a(dw.b.a(fyVar.m295a()));
                return;
            } else if (TextUtils.equals("U", fyVar.m297b())) {
                dw.k a12 = dw.k.a(fyVar.m295a());
                de.a(this.f9265a).a(a12.mo223a(), a12.mo225b(), new Date(a12.mo223a()), new Date(a12.mo225b()), a12.c() * 1024, a12.e());
                fy fyVar2 = new fy();
                fyVar2.a(0);
                fyVar2.a(fyVar.m291a(), "UCA");
                fyVar2.a(fyVar.e());
                XMPushService xMPushService = this.f9265a;
                xMPushService.a(new bq(xMPushService, fyVar2));
                return;
            } else if (TextUtils.equals("P", fyVar.m297b())) {
                dw.i a13 = dw.i.a(fyVar.m295a());
                fy fyVar3 = new fy();
                fyVar3.a(0);
                fyVar3.a(fyVar.m291a(), "PCA");
                fyVar3.a(fyVar.e());
                dw.i iVar = new dw.i();
                if (a13.mo223a()) {
                    iVar.a(a13.mo223a());
                }
                fyVar3.a(iVar.a(), (String) null);
                XMPushService xMPushService2 = this.f9265a;
                xMPushService2.a(new bq(xMPushService2, fyVar3));
                sb = new StringBuilder();
                sb.append("ACK msgP: id = ");
                a2 = fyVar.e();
            } else {
                return;
            }
        } else if ("NOTIFY".equals(fyVar.m291a())) {
            dw.h a14 = dw.h.a(fyVar.m295a());
            sb = new StringBuilder();
            sb.append("notify by server err = ");
            sb.append(a14.c());
            sb.append(" desc = ");
            a2 = a14.mo223a();
        } else {
            return;
        }
        sb.append(a2);
        str = sb.toString();
        b.m1a(str);
    }
}
