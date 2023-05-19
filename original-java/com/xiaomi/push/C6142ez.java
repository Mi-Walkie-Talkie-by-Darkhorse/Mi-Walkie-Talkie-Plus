package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.ez */
/* loaded from: classes2.dex */
public class C6142ez extends AbstractC6136eu {

    /* renamed from: b */
    private String f21479b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6142ez(Context context) {
        super(context);
        this.f21479b = "";
        AbstractC5876b.m4147a("[Policy] Fixed Interval");
    }

    /* renamed from: b */
    private void m3014b(String str) {
        if ("WIFI-ID-UNKNOWN".equals(str)) {
            String str2 = this.f21479b;
            if (str2 == null || !str2.startsWith("W-")) {
                str = null;
            }
            ((AbstractC6136eu) this).f21473a = this.f21479b;
        }
        this.f21479b = str;
        ((AbstractC6136eu) this).f21473a = this.f21479b;
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public long mo2992a() {
        long mo2982b = mo2982b();
        ((AbstractC6136eu) this).f21468a = mo2982b;
        return mo2982b;
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public void mo2991a() {
        super.mo2991a();
    }

    @Override // com.xiaomi.push.InterfaceC6130eo
    /* renamed from: a */
    public void mo2989a(long j) {
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2986a(NetworkInfo networkInfo) {
        String str = null;
        if (networkInfo != null) {
            if (networkInfo.getType() == 0) {
                String subtypeName = networkInfo.getSubtypeName();
                if (!TextUtils.isEmpty(subtypeName) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(subtypeName)) {
                    str = "M-" + subtypeName;
                }
            } else if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
                m3014b("WIFI-ID-UNKNOWN");
                return;
            }
        }
        m3014b(str);
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2985a(String str) {
        if (!TextUtils.isEmpty(str)) {
            m3014b("W-" + str);
        }
        if (TextUtils.isEmpty(this.f21479b)) {
            return;
        }
        ((AbstractC6136eu) this).f21474a = true;
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: b */
    public void mo2982b() {
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: c */
    public void mo2979c() {
        ((AbstractC6136eu) this).f21474a = false;
        m3045a(false, 0L);
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: d */
    public void mo2978d() {
        ((AbstractC6136eu) this).f21474a = false;
        m3045a(true, 0L);
    }
}
