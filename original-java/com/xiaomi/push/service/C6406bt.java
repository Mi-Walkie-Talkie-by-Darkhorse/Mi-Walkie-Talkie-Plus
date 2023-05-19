package com.xiaomi.push.service;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6068cy;
import com.xiaomi.push.C5983an;
import com.xiaomi.push.C6097dv;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6310p;
import com.xiaomi.push.InterfaceC6012bh;
import com.xiaomi.push.service.C6404bs;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.bt */
/* loaded from: classes2.dex */
public class C6406bt extends C5983an.AbstractC5985b {

    /* renamed from: a */
    final /* synthetic */ C6404bs f23129a;

    /* renamed from: a */
    boolean f23130a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6406bt(C6404bs c6404bs) {
        this.f23129a = c6404bs;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039 A[Catch: Exception -> 0x0047, TRY_LEAVE, TryCatch #0 {Exception -> 0x0047, blocks: (B:2:0x0000, B:4:0x0012, B:9:0x0024, B:11:0x0039), top: B:16:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo1431b() {
        String str;
        C6097dv.C6098a m3333a;
        try {
            String m1719a = C6338a.m1718a(C6469u.m1240a()).m1719a();
            if (!TextUtils.isEmpty(m1719a) && !EnumC6310p.China.name().equals(m1719a)) {
                str = "https://resolver.msg.global.xiaomi.net/psc/?t=a";
                m3333a = C6097dv.C6098a.m3333a(Base64.decode(AbstractC6068cy.m3424a(C6469u.m1240a(), str, (List<InterfaceC6012bh>) null), 10));
                if (m3333a == null) {
                    this.f23129a.f23127a = m3333a;
                    this.f23130a = true;
                    this.f23129a.m1434e();
                    return;
                }
                return;
            }
            str = "https://resolver.msg.xiaomi.net/psc/?t=a";
            m3333a = C6097dv.C6098a.m3333a(Base64.decode(AbstractC6068cy.m3424a(C6469u.m1240a(), str, (List<InterfaceC6012bh>) null), 10));
            if (m3333a == null) {
            }
        } catch (Exception e) {
            AbstractC5876b.m4147a("fetch config failure: " + e.getMessage());
        }
    }

    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: c */
    public void mo1430c() {
        List list;
        List list2;
        C6404bs.AbstractC6405a[] abstractC6405aArr;
        C6097dv.C6098a c6098a;
        this.f23129a.f23126a = null;
        if (this.f23130a) {
            synchronized (this.f23129a) {
                list = this.f23129a.f23128a;
                list2 = this.f23129a.f23128a;
                abstractC6405aArr = (C6404bs.AbstractC6405a[]) list.toArray(new C6404bs.AbstractC6405a[list2.size()]);
            }
            for (C6404bs.AbstractC6405a abstractC6405a : abstractC6405aArr) {
                c6098a = this.f23129a.f23127a;
                abstractC6405a.mo1433a(c6098a);
            }
        }
    }
}
