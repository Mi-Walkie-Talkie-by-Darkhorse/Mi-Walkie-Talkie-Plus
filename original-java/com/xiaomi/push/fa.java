package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.amap.api.fence.GeoFence;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.c;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.a;
import com.xiaomi.push.service.ax;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class fa extends eu {

    /* renamed from: b  reason: collision with root package name */
    private long f8923b;
    private final boolean e;

    /* renamed from: a  reason: collision with other field name */
    private final AtomicInteger f321a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with other field name */
    private String f322b = null;

    /* renamed from: c  reason: collision with other field name */
    private volatile boolean f325c = false;

    /* renamed from: c  reason: collision with root package name */
    private String f8924c = null;

    /* renamed from: b  reason: collision with other field name */
    private final AtomicInteger f323b = new AtomicInteger(0);

    /* renamed from: c  reason: collision with other field name */
    private final AtomicInteger f324c = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    private int f8922a = -1;
    private final boolean d = ax.a(((eu) this).f313a).a(ia.IntelligentHeartbeatSwitchBoolean.a(), true);

    public fa(Context context) {
        super(context);
        ((eu) this).f313a = context;
        this.e = l.m528a(context);
        ((eu) this).f314a = ((eu) this).f313a.getSharedPreferences("hb_record", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (((eu) this).f314a.getLong(eq.c(), -1L) == -1) {
            ((eu) this).f314a.edit().putLong(eq.c(), currentTimeMillis).apply();
        }
        long j = ((eu) this).f314a.getLong(eq.i(), -1L);
        this.f8923b = j;
        if (j == -1) {
            this.f8923b = currentTimeMillis;
            ((eu) this).f314a.edit().putLong(eq.i(), currentTimeMillis).apply();
        }
        b.m1a("[Policy] Wifi Fixed Short policy");
    }

    private int a() {
        if (TextUtils.isEmpty(this.f322b)) {
            return -1;
        }
        try {
            return ((eu) this).f314a.getInt(eq.a(this.f322b), -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private void a(boolean z) {
        if (m251e()) {
            int incrementAndGet = (z ? this.f323b : this.f324c).incrementAndGet();
            Object[] objArr = new Object[2];
            String str = "short";
            objArr[0] = z ? str : "long";
            objArr[1] = Integer.valueOf(incrementAndGet);
            b.b(String.format("[HB] %s ping interval count: %s", objArr));
            if (incrementAndGet >= 5) {
                String d = z ? eq.d() : eq.e();
                int i = ((eu) this).f314a.getInt(d, 0) + incrementAndGet;
                ((eu) this).f314a.edit().putInt(d, i).apply();
                Object[] objArr2 = new Object[2];
                if (!z) {
                    str = "long";
                }
                objArr2[0] = str;
                objArr2[1] = Integer.valueOf(i);
                b.m1a(String.format("[HB] accumulate %s hb count(%s) and write to file. ", objArr2));
                (z ? this.f323b : this.f324c).set(0);
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m248a() {
        return !TextUtils.isEmpty(this.f322b) && this.f322b.startsWith("M-") && !ax.a(((eu) this).f313a).a(ia.IntelligentHeartbeatUseInMobileNetworkBoolean.a(), false);
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("W-") || str.startsWith("M-");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.String r0 = "WIFI-ID-UNKNOWN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x0016
            java.lang.String r10 = r9.f322b
            if (r10 == 0) goto L_0x0015
            java.lang.String r0 = "W-"
            boolean r10 = r10.startsWith(r0)
            if (r10 == 0) goto L_0x0015
            goto L_0x0018
        L_0x0015:
            r10 = 0
        L_0x0016:
            r9.f322b = r10
        L_0x0018:
            java.lang.String r10 = r9.f322b
            r9.f317a = r10
            android.content.SharedPreferences r0 = r9.f314a
            java.lang.String r10 = com.xiaomi.push.eq.a(r10)
            r1 = -1
            int r10 = r0.getInt(r10, r1)
            android.content.SharedPreferences r0 = r9.f314a
            java.lang.String r2 = r9.f322b
            java.lang.String r2 = com.xiaomi.push.eq.b(r2)
            r3 = -1
            long r5 = r0.getLong(r2, r3)
            long r7 = java.lang.System.currentTimeMillis()
            if (r10 == r1) goto L_0x0077
            int r10 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r10 != 0) goto L_0x0058
            android.content.SharedPreferences r10 = r9.f314a
            android.content.SharedPreferences$Editor r10 = r10.edit()
            java.lang.String r0 = r9.f322b
            java.lang.String r0 = com.xiaomi.push.eq.b(r0)
            long r2 = r9.c()
            long r7 = r7 + r2
            android.content.SharedPreferences$Editor r10 = r10.putLong(r0, r7)
        L_0x0054:
            r10.apply()
            goto L_0x0077
        L_0x0058:
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 <= 0) goto L_0x0077
            android.content.SharedPreferences r10 = r9.f314a
            android.content.SharedPreferences$Editor r10 = r10.edit()
            java.lang.String r0 = r9.f322b
            java.lang.String r0 = com.xiaomi.push.eq.a(r0)
            android.content.SharedPreferences$Editor r10 = r10.remove(r0)
            java.lang.String r0 = r9.f322b
            java.lang.String r0 = com.xiaomi.push.eq.b(r0)
            android.content.SharedPreferences$Editor r10 = r10.remove(r0)
            goto L_0x0054
        L_0x0077:
            java.util.concurrent.atomic.AtomicInteger r10 = r9.f321a
            r0 = 0
            r10.getAndSet(r0)
            java.lang.String r10 = r9.f322b
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            r2 = 1
            if (r10 != 0) goto L_0x0090
            int r10 = r9.a()
            if (r10 == r1) goto L_0x008d
            goto L_0x0090
        L_0x008d:
            r9.f325c = r2
            goto L_0x0092
        L_0x0090:
            r9.f325c = r0
        L_0x0092:
            r10 = 2
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r1 = r9.f322b
            r10[r0] = r1
            boolean r0 = r9.f325c
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r10[r2] = r0
            java.lang.String r0 = "[HB] network changed, netid:%s, %s"
            java.lang.String r10 = java.lang.String.format(r0, r10)
            com.xiaomi.channel.commonutils.logger.b.m1a(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.fa.b(java.lang.String):void");
    }

    private boolean b() {
        return this.f321a.get() >= Math.max(ax.a(((eu) this).f313a).a(ia.IntelligentHeartbeatNATCountInt.a(), 5), 3);
    }

    private long c() {
        return ax.a(((eu) this).f313a).a(ia.ShortHeartbeatEffectivePeriodMsLong.a(), 777600000L);
    }

    private void c(String str) {
        if (a(str)) {
            ((eu) this).f314a.edit().putInt(eq.a(str), 235000).apply();
            ((eu) this).f314a.edit().putLong(eq.b(this.f322b), System.currentTimeMillis() + c()).apply();
        }
    }

    /* renamed from: c  reason: collision with other method in class */
    private boolean m249c() {
        long j = ((eu) this).f314a.getLong(eq.c(), -1L);
        if (j == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return j > currentTimeMillis || currentTimeMillis - j >= 259200000;
    }

    private long d() {
        return ((eu) this).f314a.getLong(eq.j(), -1L);
    }

    private void d(String str) {
        String str2;
        String str3;
        if (m251e() && !TextUtils.isEmpty(str)) {
            if (str.startsWith("W-")) {
                str2 = "W";
            } else if (str.startsWith("M-")) {
                str2 = "M";
            } else {
                return;
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
            String string = ((eu) this).f314a.getString(eq.f(), null);
            if (TextUtils.isEmpty(string)) {
                str3 = sb.toString();
            } else {
                str3 = string + "###" + sb.toString();
            }
            ((eu) this).f314a.edit().putString(eq.f(), str3).apply();
        }
    }

    /* renamed from: d  reason: collision with other method in class */
    private boolean m250d() {
        if (this.f8923b == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f8923b;
        return j > currentTimeMillis || currentTimeMillis - j >= 259200000;
    }

    private void e() {
        if (!((eu) this).f314a.getBoolean(eq.a(), false)) {
            ((eu) this).f314a.edit().putBoolean(eq.a(), true).apply();
        }
    }

    /* renamed from: e  reason: collision with other method in class */
    private boolean m251e() {
        return m252f() && ax.a(((eu) this).f313a).a(ia.IntelligentHeartbeatDataCollectSwitchBoolean.a(), true) && p.China.name().equals(a.a(((eu) this).f313a).a());
    }

    private void f() {
        int i;
        String[] split;
        String[] split2;
        if (m251e()) {
            String string = ((eu) this).f314a.getString(eq.f(), null);
            char c2 = 1;
            char c3 = 0;
            if (!TextUtils.isEmpty(string) && (split = string.split("###")) != null) {
                int i2 = 0;
                while (i2 < split.length) {
                    if (!TextUtils.isEmpty(split[i2]) && (split2 = split[i2].split(":::")) != null && split2.length >= 4) {
                        String str = split2[c3];
                        String str2 = split2[c2];
                        String str3 = split2[2];
                        String str4 = split2[3];
                        HashMap hashMap = new HashMap();
                        hashMap.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "change");
                        hashMap.put("model", Build.MODEL);
                        hashMap.put("net_type", str2);
                        hashMap.put("net_name", str);
                        hashMap.put(ai.aR, str3);
                        hashMap.put("timestamp", str4);
                        ew.a(((eu) this).f313a, "category_hb_change", null, hashMap);
                        b.m1a("[HB] report hb changed events.");
                    }
                    i2++;
                    c2 = 1;
                    c3 = 0;
                }
                ((eu) this).f314a.edit().remove(eq.f()).apply();
            }
            if (((eu) this).f314a.getBoolean(eq.a(), false) && !((eu) this).f314a.getBoolean(eq.b(), false)) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "support");
                hashMap2.put("model", Build.MODEL);
                hashMap2.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
                ew.a(((eu) this).f313a, "category_hb_change", null, hashMap2);
                b.m1a("[HB] report support wifi digest events.");
                ((eu) this).f314a.edit().putBoolean(eq.b(), true).apply();
            }
            if (m249c()) {
                int i3 = ((eu) this).f314a.getInt(eq.d(), 0);
                int i4 = ((eu) this).f314a.getInt(eq.e(), 0);
                if (i3 > 0 || i4 > 0) {
                    long j = ((eu) this).f314a.getLong(eq.c(), -1L);
                    String valueOf = String.valueOf(235000);
                    String valueOf2 = String.valueOf(j);
                    String valueOf3 = String.valueOf(System.currentTimeMillis());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(ai.aR, valueOf);
                        jSONObject.put("c_short", String.valueOf(i3));
                        jSONObject.put("c_long", String.valueOf(i4));
                        jSONObject.put("count", String.valueOf(i3 + i4));
                        jSONObject.put(c.p, valueOf2);
                        jSONObject.put(c.q, valueOf3);
                        String jSONObject2 = jSONObject.toString();
                        HashMap hashMap3 = new HashMap();
                        hashMap3.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "long_and_short_hb_count");
                        ew.a(((eu) this).f313a, "category_hb_count", jSONObject2, hashMap3);
                        b.m1a("[HB] report short/long hb count events.");
                    } catch (Throwable unused) {
                    }
                }
                ((eu) this).f314a.edit().putInt(eq.d(), 0).putInt(eq.e(), 0).putLong(eq.c(), System.currentTimeMillis()).apply();
            }
            if (m250d()) {
                String valueOf4 = String.valueOf(this.f8923b);
                String valueOf5 = String.valueOf(System.currentTimeMillis());
                int i5 = ((eu) this).f314a.getInt(eq.g(), 0);
                if (i5 > 0) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("net_type", "M");
                        jSONObject3.put("ptc", i5);
                        jSONObject3.put(c.p, valueOf4);
                        jSONObject3.put(c.q, valueOf5);
                        String jSONObject4 = jSONObject3.toString();
                        HashMap hashMap4 = new HashMap();
                        hashMap4.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "ptc_event");
                        ew.a(((eu) this).f313a, "category_lc_ptc", jSONObject4, hashMap4);
                        b.m1a("[HB] report ping timeout count events of mobile network.");
                        ((eu) this).f314a.edit().putInt(eq.g(), 0).apply();
                    } catch (Throwable unused2) {
                        i = 0;
                        ((eu) this).f314a.edit().putInt(eq.g(), 0).apply();
                    }
                }
                i = 0;
                int i6 = ((eu) this).f314a.getInt(eq.h(), i);
                if (i6 > 0) {
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("net_type", "W");
                        jSONObject5.put("ptc", i6);
                        jSONObject5.put(c.p, valueOf4);
                        jSONObject5.put(c.q, valueOf5);
                        String jSONObject6 = jSONObject5.toString();
                        HashMap hashMap5 = new HashMap();
                        hashMap5.put(GeoFence.BUNDLE_KEY_FENCESTATUS, "ptc_event");
                        ew.a(((eu) this).f313a, "category_lc_ptc", jSONObject6, hashMap5);
                        b.m1a("[HB] report ping timeout count events of wifi network.");
                    } catch (Throwable unused3) {
                    }
                    ((eu) this).f314a.edit().putInt(eq.h(), 0).apply();
                }
                this.f8923b = System.currentTimeMillis();
                ((eu) this).f314a.edit().putLong(eq.i(), this.f8923b).apply();
            }
        }
    }

    /* renamed from: f  reason: collision with other method in class */
    private boolean m252f() {
        return this.e && (this.d || ((d() > System.currentTimeMillis() ? 1 : (d() == System.currentTimeMillis() ? 0 : -1)) >= 0));
    }

    private void g() {
        int i = this.f8922a;
        String h = i != 0 ? i != 1 ? null : eq.h() : eq.g();
        if (!TextUtils.isEmpty(h)) {
            if (((eu) this).f314a.getLong(eq.i(), -1L) == -1) {
                this.f8923b = System.currentTimeMillis();
                ((eu) this).f314a.edit().putLong(eq.i(), this.f8923b).apply();
            }
            ((eu) this).f314a.edit().putInt(h, ((eu) this).f314a.getInt(h, 0) + 1).apply();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m253a() {
        int a2;
        long b2 = gp.b();
        boolean z = true;
        if (this.e && !m248a() && ((ax.a(((eu) this).f313a).a(ia.IntelligentHeartbeatSwitchBoolean.a(), true) || d() >= System.currentTimeMillis()) && (a2 = a()) != -1)) {
            b2 = a2;
        }
        if (!TextUtils.isEmpty(this.f322b) && !"WIFI-ID-UNKNOWN".equals(this.f322b) && this.f8922a == 1) {
            if (b2 >= Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL) {
                z = false;
            }
            a(z);
        }
        b.m1a("[HB] ping interval:" + b2);
        ((eu) this).f8915a = b2;
        return b2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m254a() {
        super.m241a();
    }

    @Override // com.xiaomi.push.eu
    public void a(int i) {
        ((eu) this).f314a.edit().putLong(eq.j(), System.currentTimeMillis() + (i * 1000)).apply();
    }

    @Override // com.xiaomi.push.eo
    /* renamed from: a */
    public void mo260a(long j) {
    }

    @Override // com.xiaomi.push.ex
    public void a(NetworkInfo networkInfo) {
        if (m252f()) {
            String str = null;
            if (networkInfo != null) {
                if (networkInfo.getType() == 0) {
                    String subtypeName = networkInfo.getSubtypeName();
                    if (!TextUtils.isEmpty(subtypeName) && !"UNKNOWN".equalsIgnoreCase(subtypeName)) {
                        str = "M-" + subtypeName;
                    }
                    b(str);
                    this.f8922a = 0;
                    return;
                } else if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
                    b("WIFI-ID-UNKNOWN");
                    this.f8922a = 1;
                    return;
                }
            }
            b(null);
            this.f8922a = -1;
        }
    }

    @Override // com.xiaomi.push.ex
    /* renamed from: a  reason: collision with other method in class */
    public void mo255a(String str) {
        if (!TextUtils.isEmpty(str)) {
            e();
        }
        if (m252f() && !TextUtils.isEmpty(str)) {
            b("W-" + str);
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: b */
    public void mo242b() {
        if (m252f()) {
            this.f8924c = this.f322b;
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: c  reason: collision with other method in class */
    public void mo256c() {
        if (m252f()) {
            f();
            if (this.f325c) {
                this.f321a.getAndSet(0);
            }
        }
        a(false, 0L);
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: d  reason: collision with other method in class */
    public void mo257d() {
        if (m252f()) {
            g();
            if (this.f325c && !TextUtils.isEmpty(this.f322b) && this.f322b.equals(this.f8924c)) {
                this.f321a.getAndIncrement();
                b.m1a("[HB] ping timeout count:" + this.f321a);
                if (b()) {
                    b.m1a("[HB] change hb interval for net:" + this.f322b);
                    c(this.f322b);
                    this.f325c = false;
                    this.f321a.getAndSet(0);
                    d(this.f322b);
                }
            }
        }
        a(true, 0L);
    }
}
