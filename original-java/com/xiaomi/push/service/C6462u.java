package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;
import java.util.Collection;
import java.util.Objects;

/* renamed from: com.xiaomi.push.service.u */
/* loaded from: classes2.dex */
public class C6462u extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    private XMPushService f23238a;

    /* renamed from: a */
    private String f23239a;

    /* renamed from: a */
    private byte[] f23240a;

    /* renamed from: b */
    private String f23241b;

    /* renamed from: c */
    private String f23242c;

    public C6462u(XMPushService xMPushService, String str, String str2, String str3, byte[] bArr) {
        super(9);
        this.f23238a = xMPushService;
        this.f23239a = str;
        this.f23240a = bArr;
        this.f23241b = str2;
        this.f23242c = str3;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "register app";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        C6381bd.C6383b next;
        C6457r m1294a = C6459s.m1294a((Context) this.f23238a);
        if (m1294a == null) {
            try {
                m1294a = C6459s.m1289a(this.f23238a, this.f23239a, this.f23241b, this.f23242c);
            } catch (Exception e) {
                AbstractC5876b.m4138d("fail to register push account. " + e);
            }
        }
        if (m1294a == null) {
            AbstractC5876b.m4138d("no account for registration.");
            C6463v.m1275a(this.f23238a, ErrorCode.ERROR_AUTHERICATION_ERROR, "no account.");
            return;
        }
        AbstractC5876b.m4147a("do registration now.");
        Collection<C6381bd.C6383b> m1501a = C6381bd.m1509a().m1501a("5");
        if (m1501a.isEmpty()) {
            next = m1294a.m1302a(this.f23238a);
            C6346af.m1697a(this.f23238a, next);
            C6381bd.m1509a().m1503a(next);
        } else {
            next = m1501a.iterator().next();
        }
        if (!this.f23238a.m1747c()) {
            C6463v.m1272a(this.f23239a, this.f23240a);
            this.f23238a.m1761a(true);
            return;
        }
        try {
            C6381bd.EnumC6387c enumC6387c = next.f23030a;
            if (enumC6387c == C6381bd.EnumC6387c.binded) {
                C6346af.m1695a(this.f23238a, this.f23239a, this.f23240a);
            } else if (enumC6387c == C6381bd.EnumC6387c.unbind) {
                C6463v.m1272a(this.f23239a, this.f23240a);
                XMPushService xMPushService = this.f23238a;
                Objects.requireNonNull(xMPushService);
                xMPushService.m1783a(new XMPushService.C6318b(next));
            }
        } catch (C6203gu e2) {
            AbstractC5876b.m4138d("meet error, disconnect connection. " + e2);
            this.f23238a.m1793a(10, e2);
        }
    }
}
