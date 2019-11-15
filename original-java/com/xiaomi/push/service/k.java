package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.tinyData.e;
import java.util.List;

public class k implements e {
    /* access modifiers changed from: private */
    public final XMPushService a;

    public k(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    /* access modifiers changed from: private */
    public String a(String str) {
        return "com.xiaomi.xmsf".equals(str) ? "1000271" : this.a.getSharedPreferences("pref_registered_pkg_names", 0).getString(str, null);
    }

    public void a(List<com.xiaomi.xmpush.thrift.e> list, String str, String str2) {
        this.a.a((h) new l(this, 4, str, list, str2));
    }

    public boolean a(com.xiaomi.xmpush.thrift.e eVar, String str) {
        return a(this.a.getPackageName()) != null;
    }
}
