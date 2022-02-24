package com.xiaomi.push;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fh;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class fi implements fh.a {

    /* renamed from: a  reason: collision with other field name */
    protected Context f350a;

    /* renamed from: a  reason: collision with other field name */
    private PendingIntent f349a = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile long f8942a = 0;

    public fi(Context context) {
        this.f350a = null;
        this.f350a = context;
    }

    private void a(AlarmManager alarmManager, long j, PendingIntent pendingIntent) {
        try {
            AlarmManager.class.getMethod("setExact", Integer.TYPE, Long.TYPE, PendingIntent.class).invoke(alarmManager, 2, Long.valueOf(j), pendingIntent);
        } catch (Exception e) {
            b.d("[Alarm] invoke setExact method meet error. " + e);
        }
    }

    private void b(long j) {
        AlarmManager alarmManager = (AlarmManager) this.f350a.getSystemService("alarm");
        if (Build.VERSION.SDK_INT >= 23) {
            bj.a((Object) alarmManager, "setExactAndAllowWhileIdle", 2, Long.valueOf(j), this.f349a);
        } else {
            a(alarmManager, j, this.f349a);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[Alarm] register timer ");
        sb.append((j - SystemClock.elapsedRealtime()) / 1000);
        sb.append(", ");
        PendingIntent pendingIntent = this.f349a;
        sb.append(pendingIntent != null ? Integer.valueOf(pendingIntent.hashCode()) : "");
        b.c(sb.toString());
    }

    @Override // com.xiaomi.push.fh.a
    /* renamed from: a */
    public void mo276a() {
        if (this.f349a != null) {
            try {
                ((AlarmManager) this.f350a.getSystemService("alarm")).cancel(this.f349a);
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.f349a = null;
                b.c("[Alarm] unregister timer");
                this.f8942a = 0L;
                throw th;
            }
            this.f349a = null;
            b.c("[Alarm] unregister timer");
            this.f8942a = 0L;
        }
        this.f8942a = 0L;
    }

    @Override // com.xiaomi.push.fh.a
    public void a(long j) {
        if (this.f349a != null) {
            b(j + SystemClock.elapsedRealtime());
        }
    }

    public void a(Intent intent, long j) {
        this.f349a = Build.VERSION.SDK_INT >= 31 ? PendingIntent.getBroadcast(this.f350a, 0, intent, 33554432) : PendingIntent.getBroadcast(this.f350a, 0, intent, 0);
        b(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
        if (r8.f8942a < r4) goto L_0x003c;
     */
    @Override // com.xiaomi.push.fh.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(boolean r9) {
        /*
            r8 = this;
            android.content.Context r0 = r8.f350a
            com.xiaomi.push.et r0 = com.xiaomi.push.et.a(r0)
            long r0 = r0.a()
            r2 = 0
            if (r9 != 0) goto L_0x0015
            long r4 = r8.f8942a
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L_0x0015
            return
        L_0x0015:
            if (r9 == 0) goto L_0x001a
            r8.mo276a()
        L_0x001a:
            long r4 = android.os.SystemClock.elapsedRealtime()
            if (r9 != 0) goto L_0x0039
            long r6 = r8.f8942a
            int r9 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r9 != 0) goto L_0x0027
            goto L_0x0039
        L_0x0027:
            long r2 = r8.f8942a
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 > 0) goto L_0x003f
            long r2 = r8.f8942a
            long r2 = r2 + r0
            r8.f8942a = r2
            long r2 = r8.f8942a
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 >= 0) goto L_0x003f
            goto L_0x003c
        L_0x0039:
            long r2 = r4 % r0
            long r0 = r0 - r2
        L_0x003c:
            long r4 = r4 + r0
            r8.f8942a = r4
        L_0x003f:
            android.content.Intent r9 = new android.content.Intent
            java.lang.String r0 = com.xiaomi.push.service.bh.q
            r9.<init>(r0)
            android.content.Context r0 = r8.f350a
            java.lang.String r0 = r0.getPackageName()
            r9.setPackage(r0)
            long r0 = r8.f8942a
            r8.a(r9, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.fi.a(boolean):void");
    }

    @Override // com.xiaomi.push.fh.a
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo276a() {
        return this.f8942a != 0;
    }
}
