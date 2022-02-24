package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.dl;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;

/* loaded from: classes2.dex */
public class r implements dl {

    /* renamed from: a  reason: collision with root package name */
    private Context f8722a;

    public r(Context context) {
        this.f8722a = context;
    }

    @Override // com.xiaomi.push.dl
    public String a() {
        return b.m36a(this.f8722a).d();
    }

    @Override // com.xiaomi.push.dl
    public void a(iu iuVar, hv hvVar, ii iiVar) {
        ao.a(this.f8722a).a((ao) iuVar, hvVar, iiVar);
    }
}
