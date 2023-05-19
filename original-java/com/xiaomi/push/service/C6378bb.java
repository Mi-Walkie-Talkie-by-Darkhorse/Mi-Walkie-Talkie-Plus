package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C6058cq;
import com.xiaomi.push.C6062cu;
import com.xiaomi.push.C6076de;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.C6170fw;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6193gk;
import com.xiaomi.push.C6206gx;
import com.xiaomi.push.C6207gy;
import com.xiaomi.push.C6209gz;
import com.xiaomi.push.C6228ho;
import com.xiaomi.push.EnumC6158fm;
import com.xiaomi.push.service.C6381bd;
import java.util.Date;

/* renamed from: com.xiaomi.push.service.bb */
/* loaded from: classes2.dex */
public class C6378bb {

    /* renamed from: a */
    private XMPushService f23018a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6378bb(XMPushService xMPushService) {
        this.f23018a = xMPushService;
    }

    /* renamed from: a */
    private void m1516a(C6206gx c6206gx) {
        String m2692c = c6206gx.m2692c();
        if (TextUtils.isEmpty(m2692c)) {
            return;
        }
        String[] split = m2692c.split(";");
        C6058cq m3447a = C6062cu.m3459a().m3447a(C6193gk.m2737a(), false);
        if (m3447a == null || split.length <= 0) {
            return;
        }
        m3447a.m3476a(split);
        this.f23018a.m1793a(20, (Exception) null);
        this.f23018a.m1761a(true);
    }

    /* renamed from: b */
    private void m1513b(AbstractC6211ha abstractC6211ha) {
        C6381bd.C6383b m1498a;
        String m2652l = abstractC6211ha.m2652l();
        String m2654k = abstractC6211ha.m2654k();
        if (TextUtils.isEmpty(m2652l) || TextUtils.isEmpty(m2654k) || (m1498a = C6381bd.m1509a().m1498a(m2654k, m2652l)) == null) {
            return;
        }
        C6228ho.m2596a(this.f23018a, m1498a.f23032a, C6228ho.m2593a(abstractC6211ha.mo2640a()), true, true, System.currentTimeMillis());
    }

    /* renamed from: c */
    private void m1512c(C6173fy c6173fy) {
        C6381bd.C6383b m1498a;
        String m2821g = c6173fy.m2821g();
        String num = Integer.toString(c6173fy.m2843a());
        if (TextUtils.isEmpty(m2821g) || TextUtils.isEmpty(num) || (m1498a = C6381bd.m1509a().m1498a(num, m2821g)) == null) {
            return;
        }
        C6228ho.m2596a(this.f23018a, m1498a.f23032a, c6173fy.mo2777c(), true, true, System.currentTimeMillis());
    }

    /* renamed from: a */
    public void m1517a(C6173fy c6173fy) {
        if (5 != c6173fy.m2843a()) {
            m1512c(c6173fy);
        }
        try {
            m1514b(c6173fy);
        } catch (Exception e) {
            AbstractC5876b.m4144a("handle Blob chid = " + c6173fy.m2843a() + " cmd = " + c6173fy.m2842a() + " packetid = " + c6173fy.m2823e() + " failure ", e);
        }
    }

    /* renamed from: a */
    public void m1515a(AbstractC6211ha abstractC6211ha) {
        if (!"5".equals(abstractC6211ha.m2654k())) {
            m1513b(abstractC6211ha);
        }
        String m2654k = abstractC6211ha.m2654k();
        if (TextUtils.isEmpty(m2654k)) {
            m2654k = "1";
            abstractC6211ha.m2651l("1");
        }
        if (m2654k.equals("0")) {
            AbstractC5876b.m4147a("Received wrong packet with chid = 0 : " + abstractC6211ha.mo2640a());
        }
        if (abstractC6211ha instanceof C6207gy) {
            C6206gx m2660a = abstractC6211ha.m2660a("kick");
            if (m2660a != null) {
                String m2652l = abstractC6211ha.m2652l();
                String m2697a = m2660a.m2697a("type");
                String m2697a2 = m2660a.m2697a("reason");
                AbstractC5876b.m4147a("kicked by server, chid=" + m2654k + " res=" + C6381bd.C6383b.m1483a(m2652l) + " type=" + m2697a + " reason=" + m2697a2);
                if (!"wait".equals(m2697a)) {
                    this.f23018a.m1763a(m2654k, m2652l, 3, m2697a2, m2697a);
                    C6381bd.m1509a().m1497a(m2654k, m2652l);
                    return;
                }
                C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(m2654k, m2652l);
                if (m1498a != null) {
                    this.f23018a.m1768a(m1498a);
                    m1498a.m1484a(C6381bd.EnumC6387c.unbind, 3, 0, m2697a2, m2697a);
                    return;
                }
                return;
            }
        } else if (abstractC6211ha instanceof C6209gz) {
            C6209gz c6209gz = (C6209gz) abstractC6211ha;
            if ("redir".equals(c6209gz.m2684b())) {
                C6206gx m2660a2 = c6209gz.m2660a("hosts");
                if (m2660a2 != null) {
                    m1516a(m2660a2);
                    return;
                }
                return;
            }
        }
        this.f23018a.m1758b().m1358a(this.f23018a, m2654k, abstractC6211ha);
    }

    /* renamed from: b */
    public void m1514b(C6173fy c6173fy) {
        StringBuilder sb;
        String m3193a;
        String str;
        C6381bd.EnumC6387c enumC6387c;
        int i;
        int i2;
        String m2842a = c6173fy.m2842a();
        if (c6173fy.m2843a() != 0) {
            String num = Integer.toString(c6173fy.m2843a());
            if (!"SECMSG".equals(c6173fy.m2842a())) {
                if (!"BIND".equals(m2842a)) {
                    if ("KICK".equals(m2842a)) {
                        C6099dw.C6106g m3200a = C6099dw.C6106g.m3200a(c6173fy.m2839a());
                        String m2821g = c6173fy.m2821g();
                        String m3203a = m3200a.m3203a();
                        String m3199b = m3200a.m3199b();
                        AbstractC5876b.m4147a("kicked by server, chid=" + num + " res= " + C6381bd.C6383b.m1483a(m2821g) + " type=" + m3203a + " reason=" + m3199b);
                        if (!"wait".equals(m3203a)) {
                            this.f23018a.m1763a(num, m2821g, 3, m3199b, m3203a);
                            C6381bd.m1509a().m1497a(num, m2821g);
                            return;
                        }
                        C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(num, m2821g);
                        if (m1498a != null) {
                            this.f23018a.m1768a(m1498a);
                            m1498a.m1484a(C6381bd.EnumC6387c.unbind, 3, 0, m3199b, m3203a);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C6099dw.C6103d m3252a = C6099dw.C6103d.m3252a(c6173fy.m2839a());
                String m2821g2 = c6173fy.m2821g();
                C6381bd.C6383b m1498a2 = C6381bd.m1509a().m1498a(num, m2821g2);
                if (m1498a2 == null) {
                    return;
                }
                if (m3252a.m3255a()) {
                    AbstractC5876b.m4147a("SMACK: channel bind succeeded, chid=" + c6173fy.m2843a());
                    m1498a2.m1484a(C6381bd.EnumC6387c.binded, 1, 0, (String) null, (String) null);
                    return;
                }
                String m3256a = m3252a.m3256a();
                if ("auth".equals(m3256a)) {
                    if ("invalid-sig".equals(m3252a.m3251b())) {
                        AbstractC5876b.m4147a("SMACK: bind error invalid-sig token = " + m1498a2.f23038c + " sec = " + m1498a2.f23043h);
                        C6170fw.m2852a(0, EnumC6158fm.BIND_INVALID_SIG.m2919a(), 1, null, 0);
                    }
                    enumC6387c = C6381bd.EnumC6387c.unbind;
                    i = 1;
                    i2 = 5;
                } else if (!"cancel".equals(m3256a)) {
                    if ("wait".equals(m3256a)) {
                        this.f23018a.m1768a(m1498a2);
                        m1498a2.m1484a(C6381bd.EnumC6387c.unbind, 1, 7, m3252a.m3251b(), m3256a);
                    }
                    str = "SMACK: channel bind failed, chid=" + num + " reason=" + m3252a.m3251b();
                    AbstractC5876b.m4147a(str);
                } else {
                    enumC6387c = C6381bd.EnumC6387c.unbind;
                    i = 1;
                    i2 = 7;
                }
                m1498a2.m1484a(enumC6387c, i, i2, m3252a.m3251b(), m3256a);
                C6381bd.m1509a().m1497a(num, m2821g2);
                str = "SMACK: channel bind failed, chid=" + num + " reason=" + m3252a.m3251b();
                AbstractC5876b.m4147a(str);
            } else if (!c6173fy.m2840a()) {
                this.f23018a.m1758b().m1359a(this.f23018a, num, c6173fy);
                return;
            } else {
                sb = new StringBuilder();
                sb.append("Recv SECMSG errCode = ");
                sb.append(c6173fy.m2829b());
                sb.append(" errStr = ");
                m3193a = c6173fy.m2826c();
            }
        } else if ("PING".equals(m2842a)) {
            byte[] m2839a = c6173fy.m2839a();
            if (m2839a != null && m2839a.length > 0) {
                C6099dw.C6109j m3177a = C6099dw.C6109j.m3177a(m2839a);
                if (m3177a.m3176b()) {
                    C6404bs.m1447a().m1444a(m3177a.m3181a());
                }
            }
            if (!"com.xiaomi.xmsf".equals(this.f23018a.getPackageName())) {
                this.f23018a.m1798a();
            }
            if ("1".equals(c6173fy.m2823e())) {
                AbstractC5876b.m4147a("received a server ping");
            } else {
                C6170fw.m2847b();
            }
            this.f23018a.m1756b();
            return;
        } else if ("SYNC".equals(m2842a)) {
            if ("CONF".equals(c6173fy.m2828b())) {
                C6404bs.m1447a().m1444a(C6099dw.C6101b.m3284a(c6173fy.m2839a()));
                return;
            } else if (TextUtils.equals("U", c6173fy.m2828b())) {
                C6099dw.C6110k m3168a = C6099dw.C6110k.m3168a(c6173fy.m2839a());
                C6076de.m3390a(this.f23018a).m3385a(m3168a.m3174a(), m3168a.m3166b(), new Date(m3168a.m3175a()), new Date(m3168a.m3167b()), m3168a.m3162c() * 1024, m3168a.m3159e());
                C6173fy c6173fy2 = new C6173fy();
                c6173fy2.m2838a(0);
                c6173fy2.m2833a(c6173fy.m2842a(), "UCA");
                c6173fy2.m2835a(c6173fy.m2823e());
                XMPushService xMPushService = this.f23018a;
                xMPushService.m1783a(new C6402bq(xMPushService, c6173fy2));
                return;
            } else if (!TextUtils.equals("P", c6173fy.m2828b())) {
                return;
            } else {
                C6099dw.C6108i m3183a = C6099dw.C6108i.m3183a(c6173fy.m2839a());
                C6173fy c6173fy3 = new C6173fy();
                c6173fy3.m2838a(0);
                c6173fy3.m2833a(c6173fy.m2842a(), "PCA");
                c6173fy3.m2835a(c6173fy.m2823e());
                C6099dw.C6108i c6108i = new C6099dw.C6108i();
                if (m3183a.m3185a()) {
                    c6108i.m3184a(m3183a.m3186a());
                }
                c6173fy3.m2830a(c6108i.m3144a(), (String) null);
                XMPushService xMPushService2 = this.f23018a;
                xMPushService2.m1783a(new C6402bq(xMPushService2, c6173fy3));
                sb = new StringBuilder();
                sb.append("ACK msgP: id = ");
                m3193a = c6173fy.m2823e();
            }
        } else if (!"NOTIFY".equals(c6173fy.m2842a())) {
            return;
        } else {
            C6099dw.C6107h m3189a = C6099dw.C6107h.m3189a(c6173fy.m2839a());
            sb = new StringBuilder();
            sb.append("notify by server err = ");
            sb.append(m3189a.m3187c());
            sb.append(" desc = ");
            m3193a = m3189a.m3193a();
        }
        sb.append(m3193a);
        str = sb.toString();
        AbstractC5876b.m4147a(str);
    }
}
