package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.c */
/* loaded from: classes2.dex */
public class C6414c extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    private XMPushService f23146a;

    /* renamed from: a */
    private C6173fy[] f23147a;

    public C6414c(XMPushService xMPushService, C6173fy[] c6173fyArr) {
        super(4);
        this.f23146a = null;
        this.f23146a = xMPushService;
        this.f23147a = c6173fyArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "batch send message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6173fy[] c6173fyArr = this.f23147a;
            if (c6173fyArr != null) {
                this.f23146a.m1759a(c6173fyArr);
            }
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23146a.m1793a(10, e);
        }
    }
}
