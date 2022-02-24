package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
class q extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f9349a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f1004a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ List f1005a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9350b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(p pVar, int i, String str, List list, String str2) {
        super(i);
        this.f9349a = pVar;
        this.f1004a = str;
        this.f1005a = list;
        this.f9350b = str2;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "Send tiny data.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        String a2;
        XMPushService xMPushService;
        a2 = this.f9349a.a(this.f1004a);
        ArrayList<iu> a3 = bw.a(this.f1005a, this.f1004a, a2, 32768);
        if (a3 != null) {
            Iterator<iu> it = a3.iterator();
            while (it.hasNext()) {
                iu next = it.next();
                next.a("uploadWay", "longXMPushService");
                ir a4 = af.a(this.f1004a, a2, next, hv.Notification);
                if (!TextUtils.isEmpty(this.f9350b) && !TextUtils.equals(this.f1004a, this.f9350b)) {
                    if (a4.m430a() == null) {
                        ii iiVar = new ii();
                        iiVar.a("-1");
                        a4.a(iiVar);
                    }
                    a4.m430a().b("ext_traffic_source_pkg", this.f9350b);
                }
                byte[] a5 = jf.a(a4);
                xMPushService = this.f9349a.f9348a;
                xMPushService.a(this.f1004a, a5, true);
            }
            return;
        }
        b.d("TinyData LongConnUploader.upload Get a null XmPushActionNotification list when TinyDataHelper.pack() in XMPushService.");
    }
}
