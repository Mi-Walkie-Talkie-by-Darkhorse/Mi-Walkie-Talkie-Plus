package com.xiaomi.push.service;

import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6167fu;
import com.xiaomi.push.service.XMPushService;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.bn */
/* loaded from: classes2.dex */
public class C6399bn {

    /* renamed from: d */
    private static int f23113d = 300000;

    /* renamed from: a */
    private XMPushService f23116a;

    /* renamed from: b */
    private int f23117b = 0;

    /* renamed from: c */
    private int f23118c = 0;

    /* renamed from: a */
    private int f23114a = 500;

    /* renamed from: a */
    private long f23115a = 0;

    public C6399bn(XMPushService xMPushService) {
        this.f23116a = xMPushService;
    }

    /* renamed from: a */
    private int m1455a() {
        if (this.f23117b > 8) {
            return 300000;
        }
        double random = (Math.random() * 2.0d) + 1.0d;
        int i = this.f23117b;
        if (i > 4) {
            return (int) (random * 60000.0d);
        }
        if (i > 1) {
            return (int) (random * 10000.0d);
        }
        if (this.f23115a == 0) {
            return 0;
        }
        if (System.currentTimeMillis() - this.f23115a >= 310000) {
            this.f23114a = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
            this.f23118c = 0;
            return 0;
        }
        int i2 = this.f23114a;
        int i3 = f23113d;
        if (i2 >= i3) {
            return i2;
        }
        int i4 = this.f23118c + 1;
        this.f23118c = i4;
        if (i4 >= 4) {
            return i3;
        }
        this.f23114a = (int) (i2 * 1.5d);
        return i2;
    }

    /* renamed from: a */
    public void m1454a() {
        this.f23115a = System.currentTimeMillis();
        this.f23116a.m1795a(1);
        this.f23117b = 0;
    }

    /* renamed from: a */
    public void m1453a(boolean z) {
        if (!this.f23116a.m1797a()) {
            AbstractC5876b.m4139c("should not reconnect as no client or network.");
        } else if (z) {
            if (!this.f23116a.m1794a(1)) {
                this.f23117b++;
            }
            this.f23116a.m1795a(1);
            XMPushService xMPushService = this.f23116a;
            Objects.requireNonNull(xMPushService);
            xMPushService.m1783a(new XMPushService.C6321e());
        } else if (this.f23116a.m1794a(1)) {
        } else {
            int m1455a = m1455a();
            this.f23117b++;
            AbstractC5876b.m4147a("schedule reconnect in " + m1455a + "ms");
            XMPushService xMPushService2 = this.f23116a;
            Objects.requireNonNull(xMPushService2);
            xMPushService2.m1782a(new XMPushService.C6321e(), (long) m1455a);
            if (this.f23117b == 2 && C6167fu.m2865a().m2863a()) {
                C6356am.m1629b();
            }
            if (this.f23117b == 3) {
                C6356am.m1633a();
            }
        }
    }
}
