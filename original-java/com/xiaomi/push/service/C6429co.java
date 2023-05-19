package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.C6193gk;
import com.xiaomi.push.InterfaceC6196gn;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.co */
/* loaded from: classes2.dex */
class C6429co extends C6193gk {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23172a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6429co(XMPushService xMPushService, Map map, int i, String str, InterfaceC6196gn interfaceC6196gn) {
        super(map, i, str, interfaceC6196gn);
        this.f23172a = xMPushService;
    }

    @Override // com.xiaomi.push.C6193gk
    /* renamed from: a */
    public byte[] mo1386a() {
        try {
            C6099dw.C6101b c6101b = new C6099dw.C6101b();
            c6101b.m3286a(C6404bs.m1447a().m1449a());
            return c6101b.m3144a();
        } catch (Exception e) {
            AbstractC5876b.m4147a("getOBBString err: " + e.toString());
            return null;
        }
    }
}
