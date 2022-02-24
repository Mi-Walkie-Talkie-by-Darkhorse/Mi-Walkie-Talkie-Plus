package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fy;
import com.xiaomi.push.gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class c extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f9306a;

    /* renamed from: a  reason: collision with other field name */
    private fy[] f978a;

    public c(XMPushService xMPushService, fy[] fyVarArr) {
        super(4);
        this.f9306a = null;
        this.f9306a = xMPushService;
        this.f978a = fyVarArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "batch send message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            if (this.f978a != null) {
                this.f9306a.a(this.f978a);
            }
        } catch (gu e) {
            b.a(e);
            this.f9306a.a(10, e);
        }
    }
}
