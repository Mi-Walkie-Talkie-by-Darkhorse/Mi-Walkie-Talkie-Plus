package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.gu;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes2.dex */
public class u extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f9362a;

    /* renamed from: a  reason: collision with other field name */
    private String f1011a;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f1012a;

    /* renamed from: b  reason: collision with root package name */
    private String f9363b;

    /* renamed from: c  reason: collision with root package name */
    private String f9364c;

    public u(XMPushService xMPushService, String str, String str2, String str3, byte[] bArr) {
        super(9);
        this.f9362a = xMPushService;
        this.f1011a = str;
        this.f1012a = bArr;
        this.f9363b = str2;
        this.f9364c = str3;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "register app";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        bd.b bVar;
        r a2 = s.m648a((Context) this.f9362a);
        if (a2 == null) {
            try {
                a2 = s.a(this.f9362a, this.f1011a, this.f9363b, this.f9364c);
            } catch (Exception e) {
                b.d("fail to register push account. " + e);
            }
        }
        if (a2 == null) {
            b.d("no account for registration.");
            v.a(this.f9362a, ErrorCode.ERROR_AUTHERICATION_ERROR, "no account.");
            return;
        }
        b.m1a("do registration now.");
        Collection<bd.b> a3 = bd.a().m611a("5");
        if (a3.isEmpty()) {
            bVar = a2.a(this.f9362a);
            af.a(this.f9362a, bVar);
            bd.a().a(bVar);
        } else {
            bVar = a3.iterator().next();
        }
        if (this.f9362a.m557c()) {
            try {
                if (bVar.f945a == bd.c.binded) {
                    af.a(this.f9362a, this.f1011a, this.f1012a);
                } else if (bVar.f945a == bd.c.unbind) {
                    v.a(this.f1011a, this.f1012a);
                    XMPushService xMPushService = this.f9362a;
                    XMPushService xMPushService2 = this.f9362a;
                    Objects.requireNonNull(xMPushService2);
                    xMPushService.a(new XMPushService.b(bVar));
                }
            } catch (gu e2) {
                b.d("meet error, disconnect connection. " + e2);
                this.f9362a.a(10, e2);
            }
        } else {
            v.a(this.f1011a, this.f1012a);
            this.f9362a.a(true);
        }
    }
}
