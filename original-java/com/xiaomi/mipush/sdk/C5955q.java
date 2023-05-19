package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.C6117ec;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.service.C6372ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.q */
/* loaded from: classes2.dex */
public class C5955q extends C6372ax.AbstractRunnableC6373a {

    /* renamed from: a */
    final /* synthetic */ Context f20971a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5955q(int i, String str, Context context) {
        super(i, str);
        this.f20971a = context;
    }

    @Override // com.xiaomi.push.service.C6372ax.AbstractRunnableC6373a
    protected void onCallback() {
        C6117ec.m3120a(this.f20971a).m3121a(C6372ax.m1530a(this.f20971a).m1534a(EnumC6243ia.AwakeInfoUploadWaySwitch.m2484a(), 0));
    }
}
