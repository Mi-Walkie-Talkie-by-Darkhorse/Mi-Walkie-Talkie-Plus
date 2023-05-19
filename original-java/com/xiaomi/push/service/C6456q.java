package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.xiaomi.push.service.q */
/* loaded from: classes2.dex */
class C6456q extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6455p f23215a;

    /* renamed from: a */
    final /* synthetic */ String f23216a;

    /* renamed from: a */
    final /* synthetic */ List f23217a;

    /* renamed from: b */
    final /* synthetic */ String f23218b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6456q(C6455p c6455p, int i, String str, List list, String str2) {
        super(i);
        this.f23215a = c6455p;
        this.f23216a = str;
        this.f23217a = list;
        this.f23218b = str2;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "Send tiny data.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        String m1307a;
        XMPushService xMPushService;
        m1307a = this.f23215a.m1307a(this.f23216a);
        ArrayList<C6263iu> m1414a = C6410bw.m1414a(this.f23217a, this.f23216a, m1307a, 32768);
        if (m1414a == null) {
            AbstractC5876b.m4138d("TinyData LongConnUploader.upload Get a null XmPushActionNotification list when TinyDataHelper.pack() in XMPushService.");
            return;
        }
        Iterator<C6263iu> it2 = m1414a.iterator();
        while (it2.hasNext()) {
            C6263iu next = it2.next();
            next.m2188a("uploadWay", "longXMPushService");
            C6260ir m1690a = C6346af.m1690a(this.f23216a, m1307a, next, EnumC6237hv.Notification);
            if (!TextUtils.isEmpty(this.f23218b) && !TextUtils.equals(this.f23216a, this.f23218b)) {
                if (m1690a.m2233a() == null) {
                    C6251ii c6251ii = new C6251ii();
                    c6251ii.m2395a("-1");
                    m1690a.m2227a(c6251ii);
                }
                m1690a.m2233a().m2385b("ext_traffic_source_pkg", this.f23218b);
            }
            byte[] m1933a = C6278jf.m1933a(m1690a);
            xMPushService = this.f23215a.f23214a;
            xMPushService.m1762a(this.f23216a, m1933a, true);
        }
    }
}
