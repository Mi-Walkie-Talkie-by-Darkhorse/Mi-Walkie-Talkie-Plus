package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.service.XMPushService;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.y */
/* loaded from: classes2.dex */
class C6466y extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f23247a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f23248a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6466y(int i, XMPushService xMPushService, C6260ir c6260ir) {
        super(i);
        this.f23248a = xMPushService;
        this.f23247a = c6260ir;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        Map<String, String> map = null;
        try {
            if (C6306l.m1851a((Context) this.f23248a)) {
                try {
                    map = C6343ae.m1712a((Context) this.f23248a, this.f23247a);
                } catch (Throwable unused) {
                }
            }
            C6346af.m1698a(this.f23248a, C6464w.m1267a(this.f23248a, this.f23247a, map));
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23248a.m1793a(10, e);
        }
    }
}
