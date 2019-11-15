package com.xiaomi.measite.smack;

import com.xiaomi.channel.commonutils.android.j;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.slim.b;
import com.xiaomi.smack.d;
import com.xiaomi.smack.f;
import java.text.SimpleDateFormat;
import java.util.Date;

public class a implements com.xiaomi.smack.debugger.a {
    public static boolean a;
    /* access modifiers changed from: private */
    public SimpleDateFormat b = new SimpleDateFormat("hh:mm:ss aaa");
    /* access modifiers changed from: private */
    public com.xiaomi.smack.a c = null;
    private C0061a d = null;
    private C0061a e = null;
    private d f = null;
    private final String g = "[Slim] ";

    /* renamed from: com.xiaomi.measite.smack.a$a reason: collision with other inner class name */
    class C0061a implements f, com.xiaomi.smack.filter.a {
        String a;

        C0061a(boolean z) {
            this.a = z ? " RCV " : " Sent ";
        }

        public void a(b bVar) {
            if (a.a) {
                com.xiaomi.channel.commonutils.logger.b.c("[Slim] " + a.this.b.format(new Date()) + this.a + bVar.toString());
            } else {
                com.xiaomi.channel.commonutils.logger.b.c("[Slim] " + a.this.b.format(new Date()) + this.a + " Blob [" + bVar.a() + Constants.ACCEPT_TIME_SEPARATOR_SP + bVar.c() + Constants.ACCEPT_TIME_SEPARATOR_SP + bVar.h() + "]");
            }
        }

        public boolean a(com.xiaomi.smack.packet.d dVar) {
            return true;
        }

        public void b(com.xiaomi.smack.packet.d dVar) {
            if (a.a) {
                com.xiaomi.channel.commonutils.logger.b.c("[Slim] " + a.this.b.format(new Date()) + this.a + " PKT " + dVar.c());
            } else {
                com.xiaomi.channel.commonutils.logger.b.c("[Slim] " + a.this.b.format(new Date()) + this.a + " PKT [" + dVar.l() + Constants.ACCEPT_TIME_SEPARATOR_SP + dVar.k() + "]");
            }
        }
    }

    static {
        boolean z = true;
        if (j.c() != 1) {
            z = false;
        }
        a = z;
    }

    public a(com.xiaomi.smack.a aVar) {
        this.c = aVar;
        a();
    }

    private void a() {
        this.d = new C0061a(true);
        this.e = new C0061a(false);
        this.c.a((f) this.d, (com.xiaomi.smack.filter.a) this.d);
        this.c.b((f) this.e, (com.xiaomi.smack.filter.a) this.e);
        this.f = new b(this);
    }
}
