package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.receivers.BatteryReceiver;

/* renamed from: com.xiaomi.push.fb */
/* loaded from: classes2.dex */
public class C6145fb extends AbstractC6136eu {

    /* renamed from: a */
    private C6146a f21494a;

    /* renamed from: b */
    private long f21495b;

    /* renamed from: b */
    private String f21496b;

    /* renamed from: c */
    private boolean f21497c;

    /* renamed from: d */
    private volatile boolean f21498d;

    /* renamed from: com.xiaomi.push.fb$a */
    /* loaded from: classes2.dex */
    public static class C6146a {

        /* renamed from: a */
        String f21501a = "";

        /* renamed from: b */
        String f21505b = null;

        /* renamed from: a */
        int f21499a = -1;

        /* renamed from: a */
        long f21500a = 210000;

        /* renamed from: b */
        int f21503b = 0;

        /* renamed from: c */
        int f21507c = 0;

        /* renamed from: a */
        boolean f21502a = false;

        /* renamed from: b */
        long f21504b = 0;

        /* renamed from: b */
        boolean f21506b = false;

        /* renamed from: c */
        long f21508c = 0;

        /* renamed from: a */
        void m2976a() {
            new C6146a().m2975a(this);
        }

        /* renamed from: a */
        void m2975a(C6146a c6146a) {
            c6146a.f21501a = this.f21501a;
            c6146a.f21505b = this.f21505b;
            c6146a.f21499a = this.f21499a;
            c6146a.f21500a = this.f21500a;
            c6146a.f21503b = this.f21503b;
            c6146a.f21507c = this.f21507c;
            c6146a.f21502a = this.f21502a;
            c6146a.f21504b = this.f21504b;
            c6146a.f21506b = this.f21506b;
            c6146a.f21508c = this.f21508c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6145fb(Context context) {
        super(context);
        this.f21497c = false;
        this.f21498d = true;
        this.f21496b = null;
        this.f21495b = 0L;
        this.f21494a = new C6146a();
        AbstractC5876b.m4147a("[Policy] Intelligent policy");
    }

    /* renamed from: a */
    private long m2984a(boolean z) {
        long j = this.f21494a.f21500a;
        long j2 = j % 60000;
        if (z) {
            return j <= 210000 ? j : j - 30000;
        }
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        long j3 = (i == 0 || j < 210000) ? j + 30000 : j + 60000;
        if (i == 0 || j3 <= 600000) {
            return j3;
        }
        return 600000L;
    }

    /* renamed from: a */
    private void m2990a(int i, String str) {
        this.f21494a.f21499a = i;
        if ("WIFI-ID-UNKNOWN".equals(str)) {
            String str2 = this.f21494a.f21501a;
            if (str2 == null || !str2.startsWith("W-")) {
                this.f21494a.f21501a = null;
            }
        } else {
            this.f21494a.f21501a = str;
        }
        ((AbstractC6136eu) this).f21473a = str;
        this.f21498d = (TextUtils.isEmpty(this.f21494a.f21501a) || this.f21494a.f21499a == 0) ? false : true;
    }

    /* renamed from: a */
    private void m2987a(long j, boolean z) {
        C6146a c6146a = this.f21494a;
        c6146a.f21507c++;
        c6146a.f21503b = 0;
        c6146a.f21500a = j;
        c6146a.f21506b = !z;
    }

    /* renamed from: a */
    private void m2983a(boolean z) {
        C6146a c6146a;
        int i = 1;
        if (z) {
            c6146a = this.f21494a;
        } else {
            c6146a = this.f21494a;
            int i2 = c6146a.f21503b;
            if (i2 < 0) {
                c6146a.f21503b = i2 - 1;
                return;
            }
            i = -1;
        }
        c6146a.f21503b = i;
    }

    /* renamed from: a */
    private boolean m2988a(long j) {
        if (j > 600000) {
            return true;
        }
        return (j < 235000 && this.f21494a.f21503b <= -4) || this.f21494a.f21503b <= -4;
    }

    /* renamed from: b */
    private void m2981b(long j) {
        C6146a c6146a = this.f21494a;
        c6146a.f21500a = j;
        c6146a.f21503b = 0;
        c6146a.f21507c = 0;
        c6146a.f21502a = false;
        c6146a.f21504b = 0L;
        c6146a.f21506b = false;
        c6146a.f21508c = 0L;
    }

    /* renamed from: b */
    private void m2980b(boolean z) {
        AbstractC5876b.m4147a("[HB] adjustHeartbeat isTimeOut = " + z);
        C6146a c6146a = this.f21494a;
        if (!c6146a.f21502a) {
            c6146a.f21508c += c6146a.f21500a;
            AbstractC5876b.m4147a("[HB] adjustHeartbeat duration = " + this.f21494a.f21508c);
        }
        C6146a c6146a2 = this.f21494a;
        if (c6146a2.f21502a) {
            m3045a(z, c6146a2.f21508c);
            long currentTimeMillis = System.currentTimeMillis();
            C6146a c6146a3 = this.f21494a;
            if ((c6146a3.f21504b + 2592000000L) - currentTimeMillis > 0) {
                return;
            }
            long j = c6146a3.f21500a;
            long j2 = j % 60000;
            if (j > 235000) {
                j = j2 == 0 ? j - 60000 : j - 30000;
            }
            long max = Math.max(j, 210000L);
            m2981b(max);
            C6152fh.m2933a(max - 15000);
            AbstractC5876b.m4147a("[HB] update Alarm interval = " + max);
            return;
        }
        long m2984a = m2984a(z);
        boolean m2988a = m2988a(m2984a);
        if (m2988a) {
            C6146a c6146a4 = this.f21494a;
            if (c6146a4.f21503b <= -4 && m2984a > 235000) {
                c6146a4.f21500a -= 30000;
            }
            c6146a4.f21502a = true;
            c6146a4.f21504b = System.currentTimeMillis();
        }
        AbstractC5876b.m4147a("[HB] adjustHeartbeat fixed = " + m2988a + ", continuousCount = " + this.f21494a.f21503b + ", interval = " + this.f21494a.f21500a);
        C6137ev m3037a = C6137ev.m3037a(((AbstractC6136eu) this).f21469a);
        C6146a c6146a5 = this.f21494a;
        m3037a.m3033a(c6146a5, m2988a, c6146a5.f21500a);
        if (m2988a) {
            C6137ev.m3037a(((AbstractC6136eu) this).f21469a).m3030a(this.f21494a.f21501a);
        } else if (z && C6137ev.m3037a(((AbstractC6136eu) this).f21469a).m3027a(this.f21494a.f21501a, m2984a)) {
        } else {
            m2987a(m2984a, z);
            if (m2984a > 210000) {
                C6152fh.m2933a(m2984a - 15000);
                AbstractC5876b.m4147a("[HB] update Alarm interval = " + m2984a);
            }
        }
    }

    /* renamed from: e */
    private void m2977e() {
        String str;
        C6146a m3032a = C6137ev.m3037a(((AbstractC6136eu) this).f21469a).m3032a(this.f21494a.f21501a);
        if (m3032a != null) {
            m3032a.m2975a(this.f21494a);
            str = "[HB] reload interval = " + this.f21494a.f21500a;
        } else {
            m2981b(210000L);
            str = "[HB] reload no cache";
        }
        AbstractC5876b.m4147a(str);
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public long mo2992a() {
        if (BatteryReceiver.f23226a) {
            AbstractC5876b.m4147a("[HB] interval battery");
            return 240000L;
        } else if (((AbstractC6136eu) this).f21475b && this.f21498d) {
            ((AbstractC6136eu) this).f21468a = this.f21494a.f21500a;
            AbstractC5876b.m4147a("[HB] compute interval = " + this.f21494a.f21500a);
            long j = this.f21494a.f21500a;
            if (j <= 210000) {
                return 195000L;
            }
            return j - 15000;
        } else {
            return mo2982b();
        }
    }

    @Override // com.xiaomi.push.AbstractC6136eu
    /* renamed from: a */
    public void mo2991a() {
        if (this.f21494a.f21502a) {
            super.mo2991a();
        }
    }

    @Override // com.xiaomi.push.InterfaceC6130eo
    /* renamed from: a */
    public void mo2989a(long j) {
        if (((AbstractC6136eu) this).f21475b && this.f21498d && !this.f21494a.f21502a) {
            AbstractC5876b.m4147a("[HB] onReadOrWrite = ");
            this.f21495b = j;
            if (SystemClock.elapsedRealtime() - this.f21495b <= 5000 || j <= 0) {
                return;
            }
            this.f21497c = true;
        }
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2986a(NetworkInfo networkInfo) {
        String str = null;
        if (networkInfo == null) {
            m2990a(-1, (String) null);
        } else if (networkInfo.getType() != 0) {
            if (networkInfo.getType() == 1 || networkInfo.getType() == 6) {
                m2990a(1, "WIFI-ID-UNKNOWN");
            } else {
                m2990a(-1, (String) null);
            }
        } else {
            String subtypeName = networkInfo.getSubtypeName();
            if (!TextUtils.isEmpty(subtypeName) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(subtypeName)) {
                str = "M-" + subtypeName;
            }
            m2990a(0, str);
        }
    }

    @Override // com.xiaomi.push.InterfaceC6140ex
    /* renamed from: a */
    public void mo2985a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ((AbstractC6136eu) this).f21474a = true;
        this.f21495b = SystemClock.elapsedRealtime();
        m2990a(1, "W-" + str);
        if (!TextUtils.isEmpty(this.f21494a.f21501a)) {
            m2977e();
            return;
        }
        C6146a c6146a = this.f21494a;
        if (c6146a != null) {
            c6146a.m2976a();
        }
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: b */
    public void mo2982b() {
        if (((AbstractC6136eu) this).f21475b && this.f21498d) {
            this.f21496b = this.f21494a.f21501a;
        }
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: c */
    public void mo2979c() {
        if (((AbstractC6136eu) this).f21475b && this.f21498d && this.f21494a.f21501a.equals(this.f21496b)) {
            AbstractC5876b.m4147a("[HB] onPong isWifiChanged =" + ((AbstractC6136eu) this).f21474a);
            if (((AbstractC6136eu) this).f21474a) {
                ((AbstractC6136eu) this).f21474a = false;
                this.f21497c = false;
                return;
            }
            if (this.f21497c) {
                C6146a c6146a = this.f21494a;
                if (!c6146a.f21502a) {
                    c6146a.f21508c += c6146a.f21500a;
                }
            } else {
                m2983a(true);
                m2980b(false);
            }
            this.f21497c = false;
            this.f21495b = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.xiaomi.push.InterfaceC6141ey
    /* renamed from: d */
    public void mo2978d() {
        if (((AbstractC6136eu) this).f21475b && this.f21498d && this.f21494a.f21501a.equals(this.f21496b)) {
            AbstractC5876b.m4147a("[HB] onPingTimeout");
            m2983a(false);
            m2980b(true);
            this.f21497c = false;
            this.f21495b = 0L;
        }
    }
}
