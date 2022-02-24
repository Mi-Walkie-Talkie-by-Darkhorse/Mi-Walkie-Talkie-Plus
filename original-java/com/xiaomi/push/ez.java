package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class ez extends eu {

    /* renamed from: b  reason: collision with root package name */
    private String f8918b = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(Context context) {
        super(context);
        b.m1a("[Policy] Fixed Interval");
    }

    private void b(String str) {
        if ("WIFI-ID-UNKNOWN".equals(str)) {
            String str2 = this.f8918b;
            if (str2 == null || !str2.startsWith("W-")) {
                str = null;
            }
            ((eu) this).f317a = this.f8918b;
        }
        this.f8918b = str;
        ((eu) this).f317a = this.f8918b;
    }

    public long a() {
        long b2 = mo242b();
        ((eu) this).f8915a = b2;
        return b2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m247a() {
        super.m241a();
    }

    @Override // com.xiaomi.push.eo
    /* renamed from: a */
    public void mo260a(long j) {
    }

    @Override // com.xiaomi.push.ex
    public void a(NetworkInfo networkInfo) {
        String str = null;
        if (networkInfo != null) {
            if (networkInfo.getType() == 0) {
                String subtypeName = networkInfo.getSubtypeName();
                if (!TextUtils.isEmpty(subtypeName) && !"UNKNOWN".equalsIgnoreCase(subtypeName)) {
                    str = "M-" + subtypeName;
                }
            } else if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
                b("WIFI-ID-UNKNOWN");
                return;
            }
        }
        b(str);
    }

    @Override // com.xiaomi.push.ex
    /* renamed from: a */
    public void mo255a(String str) {
        if (!TextUtils.isEmpty(str)) {
            b("W-" + str);
        }
        if (!TextUtils.isEmpty(this.f8918b)) {
            ((eu) this).f318a = true;
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: b */
    public void mo242b() {
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: c */
    public void mo256c() {
        ((eu) this).f318a = false;
        a(false, 0L);
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: d */
    public void mo257d() {
        ((eu) this).f318a = false;
        a(true, 0L);
    }
}
