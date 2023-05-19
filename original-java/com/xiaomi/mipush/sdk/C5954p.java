package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.service.C6377ba;

/* renamed from: com.xiaomi.mipush.sdk.p */
/* loaded from: classes2.dex */
class C5954p extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ Context f20969a;

    /* renamed from: a */
    final /* synthetic */ C6263iu f20970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C5954p(C6263iu c6263iu, Context context) {
        this.f20970a = c6263iu;
        this.f20969a = context;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return com.tencent.connect.common.Constants.VIA_REPORT_TYPE_DATALINE;
    }

    @Override // java.lang.Runnable
    public void run() {
        C6263iu c6263iu = this.f20970a;
        if (c6263iu != null) {
            c6263iu.m2189a(C6377ba.m1518a());
            C5928ao.m3984a(this.f20969a.getApplicationContext()).m3967a((C5928ao) this.f20970a, EnumC6237hv.Notification, true, (C6251ii) null, true);
        }
    }
}
