package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.e;
import com.xiaomi.xmpush.thrift.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class l extends h {
    final /* synthetic */ String b;
    final /* synthetic */ List c;
    final /* synthetic */ String d;
    final /* synthetic */ k e;

    l(k kVar, int i, String str, List list, String str2) {
        this.e = kVar;
        this.b = str;
        this.c = list;
        this.d = str2;
        super(i);
    }

    public void a() {
        String a = this.e.a(this.b);
        ArrayList a2 = ay.a(this.c, this.b, a, 32768);
        if (a2 != null) {
            Iterator it = a2.iterator();
            while (it.hasNext()) {
                af afVar = (af) it.next();
                afVar.a("uploadWay", "longXMPushService");
                ac a3 = ac.a(this.b, a, afVar, a.Notification);
                if (!TextUtils.isEmpty(this.d) && !TextUtils.equals(this.b, this.d)) {
                    if (a3.m() == null) {
                        s sVar = new s();
                        sVar.a("-1");
                        a3.a(sVar);
                    }
                    a3.m().b("ext_traffic_source_pkg", this.d);
                }
                this.e.a.a(this.b, ar.a(a3), true);
            }
            for (e eVar : this.c) {
                b.c("A tinyData uploaded by com.xiaomi.push.service.TinyDataUploader." + eVar);
            }
            return;
        }
        b.d("Get a null XmPushActionNotification list when TinyDataHelper.pack() in XMPushService.");
    }

    public String b() {
        return "Send tiny data.";
    }
}
