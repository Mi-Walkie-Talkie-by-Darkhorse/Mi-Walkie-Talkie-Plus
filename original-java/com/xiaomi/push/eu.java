package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.service.a;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.receivers.BatteryReceiver;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class eu implements eo, ex, ey {

    /* renamed from: a  reason: collision with other field name */
    public Context f313a;

    /* renamed from: a  reason: collision with other field name */
    public SharedPreferences f314a;

    /* renamed from: a  reason: collision with other field name */
    public er f315a;

    /* renamed from: a  reason: collision with other field name */
    public es f316a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f8916b;

    /* renamed from: a  reason: collision with other field name */
    public volatile boolean f318a = false;

    /* renamed from: a  reason: collision with other field name */
    public String f317a = "";

    /* renamed from: a  reason: collision with root package name */
    public long f8915a = -1;

    public eu(Context context) {
        this.f313a = context;
        this.f8916b = l.m528a(context);
        this.f314a = this.f313a.getSharedPreferences("hb_record", 0);
    }

    private int a() {
        if (TextUtils.isEmpty(this.f317a)) {
            return -1;
        }
        try {
            return this.f314a.getInt(eq.a(this.f317a), -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m238a() {
        return l.m528a(this.f313a) && ax.a(this.f313a).a(ia.HeartbeatDataComparisonCollectSwitchBoolean.a(), true) && p.China.name().equals(a.a(this.f313a).a());
    }

    private boolean a(String str) {
        es esVar = this.f316a;
        if (esVar == null || !esVar.f308a.equals(this.f317a)) {
            return false;
        }
        es esVar2 = this.f316a;
        return esVar2.f8911a == ep.f8907a && esVar2.f307a == this.f8915a && esVar2.f309a == TextUtils.isEmpty(str) && this.f316a.f311b.equals(str);
    }

    private boolean b() {
        er erVar = this.f315a;
        if (erVar == null || !erVar.f304a.equals(this.f317a)) {
            return false;
        }
        er erVar2 = this.f315a;
        return erVar2.f8908a == ep.f8907a && erVar2.f303a == this.f8915a;
    }

    private long c() {
        return this.f314a.getLong(eq.j(), -1L);
    }

    /* renamed from: c  reason: collision with other method in class */
    private boolean m239c() {
        return !TextUtils.isEmpty(this.f317a) && this.f317a.startsWith("M-") && !ax.a(this.f313a).a(ia.IntelligentHeartbeatUseInMobileNetworkBoolean.a(), false);
    }

    private void e() {
        if (this.f315a != null) {
            int i = (((this.f315a.f305b + 259200000) - System.currentTimeMillis()) > 0L ? 1 : (((this.f315a.f305b + 259200000) - System.currentTimeMillis()) == 0L ? 0 : -1));
            ev a2 = ev.a(this.f313a);
            if (i > 0) {
                a2.a(this.f315a);
                return;
            }
            ew.b(this.f313a, a2.b(this.f316a.f308a));
            ev.a(this.f313a).a("pingpong", this.f317a);
            f();
        }
    }

    private void f() {
        er erVar = this.f315a;
        if (erVar != null) {
            erVar.f305b = System.currentTimeMillis();
            er erVar2 = this.f315a;
            erVar2.f8910c = 0;
            erVar2.f8909b = 0;
            erVar2.f306c = 0L;
        }
    }

    private void g() {
        es esVar = this.f316a;
        if (esVar != null) {
            esVar.f310b = System.currentTimeMillis();
            es esVar2 = this.f316a;
            esVar2.f8913c = 0L;
            esVar2.f8912b = 0;
        }
    }

    private void h() {
        int i = (((this.f316a.f310b + 259200000) - System.currentTimeMillis()) > 0L ? 1 : (((this.f316a.f310b + 259200000) - System.currentTimeMillis()) == 0L ? 0 : -1));
        ev a2 = ev.a(this.f313a);
        es esVar = this.f316a;
        if (i > 0) {
            a2.a(esVar);
            return;
        }
        List<es> a3 = a2.m244a(esVar.f308a);
        a3.add(this.f316a);
        ew.a(this.f313a, a3);
        ev.a(this.f313a).a("wakeup", this.f317a);
        g();
    }

    /* renamed from: a  reason: collision with other method in class */
    public abstract long m240a();

    /* renamed from: a  reason: collision with other method in class */
    public void m241a() {
        if (m238a() && !this.f318a && !TextUtils.isEmpty(this.f317a)) {
            String str = "";
            String str2 = i.m370b(this.f313a) ? "screen_on" : str;
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            if (BatteryReceiver.f9354a) {
                str = "Charging";
            }
            sb.append(str);
            String sb2 = sb.toString();
            if (this.f316a == null || !a(sb2)) {
                this.f316a = ev.a(this.f313a).a(this.f317a, ep.f8907a, this.f8915a, TextUtils.isEmpty(sb2), sb2);
            }
            es esVar = this.f316a;
            if (esVar == null) {
                es esVar2 = new es();
                this.f316a = esVar2;
                esVar2.f308a = this.f317a;
                esVar2.f8911a = ep.f8907a;
                esVar2.f307a = this.f8915a;
                esVar2.f310b = System.currentTimeMillis();
                es esVar3 = this.f316a;
                esVar3.f8913c = 0L;
                esVar3.f309a = TextUtils.isEmpty(sb2);
                es esVar4 = this.f316a;
                esVar4.f8912b = 1;
                esVar4.f311b = sb2;
            } else {
                esVar.f8913c += esVar.f307a;
                esVar.f8912b++;
            }
            h();
        }
    }

    public void a(int i) {
        this.f314a.edit().putLong(eq.j(), System.currentTimeMillis() + (i * 1000)).apply();
    }

    public void a(boolean z, long j) {
        if (m238a() && !TextUtils.isEmpty(this.f317a) && !this.f318a) {
            if (this.f315a == null || !b()) {
                this.f315a = ev.a(this.f313a).a(this.f317a, ep.f8907a, this.f8915a);
            }
            er erVar = this.f315a;
            if (erVar == null) {
                er erVar2 = new er();
                this.f315a = erVar2;
                erVar2.f304a = this.f317a;
                erVar2.f8908a = ep.f8907a;
                erVar2.f303a = this.f8915a;
                erVar2.f305b = System.currentTimeMillis();
                er erVar3 = this.f315a;
                erVar3.f306c = 0L;
                erVar3.f8909b = z ? 1 : 0;
                erVar3.f8910c = !z ? 1 : 0;
                erVar3.d = j;
            } else {
                erVar.f306c += (int) this.f8915a;
                if (z) {
                    erVar.f8909b++;
                } else {
                    erVar.f8910c++;
                }
            }
            e();
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: b  reason: collision with other method in class */
    public long mo242b() {
        int a2;
        if (!l.m527a() || m239c()) {
            return 600000L;
        }
        if ((!ax.a(this.f313a).a(ia.IntelligentHeartbeatSwitchBoolean.a(), true) && c() < System.currentTimeMillis()) || (a2 = a()) == -1) {
            return 600000L;
        }
        long j = a2;
        this.f8915a = j;
        return j;
    }
}
