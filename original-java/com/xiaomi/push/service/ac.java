package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class ac extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9228a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f900a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f901a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9229b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac(int i, XMPushService xMPushService, ir irVar, String str, String str2) {
        super(i);
        this.f900a = xMPushService;
        this.f9228a = irVar;
        this.f901a = str;
        this.f9229b = str2;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send wrong message ack for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            ir a2 = w.a((Context) this.f900a, this.f9228a);
            a2.f648a.a("error", this.f901a);
            a2.f648a.a("reason", this.f9229b);
            af.a(this.f900a, a2);
        } catch (gu e) {
            b.a(e);
            this.f900a.a(10, e);
        }
    }
}
