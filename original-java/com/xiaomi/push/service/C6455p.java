package com.xiaomi.push.service;

import com.xiaomi.push.C6241hz;
import com.xiaomi.push.InterfaceC6236hu;
import java.util.List;

/* renamed from: com.xiaomi.push.service.p */
/* loaded from: classes2.dex */
public class C6455p implements InterfaceC6236hu {

    /* renamed from: a */
    private final XMPushService f23214a;

    public C6455p(XMPushService xMPushService) {
        this.f23214a = xMPushService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m1307a(String str) {
        return "com.xiaomi.xmsf".equals(str) ? "1000271" : this.f23214a.getSharedPreferences("pref_registered_pkg_names", 0).getString(str, null);
    }

    @Override // com.xiaomi.push.InterfaceC6236hu
    /* renamed from: a */
    public void mo1306a(List<C6241hz> list, String str, String str2) {
        this.f23214a.m1783a(new C6456q(this, 4, str, list, str2));
    }
}
