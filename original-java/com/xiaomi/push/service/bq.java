package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fy;
import com.xiaomi.push.gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bq extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    private fy f9296a;

    /* renamed from: a  reason: collision with other field name */
    private XMPushService f963a;

    public bq(XMPushService xMPushService, fy fyVar) {
        super(4);
        this.f963a = null;
        this.f963a = xMPushService;
        this.f9296a = fyVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send a message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            if (this.f9296a != null) {
                this.f963a.a(this.f9296a);
            }
        } catch (gu e) {
            b.a(e);
            this.f963a.a(10, e);
        }
    }
}
