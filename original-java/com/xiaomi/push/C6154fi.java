package com.xiaomi.push;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6152fh;
import com.xiaomi.push.service.AbstractC6391bh;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.fi */
/* loaded from: classes2.dex */
public class C6154fi implements C6152fh.InterfaceC6153a {

    /* renamed from: a */
    protected Context f21537a;

    /* renamed from: a */
    private PendingIntent f21536a = null;

    /* renamed from: a */
    private volatile long f21535a = 0;

    public C6154fi(Context context) {
        this.f21537a = null;
        this.f21537a = context;
    }

    /* renamed from: a */
    private void m2929a(AlarmManager alarmManager, long j, PendingIntent pendingIntent) {
        try {
            AlarmManager.class.getMethod("setExact", Integer.TYPE, Long.TYPE, PendingIntent.class).invoke(alarmManager, 2, Long.valueOf(j), pendingIntent);
        } catch (Exception e) {
            AbstractC5876b.m4138d("[Alarm] invoke setExact method meet error. " + e);
        }
    }

    /* renamed from: b */
    private void m2927b(long j) {
        AlarmManager alarmManager = (AlarmManager) this.f21537a.getSystemService("alarm");
        if (Build.VERSION.SDK_INT >= 23) {
            C6016bj.m3648a((Object) alarmManager, "setExactAndAllowWhileIdle", 2, Long.valueOf(j), this.f21536a);
        } else {
            m2929a(alarmManager, j, this.f21536a);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[Alarm] register timer ");
        sb.append((j - SystemClock.elapsedRealtime()) / 1000);
        sb.append(", ");
        PendingIntent pendingIntent = this.f21536a;
        sb.append(pendingIntent != null ? Integer.valueOf(pendingIntent.hashCode()) : "");
        AbstractC5876b.m4139c(sb.toString());
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public void mo2926a() {
        if (this.f21536a != null) {
            try {
                ((AlarmManager) this.f21537a.getSystemService("alarm")).cancel(this.f21536a);
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.f21536a = null;
                AbstractC5876b.m4139c("[Alarm] unregister timer");
                this.f21535a = 0L;
                throw th;
            }
            this.f21536a = null;
            AbstractC5876b.m4139c("[Alarm] unregister timer");
            this.f21535a = 0L;
        }
        this.f21535a = 0L;
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public void mo2924a(long j) {
        if (this.f21536a == null) {
            return;
        }
        m2927b(j + SystemClock.elapsedRealtime());
    }

    /* renamed from: a */
    public void m2928a(Intent intent, long j) {
        this.f21536a = Build.VERSION.SDK_INT >= 31 ? PendingIntent.getBroadcast(this.f21537a, 0, intent, 33554432) : PendingIntent.getBroadcast(this.f21537a, 0, intent, 0);
        m2927b(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
        if (r8.f21535a < r4) goto L17;
     */
    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo2923a(boolean z) {
        long m3059a = C6135et.m3055a(this.f21537a).m3059a();
        if (z || this.f21535a != 0) {
            if (z) {
                mo2926a();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!z && this.f21535a != 0) {
                if (this.f21535a <= elapsedRealtime) {
                    this.f21535a += m3059a;
                }
                Intent intent = new Intent(AbstractC6391bh.f23091q);
                intent.setPackage(this.f21537a.getPackageName());
                m2928a(intent, this.f21535a);
            }
            m3059a -= elapsedRealtime % m3059a;
            this.f21535a = elapsedRealtime + m3059a;
            Intent intent2 = new Intent(AbstractC6391bh.f23091q);
            intent2.setPackage(this.f21537a.getPackageName());
            m2928a(intent2, this.f21535a);
        }
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public boolean mo2925a() {
        return this.f21535a != 0;
    }
}
