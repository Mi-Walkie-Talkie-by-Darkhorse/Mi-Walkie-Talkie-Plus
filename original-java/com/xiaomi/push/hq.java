package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.ax;
import java.io.File;

/* loaded from: classes2.dex */
public class hq implements XMPushService.o {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9049a = false;

    /* renamed from: a  reason: collision with other field name */
    private int f481a;

    /* renamed from: a  reason: collision with other field name */
    private Context f482a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9050b;

    public hq(Context context) {
        this.f482a = context;
    }

    private String a(String str) {
        return "com.xiaomi.xmsf".equals(str) ? "1000271" : this.f482a.getSharedPreferences("pref_registered_pkg_names", 0).getString(str, null);
    }

    private void a(Context context) {
        this.f9050b = ax.a(context).a(ia.TinyDataUploadSwitch.a(), true);
        int a2 = ax.a(context).a(ia.TinyDataUploadFrequency.a(), 7200);
        this.f481a = a2;
        this.f481a = Math.max(60, a2);
    }

    public static void a(boolean z) {
        f9049a = z;
    }

    private boolean a() {
        return Math.abs((System.currentTimeMillis() / 1000) - this.f482a.getSharedPreferences("mipush_extra", 4).getLong("last_tiny_data_upload_timestamp", -1L)) > ((long) this.f481a);
    }

    private boolean a(hu huVar) {
        if (bi.b(this.f482a) && huVar != null && !TextUtils.isEmpty(a(this.f482a.getPackageName())) && new File(this.f482a.getFilesDir(), "tiny_data.data").exists() && !f9049a) {
            return !ax.a(this.f482a).a(ia.ScreenOnOrChargingTinyDataUploadSwitch.a(), false) || i.m368a(this.f482a) || i.m370b(this.f482a);
        }
        return false;
    }

    @Override // com.xiaomi.push.service.XMPushService.o
    /* renamed from: a  reason: collision with other method in class */
    public void mo351a() {
        a(this.f482a);
        if (this.f9050b && a()) {
            b.m1a("TinyData TinyDataCacheProcessor.pingFollowUpAction ts:" + System.currentTimeMillis());
            hu a2 = ht.a(this.f482a).a();
            if (!a(a2)) {
                b.m1a("TinyData TinyDataCacheProcessor.pingFollowUpAction !canUpload(uploader) ts:" + System.currentTimeMillis());
                return;
            }
            f9049a = true;
            hr.a(this.f482a, a2);
        }
    }
}
