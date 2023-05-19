package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import com.xiaomi.push.C5971ad;

/* renamed from: com.xiaomi.push.service.bk */
/* loaded from: classes2.dex */
public class C6396bk {

    /* renamed from: a */
    private static C6396bk f23103a;

    /* renamed from: a */
    private int f23104a = 0;

    /* renamed from: a */
    private Context f23105a;

    private C6396bk(Context context) {
        this.f23105a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C6396bk m1466a(Context context) {
        if (f23103a == null) {
            f23103a = new C6396bk(context);
        }
        return f23103a;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public int m1469a() {
        int i = this.f23104a;
        if (i != 0) {
            return i;
        }
        try {
            this.f23104a = Settings.Global.getInt(this.f23105a.getContentResolver(), "device_provisioned", 0);
        } catch (Exception unused) {
        }
        return this.f23104a;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public Uri m1468a() {
        return Settings.Global.getUriFor("device_provisioned");
    }

    /* renamed from: a */
    public boolean m1467a() {
        String str = C5971ad.f20990a;
        return str.contains("xmsf") || str.contains("xiaomi") || str.contains("miui");
    }
}
