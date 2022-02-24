package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.dw;
import com.xiaomi.push.gk;
import com.xiaomi.push.gn;
import java.util.Map;

/* loaded from: classes2.dex */
class co extends gk {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9322a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public co(XMPushService xMPushService, Map map, int i, String str, gn gnVar) {
        super(map, i, str, gnVar);
        this.f9322a = xMPushService;
    }

    @Override // com.xiaomi.push.gk
    /* renamed from: a */
    public byte[] mo321a() {
        try {
            dw.b bVar = new dw.b();
            bVar.a(bs.a().m626a());
            return bVar.a();
        } catch (Exception e) {
            b.m1a("getOBBString err: " + e.toString());
            return null;
        }
    }
}
