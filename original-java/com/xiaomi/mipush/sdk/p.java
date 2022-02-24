package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.tencent.connect.common.Constants;
import com.xiaomi.push.ak;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.ba;

/* loaded from: classes2.dex */
class p extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8720a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ iu f74a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(iu iuVar, Context context) {
        this.f74a = iuVar;
        this.f8720a = context;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return Constants.VIA_REPORT_TYPE_DATALINE;
    }

    @Override // java.lang.Runnable
    public void run() {
        iu iuVar = this.f74a;
        if (iuVar != null) {
            iuVar.a(ba.a());
            ao.a(this.f8720a.getApplicationContext()).a((ao) this.f74a, hv.Notification, true, (ii) null, true);
        }
    }
}
