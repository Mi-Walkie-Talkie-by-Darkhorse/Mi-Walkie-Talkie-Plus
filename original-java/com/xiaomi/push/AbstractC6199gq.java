package com.xiaomi.push;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.just.agentweb.WebIndicator;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.XMPushService;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.xiaomi.push.gq */
/* loaded from: classes2.dex */
public abstract class AbstractC6199gq extends AbstractC6191gj {

    /* renamed from: a */
    protected Exception f21764a;

    /* renamed from: a */
    protected Socket f21765a;

    /* renamed from: b */
    protected XMPushService f21766b;

    /* renamed from: c */
    private int f21767c;

    /* renamed from: c */
    String f21768c;

    /* renamed from: d */
    private String f21769d;

    /* renamed from: e */
    protected volatile long f21770e;

    /* renamed from: f */
    protected volatile long f21771f;

    /* renamed from: g */
    protected volatile long f21772g;

    /* renamed from: h */
    private long f21773h;

    public AbstractC6199gq(XMPushService xMPushService, C6193gk c6193gk) {
        super(xMPushService, c6193gk);
        this.f21764a = null;
        this.f21768c = null;
        this.f21770e = 0L;
        this.f21771f = 0L;
        this.f21772g = 0L;
        this.f21773h = 0L;
        this.f21766b = xMPushService;
    }

    /* renamed from: a */
    private void m2717a(C6193gk c6193gk) {
        m2714a(c6193gk.m2730c(), c6193gk.m2738a());
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x033b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m2714a(String str, int i) {
        StringBuilder sb;
        long j;
        int i2;
        String str2;
        boolean z;
        Iterator<String> it2;
        String str3;
        C6058cq c6058cq;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        this.f21764a = null;
        ArrayList<String> arrayList = new ArrayList<>();
        int intValue = AbstractC5876b.m4149a("get bucket for host : " + str).intValue();
        C6058cq m2715a = m2715a(str);
        AbstractC5876b.m4150a(Integer.valueOf(intValue));
        if (m2715a != null) {
            arrayList = m2715a.mo3430a(true);
        }
        C6058cq m3436d = C6062cu.m3459a().m3436d(str);
        if (m3436d != null) {
            Iterator<String> it3 = m3436d.mo3430a(true).iterator();
            while (it3.hasNext()) {
                String next = it3.next();
                if (arrayList.indexOf(next) == -1) {
                    arrayList.add(next);
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(str);
        }
        long j2 = 0;
        this.f21772g = 0L;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String m3675a = C6013bi.m3675a((Context) this.f21766b);
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it4 = arrayList.iterator();
        String str10 = "";
        int i3 = 0;
        while (it4.hasNext()) {
            String next2 = it4.next();
            long currentTimeMillis = System.currentTimeMillis();
            ((AbstractC6191gj) this).f21730a++;
            int i4 = i3 + 1;
            try {
                AbstractC5876b.m4147a("begin to connect to " + next2);
                this.f21765a = m2720a();
                this.f21765a.connect(C6060cs.m3460a(next2, i), WebIndicator.MAX_UNIFORM_SPEED_DURATION);
                AbstractC5876b.m4147a("tcp connected");
                this.f21765a.setTcpNoDelay(true);
                this.f21769d = next2;
                mo2719a();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                ((AbstractC6191gj) this).f21731a = currentTimeMillis2;
                ((AbstractC6191gj) this).f21741b = m3675a;
                if (m2715a != null) {
                    it2 = it4;
                    sb = sb2;
                    str3 = m3675a;
                    j = 0;
                    c6058cq = m2715a;
                    try {
                        m2715a.m3474b(next2, currentTimeMillis2, 0L);
                    } catch (Exception e) {
                        e = e;
                        str4 = str10;
                        str5 = str3;
                        try {
                            this.f21764a = e;
                            AbstractC5876b.m4138d("SMACK: Could not connect to:" + next2);
                            sb.append("SMACK: Could not connect to ");
                            sb.append(next2);
                            sb.append(" port:");
                            sb.append(i);
                            sb.append(" err:");
                            sb.append(this.f21764a.getClass().getSimpleName());
                            sb.append("\n");
                            if (TextUtils.isEmpty(str4)) {
                                str2 = next2;
                            } else {
                                str2 = str4 + "|" + next2;
                            }
                            C6170fw.m2848a(next2, this.f21764a);
                            if (c6058cq != null) {
                                str7 = str5;
                                c6058cq.m3473b(next2, System.currentTimeMillis() - currentTimeMillis, 0L, this.f21764a);
                            } else {
                                str7 = str5;
                            }
                        } catch (Throwable th) {
                            th = th;
                            AbstractC5876b.m4138d("SMACK: Could not connect to:" + next2);
                            sb.append("SMACK: Could not connect to ");
                            sb.append(next2);
                            sb.append(" port:");
                            sb.append(i);
                            sb.append(" err:");
                            sb.append(this.f21764a.getClass().getSimpleName());
                            sb.append("\n");
                            if (TextUtils.isEmpty(str4)) {
                                str8 = str4 + "|" + next2;
                            } else {
                                str8 = next2;
                            }
                            C6170fw.m2848a(next2, this.f21764a);
                            if (c6058cq == null) {
                                str9 = str5;
                                c6058cq.m3473b(next2, System.currentTimeMillis() - currentTimeMillis, 0L, this.f21764a);
                            } else {
                                str9 = str5;
                            }
                            if (!TextUtils.equals(str9, C6013bi.m3675a((Context) this.f21766b))) {
                                throw th;
                            }
                            str2 = str8;
                            i2 = i4;
                            z = false;
                            C6062cu.m3459a().m3440c();
                            int elapsedRealtime2 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime);
                            if (!z) {
                            }
                        }
                        if (TextUtils.equals(str7, C6013bi.m3675a((Context) this.f21766b))) {
                            str10 = str2;
                            sb2 = sb;
                            m3675a = str7;
                            i3 = i4;
                            it4 = it2;
                            j2 = j;
                            m2715a = c6058cq;
                        } else {
                            i2 = i4;
                            z = false;
                            C6062cu.m3459a().m3440c();
                            int elapsedRealtime22 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime);
                            if (!z) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            this.f21764a = new Exception("abnormal exception", th);
                            AbstractC5876b.m4143a(th);
                            AbstractC5876b.m4138d("SMACK: Could not connect to:" + next2);
                            sb.append("SMACK: Could not connect to ");
                            sb.append(next2);
                            sb.append(" port:");
                            sb.append(i);
                            sb.append(" err:");
                            sb.append(this.f21764a.getClass().getSimpleName());
                            sb.append("\n");
                            if (TextUtils.isEmpty(str10)) {
                                str2 = next2;
                            } else {
                                str2 = str10 + "|" + next2;
                            }
                            C6170fw.m2848a(next2, this.f21764a);
                            if (c6058cq != null) {
                                c6058cq.m3473b(next2, System.currentTimeMillis() - currentTimeMillis, 0L, this.f21764a);
                            }
                            str6 = str3;
                        } catch (Throwable th3) {
                            th = th3;
                            str4 = str10;
                            str5 = str3;
                            AbstractC5876b.m4138d("SMACK: Could not connect to:" + next2);
                            sb.append("SMACK: Could not connect to ");
                            sb.append(next2);
                            sb.append(" port:");
                            sb.append(i);
                            sb.append(" err:");
                            sb.append(this.f21764a.getClass().getSimpleName());
                            sb.append("\n");
                            if (TextUtils.isEmpty(str4)) {
                            }
                            C6170fw.m2848a(next2, this.f21764a);
                            if (c6058cq == null) {
                            }
                            if (!TextUtils.equals(str9, C6013bi.m3675a((Context) this.f21766b))) {
                            }
                        }
                        if (TextUtils.equals(str6, C6013bi.m3675a((Context) this.f21766b))) {
                            str7 = str6;
                            str10 = str2;
                            sb2 = sb;
                            m3675a = str7;
                            i3 = i4;
                            it4 = it2;
                            j2 = j;
                            m2715a = c6058cq;
                        } else {
                            i2 = i4;
                            z = false;
                            C6062cu.m3459a().m3440c();
                            int elapsedRealtime222 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime);
                            if (!z) {
                            }
                        }
                    }
                } else {
                    it2 = it4;
                    sb = sb2;
                    str3 = m3675a;
                    c6058cq = m2715a;
                    j = 0;
                }
                this.f21772g = SystemClock.elapsedRealtime();
                AbstractC5876b.m4147a("connected to " + next2 + " in " + ((AbstractC6191gj) this).f21731a);
                str2 = str10;
                i2 = i4;
                z = true;
                break;
            } catch (Exception e2) {
                e = e2;
                it2 = it4;
                sb = sb2;
                c6058cq = m2715a;
                j = 0;
                str4 = str10;
                str5 = m3675a;
            } catch (Throwable th4) {
                th = th4;
                it2 = it4;
                sb = sb2;
                str3 = m3675a;
                c6058cq = m2715a;
                j = 0;
            }
        }
        sb = sb2;
        j = j2;
        i2 = i3;
        str2 = str10;
        z = false;
        C6062cu.m3459a().m3440c();
        int elapsedRealtime2222 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime);
        if (!z) {
            C6170fw.m2852a(0, EnumC6158fm.BATCH_TCP_CONN_SUCCESS.m2919a(), elapsedRealtime2222, str2, i2);
            return;
        }
        if (this.f21773h == j || SystemClock.elapsedRealtime() - this.f21773h > 480000) {
            this.f21773h = SystemClock.elapsedRealtime();
            C6170fw.m2852a(0, EnumC6158fm.BATCH_TCP_CONN_FAIL.m2919a(), elapsedRealtime2222, str2, C6013bi.m3661c(this.f21766b.getApplicationContext()) ? 1 : 0);
        }
        throw new C6203gu(sb.toString());
    }

    /* renamed from: a */
    C6058cq m2715a(String str) {
        C6058cq m3447a = C6062cu.m3459a().m3447a(str, false);
        if (!m3447a.mo3429b()) {
            C6226hm.m2605a(new RunnableC6202gt(this, str));
        }
        return m3447a;
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public String mo2721a() {
        return this.f21769d;
    }

    /* renamed from: a */
    public Socket m2720a() {
        return new Socket();
    }

    /* renamed from: a */
    protected synchronized void mo2719a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public synchronized void mo2718a(int i, Exception exc) {
        if (m2750b() == 2) {
            return;
        }
        m2758a(2, i, exc);
        ((AbstractC6191gj) this).f21735a = "";
        try {
            this.f21765a.close();
        } catch (Throwable unused) {
        }
        this.f21770e = 0L;
        this.f21771f = 0L;
    }

    /* renamed from: a */
    protected void m2716a(Exception exc) {
        if (SystemClock.elapsedRealtime() - this.f21772g < Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL) {
            if (!C6013bi.m3662b(this.f21766b)) {
                return;
            }
            int i = this.f21767c + 1;
            this.f21767c = i;
            if (i < 2) {
                return;
            }
            String mo2721a = mo2721a();
            AbstractC5876b.m4147a("max short conn time reached, sink down current host:" + mo2721a);
            m2713a(mo2721a, 0L, exc);
        }
        this.f21767c = 0;
    }

    /* renamed from: a */
    protected void m2713a(String str, long j, Exception exc) {
        C6058cq m3447a = C6062cu.m3459a().m3447a(C6193gk.m2737a(), false);
        if (m3447a != null) {
            m3447a.m3473b(str, j, 0L, exc);
            C6062cu.m3459a().m3440c();
        }
    }

    /* renamed from: a */
    protected abstract void mo2712a(boolean z);

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public void mo2711a(C6173fy[] c6173fyArr) {
        throw new C6203gu("Don't support send Blob");
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: b */
    public void mo2710b(int i, Exception exc) {
        mo2718a(i, exc);
        if ((exc != null || i == 18) && this.f21772g != 0) {
            m2716a(exc);
        }
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: b */
    public void mo2709b(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        mo2712a(z);
        C6135et.m3055a(this.f21766b).m3052b();
        if (z) {
            return;
        }
        this.f21766b.m1782a(new C6200gr(this, 13, elapsedRealtime, currentTimeMillis), 10000L);
    }

    /* renamed from: c */
    public String m2708c() {
        return ((AbstractC6191gj) this).f21735a;
    }

    /* renamed from: c */
    public void m2707c(int i, Exception exc) {
        this.f21766b.m1783a(new C6201gs(this, 2, i, exc));
    }

    /* renamed from: f */
    public synchronized void m2706f() {
        try {
            if (!m2743c() && !m2748b()) {
                m2758a(0, 0, (Exception) null);
                m2717a(((AbstractC6191gj) this).f21732a);
                return;
            }
            AbstractC5876b.m4147a("WARNING: current xmpp has connected");
        } catch (IOException e) {
            throw new C6203gu(e);
        }
    }

    /* renamed from: g */
    public void m2705g() {
        this.f21770e = SystemClock.elapsedRealtime();
    }

    /* renamed from: h */
    public void m2704h() {
        this.f21771f = SystemClock.elapsedRealtime();
    }
}
