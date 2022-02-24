package com.xiaomi.push.service;

import com.tencent.connect.common.Constants;
import com.xiaomi.push.ak;
import com.xiaomi.push.hv;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class b extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    private iu f9263a;

    /* renamed from: a  reason: collision with other field name */
    private WeakReference<XMPushService> f934a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f935a;

    public b(iu iuVar, WeakReference<XMPushService> weakReference, boolean z) {
        this.f935a = false;
        this.f9263a = iuVar;
        this.f934a = weakReference;
        this.f935a = z;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return Constants.VIA_REPORT_TYPE_DATALINE;
    }

    @Override // java.lang.Runnable
    public void run() {
        XMPushService xMPushService;
        WeakReference<XMPushService> weakReference = this.f934a;
        if (weakReference != null && this.f9263a != null && (xMPushService = weakReference.get()) != null) {
            this.f9263a.a(ba.a());
            this.f9263a.a(false);
            com.xiaomi.channel.commonutils.logger.b.c("MoleInfo aw_ping : send aw_Ping msg " + this.f9263a.m445a());
            try {
                String c2 = this.f9263a.c();
                xMPushService.a(c2, jf.a(af.a(c2, this.f9263a.b(), this.f9263a, hv.Notification)), this.f935a);
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.d("MoleInfo aw_ping : send help app ping error" + e.toString());
            }
        }
    }
}
