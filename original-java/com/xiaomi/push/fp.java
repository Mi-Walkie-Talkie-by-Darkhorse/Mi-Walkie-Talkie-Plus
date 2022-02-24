package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class fp implements bd.b.a {

    /* renamed from: a  reason: collision with root package name */
    private int f8957a;

    /* renamed from: a  reason: collision with other field name */
    private gj f373a;

    /* renamed from: a  reason: collision with other field name */
    private XMPushService f374a;

    /* renamed from: a  reason: collision with other field name */
    private bd.b f375a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f377a = false;

    /* renamed from: a  reason: collision with other field name */
    private bd.c f376a = bd.c.binding;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fp(XMPushService xMPushService, bd.b bVar) {
        this.f374a = xMPushService;
        this.f375a = bVar;
    }

    private void b() {
        this.f375a.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c() {
        /*
            r4 = this;
            r4.b()
            boolean r0 = r4.f377a
            if (r0 != 0) goto L_0x0008
            return
        L_0x0008:
            int r0 = r4.f8957a
            r1 = 11
            if (r0 != r1) goto L_0x000f
            return
        L_0x000f:
            com.xiaomi.push.fu r0 = com.xiaomi.push.fu.m284a()
            com.xiaomi.push.fn r0 = r0.m286a()
            int[] r1 = com.xiaomi.push.fr.f8959a
            com.xiaomi.push.service.bd$c r2 = r4.f376a
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L_0x0031
            r3 = 3
            if (r1 == r3) goto L_0x0028
            goto L_0x005c
        L_0x0028:
            com.xiaomi.push.fm r1 = com.xiaomi.push.fm.BIND_SUCCESS
        L_0x002a:
            int r1 = r1.a()
            r0.f359a = r1
            goto L_0x005c
        L_0x0031:
            int r1 = r4.f8957a
            r3 = 17
            if (r1 != r3) goto L_0x003a
            com.xiaomi.push.fm r1 = com.xiaomi.push.fm.BIND_TCP_READ_TIMEOUT
            goto L_0x002a
        L_0x003a:
            r3 = 21
            if (r1 != r3) goto L_0x0041
            com.xiaomi.push.fm r1 = com.xiaomi.push.fm.BIND_TIMEOUT
            goto L_0x002a
        L_0x0041:
            com.xiaomi.push.ft r1 = com.xiaomi.push.fu.a()     // Catch: NullPointerException -> 0x005b
            java.lang.Exception r1 = r1.a()     // Catch: NullPointerException -> 0x005b
            com.xiaomi.push.fs$a r1 = com.xiaomi.push.fs.c(r1)     // Catch: NullPointerException -> 0x005b
            com.xiaomi.push.fm r3 = r1.f8960a     // Catch: NullPointerException -> 0x005b
            int r3 = r3.a()     // Catch: NullPointerException -> 0x005b
            r0.f359a = r3     // Catch: NullPointerException -> 0x005b
            java.lang.String r1 = r1.f378a     // Catch: NullPointerException -> 0x005b
            r0.c(r1)     // Catch: NullPointerException -> 0x005b
            goto L_0x005c
        L_0x005b:
            r0 = 0
        L_0x005c:
            if (r0 == 0) goto L_0x0083
            com.xiaomi.push.gj r1 = r4.f373a
            java.lang.String r1 = r1.m315a()
            r0.b(r1)
            com.xiaomi.push.service.bd$b r1 = r4.f375a
            java.lang.String r1 = r1.f950b
            r0.d(r1)
            r0.f362b = r2
            com.xiaomi.push.service.bd$b r1 = r4.f375a     // Catch: NumberFormatException -> 0x007c
            java.lang.String r1 = r1.g     // Catch: NumberFormatException -> 0x007c
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: NumberFormatException -> 0x007c
            byte r1 = (byte) r1     // Catch: NumberFormatException -> 0x007c
            r0.a(r1)     // Catch: NumberFormatException -> 0x007c
        L_0x007c:
            com.xiaomi.push.fu r1 = com.xiaomi.push.fu.m284a()
            r1.a(r0)
        L_0x0083:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.fp.c():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f375a.a(this);
        this.f373a = this.f374a.m549a();
    }

    @Override // com.xiaomi.push.service.bd.b.a
    public void a(bd.c cVar, bd.c cVar2, int i) {
        if (!this.f377a && cVar == bd.c.binding) {
            this.f376a = cVar2;
            this.f8957a = i;
            this.f377a = true;
        }
        this.f374a.a(new fq(this, 4));
    }
}
