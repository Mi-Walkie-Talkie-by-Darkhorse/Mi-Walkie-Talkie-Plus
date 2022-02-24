package com.xiaomi.push;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;
import com.xiaomi.push.service.ax;

/* loaded from: classes2.dex */
public class dq {

    /* renamed from: a  reason: collision with root package name */
    private static volatile dq f8856a;

    /* renamed from: a  reason: collision with other field name */
    private Context f220a;

    /* renamed from: a  reason: collision with other field name */
    private a f221a;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    private dq(Context context) {
        this.f220a = context;
    }

    public static int a(int i) {
        return Math.max(60, i);
    }

    public static dq a(Context context) {
        if (f8856a == null) {
            synchronized (dq.class) {
                if (f8856a == null) {
                    f8856a = new dq(context);
                }
            }
        }
        return f8856a;
    }

    private void a(ax axVar, ak akVar, boolean z) {
        if (axVar.a(ia.UploadSwitch.a(), true)) {
            du duVar = new du(this.f220a);
            if (z) {
                akVar.a((ak.a) duVar, a(axVar.a(ia.UploadFrequency.a(), 86400)));
            } else {
                akVar.m68a((ak.a) duVar);
            }
        }
    }

    private boolean a() {
        try {
            ((Application) (this.f220a instanceof Application ? this.f220a : this.f220a.getApplicationContext())).registerActivityLifecycleCallbacks(new dk(this.f220a, String.valueOf(System.currentTimeMillis() / 1000)));
            return true;
        } catch (Exception e) {
            b.a(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        a aVar;
        ak a2 = ak.a(this.f220a);
        ax a3 = ax.a(this.f220a);
        SharedPreferences sharedPreferences = this.f220a.getSharedPreferences("mipush_extra", 0);
        long currentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("first_try_ts", currentTimeMillis);
        if (j == currentTimeMillis) {
            sharedPreferences.edit().putLong("first_try_ts", currentTimeMillis).commit();
        }
        if (Math.abs(currentTimeMillis - j) >= 172800000) {
            a(a3, a2, false);
            if (a3.a(ia.StorageCollectionSwitch.a(), true)) {
                int a4 = a(a3.a(ia.StorageCollectionFrequency.a(), 86400));
                a2.a(new dt(this.f220a, a4), a4, 0);
            }
            if (l.m528a(this.f220a) && (aVar = this.f221a) != null) {
                aVar.a();
            }
            if (a3.a(ia.ActivityTSSwitch.a(), false)) {
                a();
            }
            a(a3, a2, true);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m164a() {
        ak.a(this.f220a).a(new dr(this));
    }
}
