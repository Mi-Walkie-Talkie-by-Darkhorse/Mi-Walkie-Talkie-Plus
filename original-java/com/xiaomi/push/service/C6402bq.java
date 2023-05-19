package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.bq */
/* loaded from: classes2.dex */
public class C6402bq extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    private C6173fy f23121a;

    /* renamed from: a */
    private XMPushService f23122a;

    public C6402bq(XMPushService xMPushService, C6173fy c6173fy) {
        super(4);
        this.f23122a = null;
        this.f23122a = xMPushService;
        this.f23121a = c6173fy;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send a message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6173fy c6173fy = this.f23121a;
            if (c6173fy != null) {
                this.f23122a.m1788a(c6173fy);
            }
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23122a.m1793a(10, e);
        }
    }
}
