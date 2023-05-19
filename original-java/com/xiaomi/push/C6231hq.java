package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.XMPushService;
import java.io.File;

/* renamed from: com.xiaomi.push.hq */
/* loaded from: classes2.dex */
public class C6231hq implements XMPushService.InterfaceC6331o {

    /* renamed from: a */
    private static boolean f21905a = false;

    /* renamed from: a */
    private int f21906a;

    /* renamed from: a */
    private Context f21907a;

    /* renamed from: b */
    private boolean f21908b;

    public C6231hq(Context context) {
        this.f21907a = context;
    }

    /* renamed from: a */
    private String m2585a(String str) {
        return "com.xiaomi.xmsf".equals(str) ? "1000271" : this.f21907a.getSharedPreferences("pref_registered_pkg_names", 0).getString(str, null);
    }

    /* renamed from: a */
    private void m2587a(Context context) {
        this.f21908b = C6372ax.m1530a(context).m1531a(EnumC6243ia.TinyDataUploadSwitch.m2484a(), true);
        int m1534a = C6372ax.m1530a(context).m1534a(EnumC6243ia.TinyDataUploadFrequency.m2484a(), 7200);
        this.f21906a = m1534a;
        this.f21906a = Math.max(60, m1534a);
    }

    /* renamed from: a */
    public static void m2584a(boolean z) {
        f21905a = z;
    }

    /* renamed from: a */
    private boolean m2588a() {
        return Math.abs((System.currentTimeMillis() / 1000) - this.f21907a.getSharedPreferences("mipush_extra", 4).getLong("last_tiny_data_upload_timestamp", -1L)) > ((long) this.f21906a);
    }

    /* renamed from: a */
    private boolean m2586a(InterfaceC6236hu interfaceC6236hu) {
        if (!C6013bi.m3662b(this.f21907a) || interfaceC6236hu == null || TextUtils.isEmpty(m2585a(this.f21907a.getPackageName())) || !new File(this.f21907a.getFilesDir(), "tiny_data.data").exists() || f21905a) {
            return false;
        }
        return !C6372ax.m1530a(this.f21907a).m1531a(EnumC6243ia.ScreenOnOrChargingTinyDataUploadSwitch.m2484a(), false) || C6242i.m2510a(this.f21907a) || C6242i.m2502b(this.f21907a);
    }

    @Override // com.xiaomi.push.service.XMPushService.InterfaceC6331o
    /* renamed from: a */
    public void mo1393a() {
        m2587a(this.f21907a);
        if (this.f21908b && m2588a()) {
            AbstractC5876b.m4147a("TinyData TinyDataCacheProcessor.pingFollowUpAction ts:" + System.currentTimeMillis());
            InterfaceC6236hu m2573a = C6235ht.m2571a(this.f21907a).m2573a();
            if (m2586a(m2573a)) {
                f21905a = true;
                C6232hr.m2582a(this.f21907a, m2573a);
                return;
            }
            AbstractC5876b.m4147a("TinyData TinyDataCacheProcessor.pingFollowUpAction !canUpload(uploader) ts:" + System.currentTimeMillis());
        }
    }
}
