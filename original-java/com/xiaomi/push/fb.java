package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.receivers.BatteryReceiver;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class fb extends eu {

    /* renamed from: c  reason: collision with root package name */
    private boolean f8927c = false;
    private volatile boolean d = true;

    /* renamed from: b  reason: collision with other field name */
    private String f326b = null;

    /* renamed from: b  reason: collision with root package name */
    private long f8926b = 0;

    /* renamed from: a  reason: collision with root package name */
    private a f8925a = new a();

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with other field name */
        String f328a = "";

        /* renamed from: b  reason: collision with other field name */
        String f331b = null;

        /* renamed from: a  reason: collision with root package name */
        int f8928a = -1;

        /* renamed from: a  reason: collision with other field name */
        long f327a = 210000;

        /* renamed from: b  reason: collision with root package name */
        int f8929b = 0;

        /* renamed from: c  reason: collision with root package name */
        int f8930c = 0;

        /* renamed from: a  reason: collision with other field name */
        boolean f329a = false;

        /* renamed from: b  reason: collision with other field name */
        long f330b = 0;

        /* renamed from: b  reason: collision with other field name */
        boolean f332b = false;

        /* renamed from: c  reason: collision with other field name */
        long f333c = 0;

        void a() {
            new a().a(this);
        }

        void a(a aVar) {
            aVar.f328a = this.f328a;
            aVar.f331b = this.f331b;
            aVar.f8928a = this.f8928a;
            aVar.f327a = this.f327a;
            aVar.f8929b = this.f8929b;
            aVar.f8930c = this.f8930c;
            aVar.f329a = this.f329a;
            aVar.f330b = this.f330b;
            aVar.f332b = this.f332b;
            aVar.f333c = this.f333c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(Context context) {
        super(context);
        b.m1a("[Policy] Intelligent policy");
    }

    private long a(boolean z) {
        long j = this.f8925a.f327a;
        long j2 = j % OpenStreetMapTileProviderConstants.ONE_MINUTE;
        if (z) {
            return j <= 210000 ? j : j - 30000;
        }
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        long j3 = (i == 0 || j < 210000) ? j + 30000 : j + OpenStreetMapTileProviderConstants.ONE_MINUTE;
        if (i == 0 || j3 <= 600000) {
            return j3;
        }
        return 600000L;
    }

    private void a(int i, String str) {
        this.f8925a.f8928a = i;
        if ("WIFI-ID-UNKNOWN".equals(str)) {
            String str2 = this.f8925a.f328a;
            if (str2 == null || !str2.startsWith("W-")) {
                this.f8925a.f328a = null;
            }
        } else {
            this.f8925a.f328a = str;
        }
        ((eu) this).f317a = str;
        this.d = !TextUtils.isEmpty(this.f8925a.f328a) && this.f8925a.f8928a != 0;
    }

    private void a(long j, boolean z) {
        a aVar = this.f8925a;
        aVar.f8930c++;
        aVar.f8929b = 0;
        aVar.f327a = j;
        aVar.f332b = !z;
    }

    /* renamed from: a  reason: collision with other method in class */
    private void m258a(boolean z) {
        a aVar;
        int i = 1;
        if (z) {
            aVar = this.f8925a;
        } else {
            aVar = this.f8925a;
            int i2 = aVar.f8929b;
            if (i2 >= 0) {
                i = -1;
            } else {
                aVar.f8929b = i2 - 1;
                return;
            }
        }
        aVar.f8929b = i;
    }

    private boolean a(long j) {
        if (j > 600000) {
            return true;
        }
        return (j < 235000 && this.f8925a.f8929b <= -4) || this.f8925a.f8929b <= -4;
    }

    private void b(long j) {
        a aVar = this.f8925a;
        aVar.f327a = j;
        aVar.f8929b = 0;
        aVar.f8930c = 0;
        aVar.f329a = false;
        aVar.f330b = 0L;
        aVar.f332b = false;
        aVar.f333c = 0L;
    }

    private void b(boolean z) {
        b.m1a("[HB] adjustHeartbeat isTimeOut = " + z);
        a aVar = this.f8925a;
        if (!aVar.f329a) {
            aVar.f333c += aVar.f327a;
            b.m1a("[HB] adjustHeartbeat duration = " + this.f8925a.f333c);
        }
        a aVar2 = this.f8925a;
        if (aVar2.f329a) {
            a(z, aVar2.f333c);
            long currentTimeMillis = System.currentTimeMillis();
            a aVar3 = this.f8925a;
            if ((aVar3.f330b + OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS) - currentTimeMillis <= 0) {
                long j = aVar3.f327a;
                long j2 = j % OpenStreetMapTileProviderConstants.ONE_MINUTE;
                if (j > 235000) {
                    j = j2 == 0 ? j - OpenStreetMapTileProviderConstants.ONE_MINUTE : j - 30000;
                }
                long max = Math.max(j, 210000L);
                b(max);
                fh.a(max - 15000);
                b.m1a("[HB] update Alarm interval = " + max);
                return;
            }
            return;
        }
        long a2 = a(z);
        boolean a3 = a(a2);
        if (a3) {
            a aVar4 = this.f8925a;
            if (aVar4.f8929b <= -4 && a2 > 235000) {
                aVar4.f327a -= 30000;
            }
            a aVar5 = this.f8925a;
            aVar5.f329a = true;
            aVar5.f330b = System.currentTimeMillis();
        }
        b.m1a("[HB] adjustHeartbeat fixed = " + a3 + ", continuousCount = " + this.f8925a.f8929b + ", interval = " + this.f8925a.f327a);
        ev a4 = ev.a(((eu) this).f313a);
        a aVar6 = this.f8925a;
        a4.a(aVar6, a3, aVar6.f327a);
        if (a3) {
            ev.a(((eu) this).f313a).m245a(this.f8925a.f328a);
        } else if (!z || !ev.a(((eu) this).f313a).a(this.f8925a.f328a, a2)) {
            a(a2, z);
            if (a2 > 210000) {
                fh.a(a2 - 15000);
                b.m1a("[HB] update Alarm interval = " + a2);
            }
        }
    }

    private void e() {
        String str;
        a a2 = ev.a(((eu) this).f313a).a(this.f8925a.f328a);
        if (a2 != null) {
            a2.a(this.f8925a);
            str = "[HB] reload interval = " + this.f8925a.f327a;
        } else {
            b(210000L);
            str = "[HB] reload no cache";
        }
        b.m1a(str);
    }

    public long a() {
        if (BatteryReceiver.f9354a) {
            b.m1a("[HB] interval battery");
            return 240000L;
        } else if (!((eu) this).f8916b || !this.d) {
            return mo242b();
        } else {
            ((eu) this).f8915a = this.f8925a.f327a;
            b.m1a("[HB] compute interval = " + this.f8925a.f327a);
            long j = this.f8925a.f327a;
            if (j <= 210000) {
                return 195000L;
            }
            return j - 15000;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m259a() {
        if (this.f8925a.f329a) {
            super.m241a();
        }
    }

    @Override // com.xiaomi.push.eo
    /* renamed from: a  reason: collision with other method in class */
    public void mo260a(long j) {
        if (((eu) this).f8916b && this.d && !this.f8925a.f329a) {
            b.m1a("[HB] onReadOrWrite = ");
            this.f8926b = j;
            if (SystemClock.elapsedRealtime() - this.f8926b > 5000 && j > 0) {
                this.f8927c = true;
            }
        }
    }

    @Override // com.xiaomi.push.ex
    public void a(NetworkInfo networkInfo) {
        String str = null;
        if (networkInfo == null) {
            a(-1, (String) null);
        } else if (networkInfo.getType() == 0) {
            String subtypeName = networkInfo.getSubtypeName();
            if (!TextUtils.isEmpty(subtypeName) && !"UNKNOWN".equalsIgnoreCase(subtypeName)) {
                str = "M-" + subtypeName;
            }
            a(0, str);
        } else if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
            a(1, "WIFI-ID-UNKNOWN");
        } else {
            a(-1, (String) null);
        }
    }

    @Override // com.xiaomi.push.ex
    /* renamed from: a */
    public void mo255a(String str) {
        if (!TextUtils.isEmpty(str)) {
            ((eu) this).f318a = true;
            this.f8926b = SystemClock.elapsedRealtime();
            a(1, "W-" + str);
            if (!TextUtils.isEmpty(this.f8925a.f328a)) {
                e();
                return;
            }
            a aVar = this.f8925a;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: b */
    public void mo242b() {
        if (((eu) this).f8916b && this.d) {
            this.f326b = this.f8925a.f328a;
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: c */
    public void mo256c() {
        if (((eu) this).f8916b && this.d && this.f8925a.f328a.equals(this.f326b)) {
            b.m1a("[HB] onPong isWifiChanged =" + ((eu) this).f318a);
            if (((eu) this).f318a) {
                ((eu) this).f318a = false;
                this.f8927c = false;
                return;
            }
            if (this.f8927c) {
                a aVar = this.f8925a;
                if (!aVar.f329a) {
                    aVar.f333c += aVar.f327a;
                }
            } else {
                m258a(true);
                b(false);
            }
            this.f8927c = false;
            this.f8926b = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.xiaomi.push.ey
    /* renamed from: d */
    public void mo257d() {
        if (((eu) this).f8916b && this.d && this.f8925a.f328a.equals(this.f326b)) {
            b.m1a("[HB] onPingTimeout");
            m258a(false);
            b(true);
            this.f8927c = false;
            this.f8926b = 0L;
        }
    }
}
