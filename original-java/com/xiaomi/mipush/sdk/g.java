package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.ia;
import com.xiaomi.push.service.ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class g extends ax.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f8710a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f fVar, int i, String str) {
        super(i, str);
        this.f8710a = fVar;
    }

    @Override // com.xiaomi.push.service.ax.a
    protected void onCallback() {
        Context context;
        boolean z;
        Context context2;
        context = this.f8710a.f68a;
        boolean a2 = ax.a(context).a(ia.AggregatePushSwitch.a(), true);
        z = this.f8710a.f71a;
        if (z != a2) {
            this.f8710a.f71a = a2;
            context2 = this.f8710a.f68a;
            i.b(context2);
        }
    }
}
