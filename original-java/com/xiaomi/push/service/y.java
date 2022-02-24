package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.l;
import com.xiaomi.push.service.XMPushService;
import java.util.Map;

/* loaded from: classes2.dex */
class y extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9367a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f1015a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(int i, XMPushService xMPushService, ir irVar) {
        super(i);
        this.f1015a = xMPushService;
        this.f9367a = irVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        Map<String, String> map = null;
        try {
            if (l.m528a((Context) this.f1015a)) {
                try {
                    map = ae.a((Context) this.f1015a, this.f9367a);
                } catch (Throwable unused) {
                }
            }
            af.a(this.f1015a, w.a(this.f1015a, this.f9367a, map));
        } catch (gu e) {
            b.a(e);
            this.f1015a.a(10, e);
        }
    }
}
