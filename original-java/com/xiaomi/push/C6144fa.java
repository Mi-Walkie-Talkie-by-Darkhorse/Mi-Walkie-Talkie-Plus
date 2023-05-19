package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.amap.api.fence.GeoFence;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.umeng.analytics.pro.UContent;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.C6338a;
import com.xiaomi.push.service.C6372ax;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* renamed from: com.xiaomi.push.fa */
/* loaded from: classes2.dex */
public class C6144fa extends AbstractC6136eu {

    /* renamed from: a */
    private int f21484a;

    /* renamed from: a */
    private final AtomicInteger f21485a;

    /* renamed from: b */
    private long f21486b;

    /* renamed from: b */
    private String f21487b;

    /* renamed from: b */
    private final AtomicInteger f21488b;

    /* renamed from: c */
    private String f21489c;

    /* renamed from: c */
    private final AtomicInteger f21490c;

    /* renamed from: c */
    private volatile boolean f21491c;

    /* renamed from: d */
    private final boolean f21492d;

    /* renamed from: e */
    private final boolean f21493e;

    public C6144fa(Context context) {
        super(context);
        this.f21485a = new AtomicInteger(0);
        this.f21487b = null;
        this.f21491c = false;
        this.f21489c = null;
        this.f21488b = new AtomicInteger(0);
        this.f21490c = new AtomicInteger(0);
        this.f21484a = -1;
        ((AbstractC6136eu) this).f21469a = context;
        this.f21493e = C6306l.m1851a(context);
        this.f21492d = C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatSwitchBoolean.m2484a(), true);
        ((AbstractC6136eu) this).f21470a = ((AbstractC6136eu) this).f21469a.getSharedPreferences("hb_record", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3067c(), -1L) == -1) {
            ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3067c(), currentTimeMillis).apply();
        }
        long j = ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3061i(), -1L);
        this.f21486b = j;
        if (j == -1) {
            this.f21486b = currentTimeMillis;
            ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3061i(), currentTimeMillis).apply();
        }
        AbstractC5876b.m4147a("[Policy] Wifi Fixed Short policy");
    }

    /* renamed from: a */
    private int m3010a() {
        if (TextUtils.isEmpty(this.f21487b)) {
            return -1;
        }
        try {
            return ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3070a(this.f21487b), -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: a */
    private void m3006a(boolean z) {
        if (m2996e()) {
            int incrementAndGet = (z ? this.f21488b : this.f21490c).incrementAndGet();
            Object[] objArr = new Object[2];
            objArr[0] = z ? "short" : "long";
            objArr[1] = Integer.valueOf(incrementAndGet);
            AbstractC5876b.m4141b(String.format("[HB] %s ping interval count: %s", objArr));
            if (incrementAndGet >= 5) {
                String m3066d = z ? C6132eq.m3066d() : C6132eq.m3065e();
                int i = ((AbstractC6136eu) this).f21470a.getInt(m3066d, 0) + incrementAndGet;
                ((AbstractC6136eu) this).f21470a.edit().putInt(m3066d, i).apply();
                Object[] objArr2 = new Object[2];
                objArr2[0] = z ? "short" : "long";
                objArr2[1] = Integer.valueOf(i);
                AbstractC5876b.m4147a(String.format("[HB] accumulate %s hb count(%s) and write to file. ", objArr2));
                (z ? this.f21488b : this.f21490c).set(0);
            }
        }
    }

    /* renamed from: a */
    private boolean m3009a() {
        return (TextUtils.isEmpty(this.f21487b) || !this.f21487b.startsWith("M-") || C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatUseInMobileNetworkBoolean.m2484a(), false)) ? false : true;
    }

    /* renamed from: a */
    private boolean m3007a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("W-") || str.startsWith("M-");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3004b(String str) {
        int i;
        SharedPreferences.Editor remove;
        if ("WIFI-ID-UNKNOWN".equals(str)) {
            String str2 = this.f21487b;
            if (str2 == null || !str2.startsWith("W-")) {
                str = null;
            }
            String str3 = this.f21487b;
            ((AbstractC6136eu) this).f21473a = str3;
            i = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3070a(str3), -1);
            long j = ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3068b(this.f21487b), -1L);
            long currentTimeMillis = System.currentTimeMillis();
            if (i != -1) {
                if (j == -1) {
                    remove = ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3068b(this.f21487b), currentTimeMillis + m3003c());
                } else if (currentTimeMillis > j) {
                    remove = ((AbstractC6136eu) this).f21470a.edit().remove(C6132eq.m3070a(this.f21487b)).remove(C6132eq.m3068b(this.f21487b));
                }
                remove.apply();
            }
            this.f21485a.getAndSet(0);
            if (TextUtils.isEmpty(this.f21487b) && m3010a() == -1) {
                this.f21491c = true;
            } else {
                this.f21491c = false;
            }
            AbstractC5876b.m4147a(String.format("[HB] network changed, netid:%s, %s", this.f21487b, Boolean.valueOf(this.f21491c)));
        }
        this.f21487b = str;
        String str32 = this.f21487b;
        ((AbstractC6136eu) this).f21473a = str32;
        i = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3070a(str32), -1);
        long j2 = ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3068b(this.f21487b), -1L);
        long currentTimeMillis2 = System.currentTimeMillis();
        if (i != -1) {
        }
        this.f21485a.getAndSet(0);
        if (TextUtils.isEmpty(this.f21487b)) {
        }
        this.f21491c = false;
        AbstractC5876b.m4147a(String.format("[HB] network changed, netid:%s, %s", this.f21487b, Boolean.valueOf(this.f21491c)));
    }

    /* renamed from: b */
    private boolean m3005b() {
        return this.f21485a.get() >= Math.max(C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1534a(EnumC6243ia.IntelligentHeartbeatNATCountInt.m2484a(), 5), 3);
    }

    /* renamed from: c */
    private long m3003c() {
        return C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1533a(EnumC6243ia.ShortHeartbeatEffectivePeriodMsLong.m2484a(), 777600000L);
    }

    /* renamed from: c */
    private void m3001c(String str) {
        if (m3007a(str)) {
            ((AbstractC6136eu) this).f21470a.edit().putInt(C6132eq.m3070a(str), 235000).apply();
            ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3068b(this.f21487b), System.currentTimeMillis() + m3003c()).apply();
        }
    }

    /* renamed from: c */
    private boolean m3002c() {
        long j = ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3067c(), -1L);
        if (j == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return j > currentTimeMillis || currentTimeMillis - j >= 259200000;
    }

    /* renamed from: d */
    private long m3000d() {
        return ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3060j(), -1L);
    }

    /* renamed from: d */
    private void m2998d(String str) {
        String str2;
        String str3;
        if (m2996e() && !TextUtils.isEmpty(str)) {
            if (str.startsWith("W-")) {
                str2 = "W";
            } else if (!str.startsWith("M-")) {
                return;
            } else {
                str2 = "M";
            }
            String valueOf = String.valueOf(235000);
            String valueOf2 = String.valueOf(System.currentTimeMillis() / 1000);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(":::");
            sb.append(str2);
            sb.append(":::");
            sb.append(valueOf);
            sb.append(":::");
            sb.append(valueOf2);
            String string = ((AbstractC6136eu) this).f21470a.getString(C6132eq.m3064f(), null);
            if (TextUtils.isEmpty(string)) {
                str3 = sb.toString();
            } else {
                str3 = string + "###" + sb.toString();
            }
            ((AbstractC6136eu) this).f21470a.edit().putString(C6132eq.m3064f(), str3).apply();
        }
    }

    /* renamed from: d */
    private boolean m2999d() {
        if (this.f21486b == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f21486b;
        return j > currentTimeMillis || currentTimeMillis - j >= 259200000;
    }

    /* renamed from: e */
    private void m2997e() {
        if (((AbstractC6136eu) this).f21470a.getBoolean(C6132eq.m3071a(), false)) {
            return;
        }
        ((AbstractC6136eu) this).f21470a.edit().putBoolean(C6132eq.m3071a(), true).apply();
    }

    /* renamed from: e */
    private boolean m2996e() {
        return m2994f() && C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatDataCollectSwitchBoolean.m2484a(), true) && EnumC6310p.China.name().equals(C6338a.m1718a(((AbstractC6136eu) this).f21469a).m1719a());
    }

    /* renamed from: f */
    private void m2995f() {
        int i;
        String[] split;
        String[] split2;
        if (m2996e()) {
            String string = ((AbstractC6136eu) this).f21470a.getString(C6132eq.m3064f(), null);
            char c = 1;
            char c2 = 0;
            if (!TextUtils.isEmpty(string) && (split = string.split("###")) != null) {
                int i2 = 0;
                while (i2 < split.length) {
                    if (!TextUtils.isEmpty(split[i2]) && (split2 = split[i2].split(":::")) != null && split2.length >= 4) {
                        String str = split2[c2];
                        String str2 = split2[c];
                        String str3 = split2[2];
                        String str4 = split2[3];
                        HashMap hashMap = new HashMap();
                        hashMap.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "change");
                        hashMap.put("model", Build.MODEL);
                        hashMap.put("net_type", str2);
                        hashMap.put("net_name", str);
                        hashMap.put(UMCommonContent.f19364aR, str3);
                        hashMap.put("timestamp", str4);
                        C6139ew.m3018a(((AbstractC6136eu) this).f21469a, "category_hb_change", null, hashMap);
                        AbstractC5876b.m4147a("[HB] report hb changed events.");
                    }
                    i2++;
                    c = 1;
                    c2 = 0;
                }
                ((AbstractC6136eu) this).f21470a.edit().remove(C6132eq.m3064f()).apply();
            }
            if (((AbstractC6136eu) this).f21470a.getBoolean(C6132eq.m3071a(), false) && !((AbstractC6136eu) this).f21470a.getBoolean(C6132eq.m3069b(), false)) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "support");
                hashMap2.put("model", Build.MODEL);
                hashMap2.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
                C6139ew.m3018a(((AbstractC6136eu) this).f21469a, "category_hb_change", null, hashMap2);
                AbstractC5876b.m4147a("[HB] report support wifi digest events.");
                ((AbstractC6136eu) this).f21470a.edit().putBoolean(C6132eq.m3069b(), true).apply();
            }
            if (m3002c()) {
                int i3 = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3066d(), 0);
                int i4 = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3065e(), 0);
                if (i3 > 0 || i4 > 0) {
                    long j = ((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3067c(), -1L);
                    String valueOf = String.valueOf(235000);
                    String valueOf2 = String.valueOf(j);
                    String valueOf3 = String.valueOf(System.currentTimeMillis());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(UMCommonContent.f19364aR, valueOf);
                        jSONObject.put("c_short", String.valueOf(i3));
                        jSONObject.put("c_long", String.valueOf(i4));
                        jSONObject.put("count", String.valueOf(i3 + i4));
                        jSONObject.put(UContent.f19711p, valueOf2);
                        jSONObject.put(UContent.f19712q, valueOf3);
                        String jSONObject2 = jSONObject.toString();
                        HashMap hashMap3 = new HashMap();
                        hashMap3.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "long_and_short_hb_count");
                        C6139ew.m3018a(((AbstractC6136eu) this).f21469a, "category_hb_count", jSONObject2, hashMap3);
                        AbstractC5876b.m4147a("[HB] report short/long hb count events.");
                    } catch (Throwable unused) {
                    }
                }
                ((AbstractC6136eu) this).f21470a.edit().putInt(C6132eq.m3066d(), 0).putInt(C6132eq.m3065e(), 0).putLong(C6132eq.m3067c(), System.currentTimeMillis()).apply();
            }
            if (m2999d()) {
                String valueOf4 = String.valueOf(this.f21486b);
                String valueOf5 = String.valueOf(System.currentTimeMillis());
                int i5 = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3063g(), 0);
                if (i5 > 0) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("net_type", "M");
                        jSONObject3.put("ptc", i5);
                        jSONObject3.put(UContent.f19711p, valueOf4);
                        jSONObject3.put(UContent.f19712q, valueOf5);
                        String jSONObject4 = jSONObject3.toString();
                        HashMap hashMap4 = new HashMap();
                        hashMap4.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "ptc_event");
                        C6139ew.m3018a(((AbstractC6136eu) this).f21469a, "category_lc_ptc", jSONObject4, hashMap4);
                        AbstractC5876b.m4147a("[HB] report ping timeout count events of mobile network.");
                        ((AbstractC6136eu) this).f21470a.edit().putInt(C6132eq.m3063g(), 0).apply();
                    } catch (Throwable unused2) {
                        i = 0;
                        ((AbstractC6136eu) this).f21470a.edit().putInt(C6132eq.m3063g(), 0).apply();
                    }
                }
                i = 0;
                int i6 = ((AbstractC6136eu) this).f21470a.getInt(C6132eq.m3062h(), i);
                if (i6 > 0) {
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("net_type", "W");
                        jSONObject5.put("ptc", i6);
                        jSONObject5.put(UContent.f19711p, valueOf4);
                        jSONObject5.put(UContent.f19712q, valueOf5);
                        String jSONObject6 = jSONObject5.toString();
                        HashMap hashMap5 = new HashMap();
                        hashMap5.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "ptc_event");
                        C6139ew.m3018a(((AbstractC6136eu) this).f21469a, "category_lc_ptc", jSONObject6, hashMap5);
                        AbstractC5876b.m4147a("[HB] report ping timeout count events of wifi network.");
                    } catch (Throwable unused3) {
                    }
                    ((AbstractC6136eu) this).f21470a.edit().putInt(C6132eq.m3062h(), 0).apply();
                }
                this.f21486b = System.currentTimeMillis();
                ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3061i(), this.f21486b).apply();
            }
        }
    }

    /* renamed from: f */
    private boolean m2994f() {
        return this.f21493e && (this.f21492d || ((m3000d() > System.currentTimeMillis() ? 1 : (m3000d() == System.currentTimeMillis() ? 0 : -1)) >= 0));
    }

    /* renamed from: g */
    private void m2993g() {
        int i = this.f21484a;
        String m3062h = i != 0 ? i != 1 ? null : C6132eq.m3062h() : C6132eq.m3063g();
        if (TextUtils.isEmpty(m3062h)) {
            return;
        }
        if (((AbstractC6136eu) this).f21470a.getLong(C6132eq.m3061i(), -1L) == -1) {
            this.f21486b = System.currentTimeMillis();
            ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3061i(), this.f21486b).apply();
        }
        ((AbstractC6136eu) this).f21470a.edit().putInt(m3062h, ((AbstractC6136eu) this).f21470a.getInt(m3062h, 0) + 1).apply();
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public long mo2992a() {
        int m3010a;
        long m2722b = C6198gp.m2722b();
        if (this.f21493e && !m3009a() && ((C6372ax.m1530a(((AbstractC6136eu) this).f21469a).m1531a(EnumC6243ia.IntelligentHeartbeatSwitchBoolean.m2484a(), true) || m3000d() >= System.currentTimeMillis()) && (m3010a = m3010a()) != -1)) {
            m2722b = m3010a;
        }
        if (!TextUtils.isEmpty(this.f21487b) && !"WIFI-ID-UNKNOWN".equals(this.f21487b) && this.f21484a == 1) {
            m3006a(m2722b < Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL);
        }
        AbstractC5876b.m4147a("[HB] ping interval:" + m2722b);
        ((AbstractC6136eu) this).f21468a = m2722b;
        return m2722b;
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public void mo2991a() {
        super.mo2991a();
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public void mo3008a(int i) {
        ((AbstractC6136eu) this).f21470a.edit().putLong(C6132eq.m3060j(), System.currentTimeMillis() + (i * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER)).apply();
    }

    @Override // com.xiaomi.push.InterfaceC6130eo
    /* renamed from: a */
    public void mo2989a(long j) {
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2986a(NetworkInfo networkInfo) {
        if (m2994f()) {
            String str = null;
            if (networkInfo != null) {
                if (networkInfo.getType() == 0) {
                    String subtypeName = networkInfo.getSubtypeName();
                    if (!TextUtils.isEmpty(subtypeName) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(subtypeName)) {
                        str = "M-" + subtypeName;
                    }
                    m3004b(str);
                    this.f21484a = 0;
                    return;
                } else if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
                    m3004b("WIFI-ID-UNKNOWN");
                    this.f21484a = 1;
                    return;
                }
            }
            m3004b(null);
            this.f21484a = -1;
        }
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2985a(String str) {
        if (!TextUtils.isEmpty(str)) {
            m2997e();
        }
        if (!m2994f() || TextUtils.isEmpty(str)) {
            return;
        }
        m3004b("W-" + str);
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: b */
    public void mo2982b() {
        if (m2994f()) {
            this.f21489c = this.f21487b;
        }
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: c */
    public void mo2979c() {
        if (m2994f()) {
            m2995f();
            if (this.f21491c) {
                this.f21485a.getAndSet(0);
            }
        }
        m3045a(false, 0L);
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: d */
    public void mo2978d() {
        if (m2994f()) {
            m2993g();
            if (this.f21491c && !TextUtils.isEmpty(this.f21487b) && this.f21487b.equals(this.f21489c)) {
                this.f21485a.getAndIncrement();
                AbstractC5876b.m4147a("[HB] ping timeout count:" + this.f21485a);
                if (m3005b()) {
                    AbstractC5876b.m4147a("[HB] change hb interval for net:" + this.f21487b);
                    m3001c(this.f21487b);
                    this.f21491c = false;
                    this.f21485a.getAndSet(0);
                    m2998d(this.f21487b);
                }
            }
        }
        m3045a(true, 0L);
    }
}
