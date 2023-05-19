package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.push.service.C6338a;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.receivers.BatteryReceiver;
import java.util.List;

/* renamed from: com.xiaomi.push.eu */
/* loaded from: classes2.dex */
public abstract class AbstractC6136eu implements InterfaceC6130eo, InterfaceC6140ex, InterfaceC6141ey {

    /* renamed from: a */
    public Context f21469a;

    /* renamed from: a */
    public SharedPreferences f21470a;

    /* renamed from: a */
    public C6133er f21471a;

    /* renamed from: a */
    public C6134es f21472a;

    /* renamed from: b */
    public boolean f21475b;

    /* renamed from: a */
    public volatile boolean f21474a = false;

    /* renamed from: a */
    public String f21473a = "";

    /* renamed from: a */
    public long f21468a = -1;

    public AbstractC6136eu(Context context) {
        this.f21469a = context;
        this.f21475b = C6306l.m1851a(context);
        this.f21470a = this.f21469a.getSharedPreferences("hb_record", 0);
    }

    /* renamed from: a */
    private int m3048a() {
        if (TextUtils.isEmpty(this.f21473a)) {
            return -1;
        }
        try {
            return this.f21470a.getInt(C6132eq.m3070a(this.f21473a), -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: a */
    private boolean m3047a() {
        return C6306l.m1851a(this.f21469a) && C6372ax.m1530a(this.f21469a).m1531a(EnumC6243ia.HeartbeatDataComparisonCollectSwitchBoolean.m2484a(), true) && EnumC6310p.China.name().equals(C6338a.m1718a(this.f21469a).m1719a());
    }

    /* renamed from: a */
    private boolean m3046a(String str) {
        C6134es c6134es = this.f21472a;
        if (c6134es != null && c6134es.f21460a.equals(this.f21473a)) {
            C6134es c6134es2 = this.f21472a;
            return c6134es2.f21458a == C6131ep.f21449a && c6134es2.f21459a == this.f21468a && c6134es2.f21461a == TextUtils.isEmpty(str) && this.f21472a.f21464b.equals(str);
        }
        return false;
    }

    /* renamed from: b */
    private boolean m3044b() {
        C6133er c6133er = this.f21471a;
        if (c6133er != null && c6133er.f21452a.equals(this.f21473a)) {
            C6133er c6133er2 = this.f21471a;
            return c6133er2.f21450a == C6131ep.f21449a && c6133er2.f21451a == this.f21468a;
        }
        return false;
    }

    /* renamed from: c */
    private long m3043c() {
        return this.f21470a.getLong(C6132eq.m3060j(), -1L);
    }

    /* renamed from: c */
    private boolean m3042c() {
        return (TextUtils.isEmpty(this.f21473a) || !this.f21473a.startsWith("M-") || C6372ax.m1530a(this.f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatUseInMobileNetworkBoolean.m2484a(), false)) ? false : true;
    }

    /* renamed from: e */
    private void m3041e() {
        if (this.f21471a != null) {
            int i = (((this.f21471a.f21454b + 259200000) - System.currentTimeMillis()) > 0L ? 1 : (((this.f21471a.f21454b + 259200000) - System.currentTimeMillis()) == 0L ? 0 : -1));
            C6137ev m3037a = C6137ev.m3037a(this.f21469a);
            if (i > 0) {
                m3037a.m3036a(this.f21471a);
                return;
            }
            C6139ew.m3015b(this.f21469a, m3037a.m3020b(this.f21472a.f21460a));
            C6137ev.m3037a(this.f21469a).m3024a("pingpong", this.f21473a);
            m3040f();
        }
    }

    /* renamed from: f */
    private void m3040f() {
        C6133er c6133er = this.f21471a;
        if (c6133er == null) {
            return;
        }
        c6133er.f21454b = System.currentTimeMillis();
        C6133er c6133er2 = this.f21471a;
        c6133er2.f21455c = 0;
        c6133er2.f21453b = 0;
        c6133er2.f21456c = 0L;
    }

    /* renamed from: g */
    private void m3039g() {
        C6134es c6134es = this.f21472a;
        if (c6134es == null) {
            return;
        }
        c6134es.f21463b = System.currentTimeMillis();
        C6134es c6134es2 = this.f21472a;
        c6134es2.f21465c = 0L;
        c6134es2.f21462b = 0;
    }

    /* renamed from: h */
    private void m3038h() {
        int i = (((this.f21472a.f21463b + 259200000) - System.currentTimeMillis()) > 0L ? 1 : (((this.f21472a.f21463b + 259200000) - System.currentTimeMillis()) == 0L ? 0 : -1));
        C6137ev m3037a = C6137ev.m3037a(this.f21469a);
        C6134es c6134es = this.f21472a;
        if (i > 0) {
            m3037a.m3035a(c6134es);
            return;
        }
        List<C6134es> m3031a = m3037a.m3031a(c6134es.f21460a);
        m3031a.add(this.f21472a);
        C6139ew.m3017a(this.f21469a, m3031a);
        C6137ev.m3037a(this.f21469a).m3024a("wakeup", this.f21473a);
        m3039g();
    }

    /* renamed from: a */
    public abstract long mo2992a();

    /* renamed from: a */
    public void mo2991a() {
        if (!m3047a() || this.f21474a || TextUtils.isEmpty(this.f21473a)) {
            return;
        }
        String str = C6242i.m2502b(this.f21469a) ? "screen_on" : "";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(BatteryReceiver.f23226a ? "Charging" : "");
        String sb2 = sb.toString();
        if (this.f21472a == null || !m3046a(sb2)) {
            this.f21472a = C6137ev.m3037a(this.f21469a).m3028a(this.f21473a, C6131ep.f21449a, this.f21468a, TextUtils.isEmpty(sb2), sb2);
        }
        C6134es c6134es = this.f21472a;
        if (c6134es == null) {
            C6134es c6134es2 = new C6134es();
            this.f21472a = c6134es2;
            c6134es2.f21460a = this.f21473a;
            c6134es2.f21458a = C6131ep.f21449a;
            c6134es2.f21459a = this.f21468a;
            c6134es2.f21463b = System.currentTimeMillis();
            C6134es c6134es3 = this.f21472a;
            c6134es3.f21465c = 0L;
            c6134es3.f21461a = TextUtils.isEmpty(sb2);
            C6134es c6134es4 = this.f21472a;
            c6134es4.f21462b = 1;
            c6134es4.f21464b = sb2;
        } else {
            c6134es.f21465c += c6134es.f21459a;
            c6134es.f21462b++;
        }
        m3038h();
    }

    /* renamed from: a */
    public void mo3008a(int i) {
        this.f21470a.edit().putLong(C6132eq.m3060j(), System.currentTimeMillis() + (i * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER)).apply();
    }

    /* renamed from: a */
    public void m3045a(boolean z, long j) {
        if (!m3047a() || TextUtils.isEmpty(this.f21473a) || this.f21474a) {
            return;
        }
        if (this.f21471a == null || !m3044b()) {
            this.f21471a = C6137ev.m3037a(this.f21469a).m3029a(this.f21473a, C6131ep.f21449a, this.f21468a);
        }
        C6133er c6133er = this.f21471a;
        if (c6133er == null) {
            C6133er c6133er2 = new C6133er();
            this.f21471a = c6133er2;
            c6133er2.f21452a = this.f21473a;
            c6133er2.f21450a = C6131ep.f21449a;
            c6133er2.f21451a = this.f21468a;
            c6133er2.f21454b = System.currentTimeMillis();
            C6133er c6133er3 = this.f21471a;
            c6133er3.f21456c = 0L;
            c6133er3.f21453b = z ? 1 : 0;
            c6133er3.f21455c = !z ? 1 : 0;
            c6133er3.f21457d = j;
        } else {
            c6133er.f21456c += (int) this.f21468a;
            if (z) {
                c6133er.f21453b++;
            } else {
                c6133er.f21455c++;
            }
        }
        m3041e();
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: b */
    public long mo2982b() {
        int m3048a;
        if (!C6306l.m1853a() || m3042c()) {
            return 600000L;
        }
        if ((C6372ax.m1530a(this.f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatSwitchBoolean.m2484a(), true) || m3043c() >= System.currentTimeMillis()) && (m3048a = m3048a()) != -1) {
            long j = m3048a;
            this.f21468a = j;
            return j;
        }
        return 600000L;
    }
}
