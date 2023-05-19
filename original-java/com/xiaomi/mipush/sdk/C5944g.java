package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.service.C6372ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.g */
/* loaded from: classes2.dex */
public class C5944g extends C6372ax.AbstractRunnableC6373a {

    /* renamed from: a */
    final /* synthetic */ C5943f f20957a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5944g(C5943f c5943f, int i, String str) {
        super(i, str);
        this.f20957a = c5943f;
    }

    @Override // com.xiaomi.push.service.C6372ax.AbstractRunnableC6373a
    protected void onCallback() {
        Context context;
        boolean z;
        Context context2;
        context = this.f20957a.f20953a;
        boolean m1531a = C6372ax.m1530a(context).m1531a(EnumC6243ia.AggregatePushSwitch.m2484a(), true);
        z = this.f20957a.f20956a;
        if (z != m1531a) {
            this.f20957a.f20956a = m1531a;
            context2 = this.f20957a.f20953a;
            C5946i.m3856b(context2);
        }
    }
}
