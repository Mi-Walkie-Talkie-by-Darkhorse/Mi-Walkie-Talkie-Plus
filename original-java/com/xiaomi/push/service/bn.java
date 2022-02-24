package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fu;
import com.xiaomi.push.service.XMPushService;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bn {
    private static int d = 300000;

    /* renamed from: a  reason: collision with other field name */
    private XMPushService f961a;

    /* renamed from: b  reason: collision with root package name */
    private int f9293b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f9294c = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f9292a = 500;

    /* renamed from: a  reason: collision with other field name */
    private long f960a = 0;

    public bn(XMPushService xMPushService) {
        this.f961a = xMPushService;
    }

    private int a() {
        if (this.f9293b > 8) {
            return 300000;
        }
        double random = (Math.random() * 2.0d) + 1.0d;
        int i = this.f9293b;
        if (i > 4) {
            return (int) (random * 60000.0d);
        }
        if (i > 1) {
            return (int) (random * 10000.0d);
        }
        if (this.f960a == 0) {
            return 0;
        }
        if (System.currentTimeMillis() - this.f960a < 310000) {
            int i2 = this.f9292a;
            int i3 = d;
            if (i2 >= i3) {
                return i2;
            }
            int i4 = this.f9294c + 1;
            this.f9294c = i4;
            if (i4 >= 4) {
                return i3;
            }
            this.f9292a = (int) (i2 * 1.5d);
            return i2;
        }
        this.f9292a = 1000;
        this.f9294c = 0;
        return 0;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m623a() {
        this.f960a = System.currentTimeMillis();
        this.f961a.a(1);
        this.f9293b = 0;
    }

    public void a(boolean z) {
        if (!this.f961a.m552a()) {
            b.c("should not reconnect as no client or network.");
        } else if (z) {
            if (!this.f961a.m553a(1)) {
                this.f9293b++;
            }
            this.f961a.a(1);
            XMPushService xMPushService = this.f961a;
            Objects.requireNonNull(xMPushService);
            xMPushService.a(new XMPushService.e());
        } else if (!this.f961a.m553a(1)) {
            int a2 = a();
            this.f9293b++;
            b.m1a("schedule reconnect in " + a2 + "ms");
            XMPushService xMPushService2 = this.f961a;
            Objects.requireNonNull(xMPushService2);
            xMPushService2.a(new XMPushService.e(), (long) a2);
            if (this.f9293b == 2 && fu.m284a().m289a()) {
                am.b();
            }
            if (this.f9293b == 3) {
                am.a();
            }
        }
    }
}
