package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService.h;

public class s extends h {
    private XMPushService b;
    private byte[] c;
    private String d;
    private String e;
    private String f;

    public s(XMPushService xMPushService, String str, String str2, String str3, byte[] bArr) {
        super(9);
        this.b = xMPushService;
        this.d = str;
        this.c = bArr;
        this.e = str2;
        this.f = str3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r5 = this;
            com.xiaomi.push.service.XMPushService r0 = r5.b
            com.xiaomi.push.service.p r1 = com.xiaomi.push.service.q.a(r0)
            if (r1 != 0) goto L_0x0030
            com.xiaomi.push.service.XMPushService r0 = r5.b     // Catch:{ IOException -> 0x0026, JSONException -> 0x002c }
            java.lang.String r2 = r5.d     // Catch:{ IOException -> 0x0026, JSONException -> 0x002c }
            java.lang.String r3 = r5.e     // Catch:{ IOException -> 0x0026, JSONException -> 0x002c }
            java.lang.String r4 = r5.f     // Catch:{ IOException -> 0x0026, JSONException -> 0x002c }
            com.xiaomi.push.service.p r0 = com.xiaomi.push.service.q.a(r0, r2, r3, r4)     // Catch:{ IOException -> 0x0026, JSONException -> 0x002c }
        L_0x0014:
            if (r0 != 0) goto L_0x0032
            java.lang.String r0 = "no account for mipush"
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            com.xiaomi.push.service.XMPushService r0 = r5.b
            r1 = 70000002(0x42c1d82, float:2.0232052E-36)
            java.lang.String r2 = "no account."
            com.xiaomi.push.service.t.a(r0, r1, r2)
        L_0x0025:
            return
        L_0x0026:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            r0 = r1
            goto L_0x0014
        L_0x002c:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
        L_0x0030:
            r0 = r1
            goto L_0x0014
        L_0x0032:
            com.xiaomi.push.service.am r1 = com.xiaomi.push.service.am.a()
            java.lang.String r2 = "5"
            java.util.Collection r1 = r1.c(r2)
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L_0x0078
            com.xiaomi.push.service.XMPushService r1 = r5.b
            com.xiaomi.push.service.am$b r0 = r0.a(r1)
            com.xiaomi.push.service.XMPushService r1 = r5.b
            com.xiaomi.push.service.ac.a(r1, r0)
            com.xiaomi.push.service.am r1 = com.xiaomi.push.service.am.a()
            r1.a(r0)
        L_0x0054:
            com.xiaomi.push.service.XMPushService r1 = r5.b
            boolean r1 = r1.f()
            if (r1 == 0) goto L_0x0099
            com.xiaomi.push.service.am$c r1 = r0.m     // Catch:{ l -> 0x006c }
            com.xiaomi.push.service.am$c r2 = com.xiaomi.push.service.am.c.binded     // Catch:{ l -> 0x006c }
            if (r1 != r2) goto L_0x0083
            com.xiaomi.push.service.XMPushService r0 = r5.b     // Catch:{ l -> 0x006c }
            java.lang.String r1 = r5.d     // Catch:{ l -> 0x006c }
            byte[] r2 = r5.c     // Catch:{ l -> 0x006c }
            com.xiaomi.push.service.ac.a(r0, r1, r2)     // Catch:{ l -> 0x006c }
            goto L_0x0025
        L_0x006c:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            com.xiaomi.push.service.XMPushService r1 = r5.b
            r2 = 10
            r1.a(r2, r0)
            goto L_0x0025
        L_0x0078:
            java.util.Iterator r0 = r1.iterator()
            java.lang.Object r0 = r0.next()
            com.xiaomi.push.service.am$b r0 = (com.xiaomi.push.service.am.b) r0
            goto L_0x0054
        L_0x0083:
            com.xiaomi.push.service.am$c r1 = r0.m     // Catch:{ l -> 0x006c }
            com.xiaomi.push.service.am$c r2 = com.xiaomi.push.service.am.c.unbind     // Catch:{ l -> 0x006c }
            if (r1 != r2) goto L_0x0025
            com.xiaomi.push.service.XMPushService r1 = r5.b     // Catch:{ l -> 0x006c }
            com.xiaomi.push.service.XMPushService$a r2 = new com.xiaomi.push.service.XMPushService$a     // Catch:{ l -> 0x006c }
            com.xiaomi.push.service.XMPushService r3 = r5.b     // Catch:{ l -> 0x006c }
            r3.getClass()     // Catch:{ l -> 0x006c }
            r2.<init>(r0)     // Catch:{ l -> 0x006c }
            r1.a(r2)     // Catch:{ l -> 0x006c }
            goto L_0x0025
        L_0x0099:
            com.xiaomi.push.service.XMPushService r0 = r5.b
            r1 = 1
            r0.a(r1)
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.s.a():void");
    }

    public String b() {
        return "register app";
    }
}
