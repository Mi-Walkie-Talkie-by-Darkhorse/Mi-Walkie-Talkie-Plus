package com.xiaomi.push.service;

import com.xiaomi.push.an;
import com.xiaomi.push.dv;
import com.xiaomi.push.service.bs;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bt extends an.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bs f9299a;

    /* renamed from: a  reason: collision with other field name */
    boolean f968a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bs bsVar) {
        this.f9299a = bsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039 A[Catch: Exception -> 0x0047, TRY_LEAVE, TryCatch #0 {Exception -> 0x0047, blocks: (B:2:0x0000, B:4:0x0012, B:9:0x0024, B:11:0x0039), top: B:15:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // com.xiaomi.push.an.b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void mo161b() {
        /*
            r3 = this;
            android.content.Context r0 = com.xiaomi.push.u.m658a()     // Catch: Exception -> 0x0047
            com.xiaomi.push.service.a r0 = com.xiaomi.push.service.a.a(r0)     // Catch: Exception -> 0x0047
            java.lang.String r0 = r0.a()     // Catch: Exception -> 0x0047
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: Exception -> 0x0047
            if (r1 != 0) goto L_0x0022
            com.xiaomi.push.p r1 = com.xiaomi.push.p.China     // Catch: Exception -> 0x0047
            java.lang.String r1 = r1.name()     // Catch: Exception -> 0x0047
            boolean r0 = r1.equals(r0)     // Catch: Exception -> 0x0047
            if (r0 == 0) goto L_0x001f
            goto L_0x0022
        L_0x001f:
            java.lang.String r0 = "https://resolver.msg.global.xiaomi.net/psc/?t=a"
            goto L_0x0024
        L_0x0022:
            java.lang.String r0 = "https://resolver.msg.xiaomi.net/psc/?t=a"
        L_0x0024:
            android.content.Context r1 = com.xiaomi.push.u.m658a()     // Catch: Exception -> 0x0047
            r2 = 0
            java.lang.String r0 = com.xiaomi.push.cy.a(r1, r0, r2)     // Catch: Exception -> 0x0047
            r1 = 10
            byte[] r0 = android.util.Base64.decode(r0, r1)     // Catch: Exception -> 0x0047
            com.xiaomi.push.dv$a r0 = com.xiaomi.push.dv.a.a(r0)     // Catch: Exception -> 0x0047
            if (r0 == 0) goto L_0x0060
            com.xiaomi.push.service.bs r1 = r3.f9299a     // Catch: Exception -> 0x0047
            com.xiaomi.push.service.bs.a(r1, r0)     // Catch: Exception -> 0x0047
            r0 = 1
            r3.f968a = r0     // Catch: Exception -> 0x0047
            com.xiaomi.push.service.bs r0 = r3.f9299a     // Catch: Exception -> 0x0047
            com.xiaomi.push.service.bs.a(r0)     // Catch: Exception -> 0x0047
            goto L_0x0060
        L_0x0047:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "fetch config failure: "
            r1.append(r2)
            java.lang.String r0 = r0.getMessage()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            com.xiaomi.channel.commonutils.logger.b.m1a(r0)
        L_0x0060:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.bt.mo161b():void");
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: c */
    public void mo162c() {
        List list;
        List list2;
        bs.a[] aVarArr;
        dv.a aVar;
        this.f9299a.f965a = null;
        if (this.f968a) {
            synchronized (this.f9299a) {
                list = this.f9299a.f967a;
                list2 = this.f9299a.f967a;
                aVarArr = (bs.a[]) list.toArray(new bs.a[list2.size()]);
            }
            for (bs.a aVar2 : aVarArr) {
                aVar = this.f9299a.f966a;
                aVar2.a(aVar);
            }
        }
    }
}
