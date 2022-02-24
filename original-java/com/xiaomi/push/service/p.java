package com.xiaomi.push.service;

import com.xiaomi.push.hu;
import com.xiaomi.push.hz;
import java.util.List;

/* loaded from: classes2.dex */
public class p implements hu {

    /* renamed from: a  reason: collision with root package name */
    private final XMPushService f9348a;

    public p(XMPushService xMPushService) {
        this.f9348a = xMPushService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        return "com.xiaomi.xmsf".equals(str) ? "1000271" : this.f9348a.getSharedPreferences("pref_registered_pkg_names", 0).getString(str, null);
    }

    @Override // com.xiaomi.push.hu
    public void a(List<hz> list, String str, String str2) {
        this.f9348a.a(new q(this, 4, str, list, str2));
    }
}
