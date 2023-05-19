package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.AbstractC6191gj;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6381bd;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/* renamed from: com.xiaomi.push.gh */
/* loaded from: classes2.dex */
public class C6188gh implements InterfaceC6204gv {

    /* renamed from: a */
    public static boolean f21717a = false;

    /* renamed from: a */
    private AbstractC6191gj f21719a;

    /* renamed from: a */
    private SimpleDateFormat f21722a = new SimpleDateFormat("hh:mm:ss aaa");

    /* renamed from: a */
    private C6189a f21718a = null;

    /* renamed from: b */
    private C6189a f21723b = null;

    /* renamed from: a */
    private InterfaceC6195gm f21720a = null;

    /* renamed from: a */
    private final String f21721a = "[Slim] ";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.gh$a */
    /* loaded from: classes2.dex */
    public class C6189a implements InterfaceC6197go, InterfaceC6205gw {

        /* renamed from: a */
        String f21725a;

        /* renamed from: a */
        private boolean f21726a;

        C6189a(boolean z) {
            this.f21726a = true;
            this.f21726a = z;
            this.f21725a = z ? " RCV " : " Sent ";
        }

        @Override // com.xiaomi.push.InterfaceC6197go
        /* renamed from: a */
        public void mo1389a(C6173fy c6173fy) {
            StringBuilder sb;
            String str;
            if (C6188gh.f21717a) {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(C6188gh.this.f21722a.format(new Date()));
                sb.append(this.f21725a);
                str = c6173fy.toString();
            } else {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(C6188gh.this.f21722a.format(new Date()));
                sb.append(this.f21725a);
                sb.append(" Blob [");
                sb.append(c6173fy.m2842a());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(c6173fy.m2843a());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(c6173fy.m2823e());
                str = "]";
            }
            sb.append(str);
            AbstractC5876b.m4139c(sb.toString());
            if (c6173fy == null || c6173fy.m2843a() != 99999) {
                return;
            }
            String m2842a = c6173fy.m2842a();
            C6173fy c6173fy2 = null;
            if (!this.f21726a) {
                if ("BIND".equals(m2842a)) {
                    AbstractC5876b.m4147a("build binded result for loopback.");
                    C6099dw.C6103d c6103d = new C6099dw.C6103d();
                    c6103d.m3253a(true);
                    c6103d.m3246c("login success.");
                    c6103d.m3249b("success");
                    c6103d.m3254a("success");
                    C6173fy c6173fy3 = new C6173fy();
                    c6173fy3.m2830a(c6103d.m3144a(), (String) null);
                    c6173fy3.m2831a((short) 2);
                    c6173fy3.m2838a(99999);
                    c6173fy3.m2833a("BIND", (String) null);
                    c6173fy3.m2835a(c6173fy.m2823e());
                    c6173fy3.m2827b(null);
                    c6173fy3.m2825c(c6173fy.m2821g());
                    c6173fy2 = c6173fy3;
                } else if (!"UBND".equals(m2842a) && "SECMSG".equals(m2842a)) {
                    C6173fy c6173fy4 = new C6173fy();
                    c6173fy4.m2838a(99999);
                    c6173fy4.m2833a("SECMSG", (String) null);
                    c6173fy4.m2825c(c6173fy.m2821g());
                    c6173fy4.m2835a(c6173fy.m2823e());
                    c6173fy4.m2831a(c6173fy.m2841a());
                    c6173fy4.m2827b(c6173fy.m2822f());
                    c6173fy4.m2830a(c6173fy.m2834a(C6381bd.m1509a().m1498a(String.valueOf(99999), c6173fy.m2821g()).f23043h), (String) null);
                    c6173fy2 = c6173fy4;
                }
            }
            if (c6173fy2 != null) {
                for (Map.Entry<InterfaceC6197go, AbstractC6191gj.C6192a> entry : C6188gh.this.f21719a.m2762a().entrySet()) {
                    if (C6188gh.this.f21718a != entry.getKey()) {
                        entry.getValue().m2740a(c6173fy2);
                    }
                }
            }
        }

        @Override // com.xiaomi.push.InterfaceC6197go
        /* renamed from: a */
        public void mo1388a(AbstractC6211ha abstractC6211ha) {
            StringBuilder sb;
            String str;
            if (C6188gh.f21717a) {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(C6188gh.this.f21722a.format(new Date()));
                sb.append(this.f21725a);
                sb.append(" PKT ");
                str = abstractC6211ha.mo2640a();
            } else {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(C6188gh.this.f21722a.format(new Date()));
                sb.append(this.f21725a);
                sb.append(" PKT [");
                sb.append(abstractC6211ha.m2654k());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(abstractC6211ha.m2655j());
                str = "]";
            }
            sb.append(str);
            AbstractC5876b.m4139c(sb.toString());
        }

        @Override // com.xiaomi.push.InterfaceC6205gw
        /* renamed from: a */
        public boolean mo1387a(AbstractC6211ha abstractC6211ha) {
            return true;
        }
    }

    public C6188gh(AbstractC6191gj abstractC6191gj) {
        this.f21719a = null;
        this.f21719a = abstractC6191gj;
        m2769a();
    }

    /* renamed from: a */
    private void m2769a() {
        this.f21718a = new C6189a(true);
        this.f21723b = new C6189a(false);
        AbstractC6191gj abstractC6191gj = this.f21719a;
        C6189a c6189a = this.f21718a;
        abstractC6191gj.m2755a(c6189a, c6189a);
        AbstractC6191gj abstractC6191gj2 = this.f21719a;
        C6189a c6189a2 = this.f21723b;
        abstractC6191gj2.m2745b(c6189a2, c6189a2);
        this.f21720a = new C6190gi(this);
    }
}
