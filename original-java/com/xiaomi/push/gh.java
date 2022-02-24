package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.dw;
import com.xiaomi.push.gj;
import com.xiaomi.push.service.bd;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/* loaded from: classes2.dex */
public class gh implements gv {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f8985a = false;

    /* renamed from: a  reason: collision with other field name */
    private gj f418a;

    /* renamed from: a  reason: collision with other field name */
    private SimpleDateFormat f421a = new SimpleDateFormat("hh:mm:ss aaa");

    /* renamed from: a  reason: collision with other field name */
    private a f417a = null;

    /* renamed from: b  reason: collision with root package name */
    private a f8986b = null;

    /* renamed from: a  reason: collision with other field name */
    private gm f419a = null;

    /* renamed from: a  reason: collision with other field name */
    private final String f420a = "[Slim] ";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements go, gw {

        /* renamed from: a  reason: collision with other field name */
        String f422a;

        /* renamed from: a  reason: collision with other field name */
        private boolean f423a;

        a(boolean z) {
            this.f423a = true;
            this.f423a = z;
            this.f422a = z ? " RCV " : " Sent ";
        }

        @Override // com.xiaomi.push.go
        public void a(fy fyVar) {
            String str;
            StringBuilder sb;
            if (gh.f8985a) {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(gh.this.f421a.format(new Date()));
                sb.append(this.f422a);
                str = fyVar.toString();
            } else {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(gh.this.f421a.format(new Date()));
                sb.append(this.f422a);
                sb.append(" Blob [");
                sb.append(fyVar.m291a());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(fyVar.a());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(fyVar.e());
                str = "]";
            }
            sb.append(str);
            b.c(sb.toString());
            if (fyVar != null && fyVar.a() == 99999) {
                String a2 = fyVar.m291a();
                fy fyVar2 = null;
                if (!this.f423a) {
                    if ("BIND".equals(a2)) {
                        b.m1a("build binded result for loopback.");
                        dw.d dVar = new dw.d();
                        dVar.a(true);
                        dVar.c("login success.");
                        dVar.b("success");
                        dVar.a("success");
                        fy fyVar3 = new fy();
                        fyVar3.a(dVar.a(), (String) null);
                        fyVar3.a((short) 2);
                        fyVar3.a(99999);
                        fyVar3.a("BIND", (String) null);
                        fyVar3.a(fyVar.e());
                        fyVar3.b(null);
                        fyVar3.c(fyVar.g());
                        fyVar2 = fyVar3;
                    } else if (!"UBND".equals(a2) && "SECMSG".equals(a2)) {
                        fy fyVar4 = new fy();
                        fyVar4.a(99999);
                        fyVar4.a("SECMSG", (String) null);
                        fyVar4.c(fyVar.g());
                        fyVar4.a(fyVar.e());
                        fyVar4.a(fyVar.m293a());
                        fyVar4.b(fyVar.f());
                        fyVar4.a(fyVar.m296a(bd.a().a(String.valueOf(99999), fyVar.g()).h), (String) null);
                        fyVar2 = fyVar4;
                    }
                }
                if (fyVar2 != null) {
                    for (Map.Entry<go, gj.a> entry : gh.this.f418a.m316a().entrySet()) {
                        if (gh.this.f417a != entry.getKey()) {
                            entry.getValue().a(fyVar2);
                        }
                    }
                }
            }
        }

        @Override // com.xiaomi.push.go, com.xiaomi.push.gw
        /* renamed from: a */
        public void mo312a(ha haVar) {
            String str;
            StringBuilder sb;
            if (gh.f8985a) {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(gh.this.f421a.format(new Date()));
                sb.append(this.f422a);
                sb.append(" PKT ");
                str = haVar.m335a();
            } else {
                sb = new StringBuilder();
                sb.append("[Slim] ");
                sb.append(gh.this.f421a.format(new Date()));
                sb.append(this.f422a);
                sb.append(" PKT [");
                sb.append(haVar.k());
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                sb.append(haVar.j());
                str = "]";
            }
            sb.append(str);
            b.c(sb.toString());
        }

        @Override // com.xiaomi.push.go, com.xiaomi.push.gw
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo312a(ha haVar) {
            return true;
        }
    }

    public gh(gj gjVar) {
        this.f418a = null;
        this.f418a = gjVar;
        a();
    }

    private void a() {
        this.f417a = new a(true);
        this.f8986b = new a(false);
        gj gjVar = this.f418a;
        a aVar = this.f417a;
        gjVar.a(aVar, aVar);
        gj gjVar2 = this.f418a;
        a aVar2 = this.f8986b;
        gjVar2.b(aVar2, aVar2);
        this.f419a = new gi(this);
    }
}
