package com.xiaomi.push.service;

import android.content.Context;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.protobuf.b.C0070b;
import com.xiaomi.push.protobuf.b.i;
import com.xiaomi.push.protobuf.b.j;
import com.xiaomi.push.protobuf.b.k;
import com.xiaomi.push.service.am.c;
import com.xiaomi.smack.b;
import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.packet.d;
import com.xiaomi.smack.util.g;
import com.xiaomi.stats.h;
import java.util.Date;

public class PacketSync {
    private XMPushService a;

    public interface PacketReceiveHandler extends Parcelable {
    }

    PacketSync(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    private void a(a aVar) {
        String c = aVar.c();
        if (!TextUtils.isEmpty(c)) {
            String[] split = c.split(";");
            Fallback fallbacksByHost = HostManager.getInstance().getFallbacksByHost(b.b(), false);
            if (fallbacksByHost != null && split.length > 0) {
                fallbacksByHost.a(split);
                this.a.a(20, (Exception) null);
                this.a.a(true);
            }
        }
    }

    private void b(d dVar) {
        String m = dVar.m();
        String l = dVar.l();
        if (!TextUtils.isEmpty(m) && !TextUtils.isEmpty(l)) {
            am.b b = am.a().b(l, m);
            if (b != null) {
                g.a(this.a, b.a, (long) g.a(dVar.c()), true, System.currentTimeMillis());
            }
        }
    }

    private void c(com.xiaomi.slim.b bVar) {
        String j = bVar.j();
        String num = Integer.toString(bVar.c());
        if (!TextUtils.isEmpty(j) && !TextUtils.isEmpty(num)) {
            am.b b = am.a().b(num, j);
            if (b != null) {
                g.a(this.a, b.a, (long) bVar.l(), true, System.currentTimeMillis());
            }
        }
    }

    public void a(com.xiaomi.slim.b bVar) {
        if (5 != bVar.c()) {
            c(bVar);
        }
        try {
            b(bVar);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a("handle Blob chid = " + bVar.c() + " cmd = " + bVar.a() + " packetid = " + bVar.h() + " failure ", (Throwable) e);
        }
    }

    public void a(d dVar) {
        if (!"5".equals(dVar.l())) {
            b(dVar);
        }
        String l = dVar.l();
        if (TextUtils.isEmpty(l)) {
            l = "1";
            dVar.l(l);
        }
        if (l.equals("0")) {
            com.xiaomi.channel.commonutils.logger.b.a("Received wrong packet with chid = 0 : " + dVar.c());
        }
        if (dVar instanceof com.xiaomi.smack.packet.b) {
            a p = dVar.p("kick");
            if (p != null) {
                String m = dVar.m();
                String a2 = p.a("type");
                String a3 = p.a("reason");
                com.xiaomi.channel.commonutils.logger.b.a("kicked by server, chid=" + l + " userid=" + m + " type=" + a2 + " reason=" + a3);
                if ("wait".equals(a2)) {
                    am.b b = am.a().b(l, m);
                    if (b != null) {
                        this.a.a(b);
                        b.a(c.unbind, 3, 0, a3, a2);
                        return;
                    }
                    return;
                }
                this.a.a(l, m, 3, a3, a2);
                am.a().a(l, m);
                return;
            }
        } else if (dVar instanceof com.xiaomi.smack.packet.c) {
            com.xiaomi.smack.packet.c cVar = (com.xiaomi.smack.packet.c) dVar;
            if ("redir".equals(cVar.a())) {
                a p2 = cVar.p("hosts");
                if (p2 != null) {
                    a(p2);
                    return;
                }
                return;
            }
        }
        this.a.e().a(this.a, l, dVar);
    }

    public void b(com.xiaomi.slim.b bVar) {
        String a2 = bVar.a();
        switch (bVar.c()) {
            case 0:
                if ("PING".equals(a2)) {
                    byte[] k = bVar.k();
                    if (k != null && k.length > 0) {
                        j b = j.b(k);
                        if (b.f()) {
                            av.a().a(b.g());
                        }
                    }
                    if ("1".equals(bVar.h())) {
                        this.a.a();
                        return;
                    } else {
                        h.b();
                        return;
                    }
                } else if ("SYNC".equals(a2)) {
                    if ("CONF".equals(bVar.b())) {
                        av.a().a(C0070b.b(bVar.k()));
                        return;
                    } else if (TextUtils.equals("U", bVar.b())) {
                        k b2 = k.b(bVar.k());
                        com.xiaomi.push.log.b.a((Context) this.a).a(b2.d(), b2.f(), new Date(b2.h()), new Date(b2.j()), b2.n() * 1024, b2.l());
                        com.xiaomi.slim.b bVar2 = new com.xiaomi.slim.b();
                        bVar2.a(0);
                        bVar2.a(bVar.a(), "UCA");
                        bVar2.a(bVar.h());
                        this.a.a((XMPushService.h) new au(this.a, bVar2));
                        return;
                    } else if (TextUtils.equals("P", bVar.b())) {
                        i b3 = i.b(bVar.k());
                        com.xiaomi.slim.b bVar3 = new com.xiaomi.slim.b();
                        bVar3.a(0);
                        bVar3.a(bVar.a(), "PCA");
                        bVar3.a(bVar.h());
                        i iVar = new i();
                        if (b3.e()) {
                            iVar.a(b3.d());
                        }
                        bVar3.a(iVar.c(), (String) null);
                        this.a.a((XMPushService.h) new au(this.a, bVar3));
                        com.xiaomi.channel.commonutils.logger.b.a("ACK msgP: id = " + bVar.h());
                        return;
                    } else {
                        return;
                    }
                } else if ("NOTIFY".equals(bVar.a())) {
                    com.xiaomi.push.protobuf.b.h b4 = com.xiaomi.push.protobuf.b.h.b(bVar.k());
                    com.xiaomi.channel.commonutils.logger.b.a("notify by server err = " + b4.d() + " desc = " + b4.f());
                    return;
                } else {
                    return;
                }
            default:
                String num = Integer.toString(bVar.c());
                if ("SECMSG".equals(bVar.a())) {
                    if (!bVar.d()) {
                        this.a.e().a(this.a, num, bVar);
                        return;
                    } else {
                        com.xiaomi.channel.commonutils.logger.b.a("Recv SECMSG errCode = " + bVar.e() + " errStr = " + bVar.f());
                        return;
                    }
                } else if ("BIND".equals(a2)) {
                    com.xiaomi.push.protobuf.b.d b5 = com.xiaomi.push.protobuf.b.d.b(bVar.k());
                    String j = bVar.j();
                    am.b b6 = am.a().b(num, j);
                    if (b6 == null) {
                        return;
                    }
                    if (b5.d()) {
                        com.xiaomi.channel.commonutils.logger.b.a("SMACK: channel bind succeeded, chid=" + bVar.c());
                        b6.a(c.binded, 1, 0, null, null);
                        return;
                    }
                    String f = b5.f();
                    if ("auth".equals(f)) {
                        if ("invalid-sig".equals(b5.h())) {
                            com.xiaomi.channel.commonutils.logger.b.a("SMACK: bind error invalid-sig token = " + b6.c + " sec = " + b6.i);
                            h.a(0, com.xiaomi.push.thrift.a.BIND_INVALID_SIG.a(), 1, null, 0);
                        }
                        b6.a(c.unbind, 1, 5, b5.h(), f);
                        am.a().a(num, j);
                    } else if ("cancel".equals(f)) {
                        b6.a(c.unbind, 1, 7, b5.h(), f);
                        am.a().a(num, j);
                    } else if ("wait".equals(f)) {
                        this.a.a(b6);
                        b6.a(c.unbind, 1, 7, b5.h(), f);
                    }
                    com.xiaomi.channel.commonutils.logger.b.a("SMACK: channel bind failed, chid=" + num + " reason=" + b5.h());
                    return;
                } else if ("KICK".equals(a2)) {
                    com.xiaomi.push.protobuf.b.g b7 = com.xiaomi.push.protobuf.b.g.b(bVar.k());
                    String j2 = bVar.j();
                    String d = b7.d();
                    String f2 = b7.f();
                    com.xiaomi.channel.commonutils.logger.b.a("kicked by server, chid=" + num + " userid=" + j2 + " type=" + d + " reason=" + f2);
                    if ("wait".equals(d)) {
                        am.b b8 = am.a().b(num, j2);
                        if (b8 != null) {
                            this.a.a(b8);
                            b8.a(c.unbind, 3, 0, f2, d);
                            return;
                        }
                        return;
                    }
                    this.a.a(num, j2, 3, f2, d);
                    am.a().a(num, j2);
                    return;
                } else {
                    return;
                }
        }
    }
}
