package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.ec;
import com.xiaomi.push.ia;
import com.xiaomi.push.service.ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class q extends ax.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8721a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(int i, String str, Context context) {
        super(i, str);
        this.f8721a = context;
    }

    @Override // com.xiaomi.push.service.ax.a
    protected void onCallback() {
        ec.a(this.f8721a).a(ax.a(this.f8721a).a(ia.AwakeInfoUploadWaySwitch.a(), 0));
    }
}
