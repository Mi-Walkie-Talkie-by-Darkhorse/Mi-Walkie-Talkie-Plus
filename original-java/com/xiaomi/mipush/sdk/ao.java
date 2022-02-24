package com.xiaomi.mipush.sdk;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.bi;
import com.xiaomi.push.bj;
import com.xiaomi.push.bn;
import com.xiaomi.push.da;
import com.xiaomi.push.en;
import com.xiaomi.push.hv;
import com.xiaomi.push.hw;
import com.xiaomi.push.hz;
import com.xiaomi.push.ia;
import com.xiaomi.push.ii;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.iv;
import com.xiaomi.push.jb;
import com.xiaomi.push.jf;
import com.xiaomi.push.jg;
import com.xiaomi.push.l;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.ba;
import com.xiaomi.push.service.bh;
import com.xiaomi.push.service.bk;
import com.xiaomi.push.service.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ao {

    /* renamed from: a  reason: collision with root package name */
    private static ao f8689a = null;

    /* renamed from: a  reason: collision with other field name */
    private static final ArrayList<a> f45a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f8690b = false;

    /* renamed from: a  reason: collision with other field name */
    private Context f46a;

    /* renamed from: a  reason: collision with other field name */
    private Handler f48a;

    /* renamed from: a  reason: collision with other field name */
    private Messenger f49a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f53a;

    /* renamed from: a  reason: collision with other field name */
    private List<Message> f52a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f8691c = false;

    /* renamed from: a  reason: collision with other field name */
    private Intent f47a = null;

    /* renamed from: a  reason: collision with other field name */
    private Integer f50a = null;

    /* renamed from: a  reason: collision with other field name */
    private String f51a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a<T extends jg<T, ?>> {

        /* renamed from: a  reason: collision with root package name */
        hv f8692a;

        /* renamed from: a  reason: collision with other field name */
        T f54a;

        /* renamed from: a  reason: collision with other field name */
        boolean f55a;

        a() {
        }
    }

    private ao(Context context) {
        this.f53a = false;
        this.f48a = null;
        this.f46a = context.getApplicationContext();
        this.f53a = m24c();
        f8690b = m25d();
        this.f48a = new ap(this, Looper.getMainLooper());
        if (l.m528a(context)) {
            i.a(new aq(this));
        }
        Intent b2 = b();
        if (b2 != null) {
            b(b2);
        }
    }

    private synchronized int a() {
        return this.f46a.getSharedPreferences("mipush_extra", 0).getInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, -1);
    }

    /* renamed from: a  reason: collision with other method in class */
    private Intent m22a() {
        return (!m29a() || "com.xiaomi.xmsf".equals(this.f46a.getPackageName())) ? e() : d();
    }

    private Message a(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    public static synchronized ao a(Context context) {
        ao aoVar;
        synchronized (ao.class) {
            if (f8689a == null) {
                f8689a = new ao(context);
            }
            aoVar = f8689a;
        }
        return aoVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    private String m23a() {
        try {
            return this.f46a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106 ? "com.xiaomi.push.service.XMPushService" : "com.xiaomi.xmsf.push.service.XMPushService";
        } catch (Exception unused) {
            return "com.xiaomi.xmsf.push.service.XMPushService";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, au auVar, boolean z, HashMap<String, String> hashMap) {
        iu iuVar;
        String str2;
        if (b.m36a(this.f46a).m43b() && bi.b(this.f46a)) {
            iu iuVar2 = new iu();
            iuVar2.a(true);
            Intent a2 = m22a();
            if (TextUtils.isEmpty(str)) {
                str = ba.a();
                iuVar2.a(str);
                iuVar = z ? new iu(str, true) : null;
                synchronized (af.class) {
                    af.a(this.f46a).m18a(str);
                }
            } else {
                iuVar2.a(str);
                iuVar = z ? new iu(str, true) : null;
            }
            switch (at.f8697a[auVar.ordinal()]) {
                case 1:
                    iuVar2.c(Cif.DisablePushMessage.f527a);
                    iuVar.c(Cif.DisablePushMessage.f527a);
                    if (hashMap != null) {
                        iuVar2.a(hashMap);
                        iuVar.a(hashMap);
                    }
                    str2 = "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE";
                    a2.setAction(str2);
                    break;
                case 2:
                    iuVar2.c(Cif.EnablePushMessage.f527a);
                    iuVar.c(Cif.EnablePushMessage.f527a);
                    if (hashMap != null) {
                        iuVar2.a(hashMap);
                        iuVar.a(hashMap);
                    }
                    str2 = "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE";
                    a2.setAction(str2);
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                    iuVar2.c(Cif.ThirdPartyRegUpdate.f527a);
                    if (hashMap != null) {
                        iuVar2.a(hashMap);
                        break;
                    }
                    break;
            }
            b.e("type:" + auVar + ", " + str);
            iuVar2.b(b.m36a(this.f46a).m37a());
            iuVar2.d(this.f46a.getPackageName());
            a((ao) iuVar2, hv.Notification, false, (ii) null);
            if (z) {
                iuVar.b(b.m36a(this.f46a).m37a());
                iuVar.d(this.f46a.getPackageName());
                Context context = this.f46a;
                byte[] a3 = jf.a(ai.a(context, iuVar, hv.Notification, false, context.getPackageName(), b.m36a(this.f46a).m37a()));
                if (a3 != null) {
                    da.a(this.f46a.getPackageName(), this.f46a, iuVar, hv.Notification, a3.length);
                    a2.putExtra("mipush_payload", a3);
                    a2.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
                    a2.putExtra("mipush_app_id", b.m36a(this.f46a).m37a());
                    a2.putExtra("mipush_app_token", b.m36a(this.f46a).b());
                    c(a2);
                }
            }
            Message obtain = Message.obtain();
            obtain.what = 19;
            int ordinal = auVar.ordinal();
            obtain.obj = str;
            obtain.arg1 = ordinal;
            this.f48a.sendMessageDelayed(obtain, 5000L);
        }
    }

    private Intent b() {
        if (!"com.xiaomi.xmsf".equals(this.f46a.getPackageName())) {
            return c();
        }
        b.c("pushChannel xmsf create own channel");
        return e();
    }

    private void b(Intent intent) {
        try {
            if (l.m527a() || Build.VERSION.SDK_INT < 26) {
                this.f46a.startService(intent);
            } else {
                d(intent);
            }
        } catch (Exception e) {
            b.a(e);
        }
    }

    private Intent c() {
        if (m29a()) {
            b.c("pushChannel app start miui china channel");
            return d();
        }
        b.c("pushChannel app start  own channel");
        return e();
    }

    private synchronized void c(int i) {
        this.f46a.getSharedPreferences("mipush_extra", 0).edit().putInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, i).commit();
    }

    private void c(Intent intent) {
        int a2 = ax.a(this.f46a).a(ia.ServiceBootMode.a(), hw.START.a());
        int a3 = a();
        boolean z = a2 == hw.BIND.a() && f8690b;
        int a4 = (z ? hw.BIND : hw.START).a();
        if (a4 != a3) {
            m30a(a4);
        }
        if (z) {
            d(intent);
        } else {
            b(intent);
        }
    }

    /* renamed from: c  reason: collision with other method in class */
    private boolean m24c() {
        try {
            PackageInfo packageInfo = this.f46a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 105;
        } catch (Throwable unused) {
            return false;
        }
    }

    private Intent d() {
        Intent intent = new Intent();
        String packageName = this.f46a.getPackageName();
        intent.setPackage("com.xiaomi.xmsf");
        intent.setClassName("com.xiaomi.xmsf", m23a());
        intent.putExtra("mipush_app_package", packageName);
        g();
        return intent;
    }

    private synchronized void d(Intent intent) {
        if (this.f8691c) {
            Message a2 = a(intent);
            if (this.f52a.size() >= 50) {
                this.f52a.remove(0);
            }
            this.f52a.add(a2);
            return;
        }
        if (this.f49a == null) {
            this.f46a.bindService(intent, new as(this), 1);
            this.f8691c = true;
            this.f52a.clear();
            this.f52a.add(a(intent));
        } else {
            try {
                this.f49a.send(a(intent));
            } catch (RemoteException unused) {
                this.f49a = null;
                this.f8691c = false;
            }
        }
    }

    /* renamed from: d  reason: collision with other method in class */
    private boolean m25d() {
        if (m29a()) {
            try {
                return this.f46a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 108;
            } catch (Exception unused) {
            }
        }
        return true;
    }

    private Intent e() {
        Intent intent = new Intent();
        String packageName = this.f46a.getPackageName();
        h();
        intent.setComponent(new ComponentName(this.f46a, "com.xiaomi.push.service.XMPushService"));
        intent.putExtra("mipush_app_package", packageName);
        return intent;
    }

    /* renamed from: e  reason: collision with other method in class */
    private boolean m26e() {
        String packageName = this.f46a.getPackageName();
        return packageName.contains("miui") || packageName.contains("xiaomi") || (this.f46a.getApplicationInfo().flags & 1) != 0;
    }

    private void g() {
        try {
            PackageManager packageManager = this.f46a.getPackageManager();
            ComponentName componentName = new ComponentName(this.f46a, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            }
        } catch (Throwable unused) {
        }
    }

    private void h() {
        try {
            PackageManager packageManager = this.f46a.getPackageManager();
            ComponentName componentName = new ComponentName(this.f46a, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) != 1) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m27a() {
        b(m22a());
    }

    public void a(int i) {
        a(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        a2.putExtra(bh.C, this.f46a.getPackageName());
        a2.putExtra(bh.D, i);
        a2.putExtra(bh.E, i2);
        c(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, String str) {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.thirdparty");
        a2.putExtra("com.xiaomi.mipush.thirdparty_LEVEL", i);
        a2.putExtra("com.xiaomi.mipush.thirdparty_DESC", str);
        b(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public void m28a(Intent intent) {
        intent.fillIn(m22a(), 24);
        c(intent);
    }

    public final void a(hz hzVar) {
        Intent a2 = m22a();
        byte[] a3 = jf.a(hzVar);
        if (a3 == null) {
            b.m1a("send TinyData failed, because tinyDataBytes is null.");
            return;
        }
        a2.setAction("com.xiaomi.mipush.SEND_TINYDATA");
        a2.putExtra("mipush_payload", a3);
        b(a2);
    }

    public final void a(iv ivVar, boolean z) {
        en.a(this.f46a.getApplicationContext()).a(this.f46a.getPackageName(), "E100003", ivVar.a(), 6001, null);
        this.f47a = null;
        b.m36a(this.f46a).f60a = ivVar.a();
        Intent a2 = m22a();
        byte[] a3 = jf.a(ai.a(this.f46a, ivVar, hv.Registration));
        if (a3 == null) {
            b.m1a("register fail, because msgBytes is null.");
            return;
        }
        a2.setAction("com.xiaomi.mipush.REGISTER_APP");
        a2.putExtra("mipush_app_id", b.m36a(this.f46a).m37a());
        a2.putExtra("mipush_payload", a3);
        a2.putExtra("mipush_session", this.f51a);
        a2.putExtra("mipush_env_chanage", z);
        a2.putExtra("mipush_env_type", b.m36a(this.f46a).a());
        if (!bi.b(this.f46a) || !m32b()) {
            this.f47a = a2;
        } else {
            c(a2);
        }
    }

    public final void a(jb jbVar) {
        byte[] a2 = jf.a(ai.a(this.f46a, jbVar, hv.UnRegistration));
        if (a2 == null) {
            b.m1a("unregister fail, because msgBytes is null.");
            return;
        }
        Intent a3 = m22a();
        a3.setAction("com.xiaomi.mipush.UNREGISTER_APP");
        a3.putExtra("mipush_app_id", b.m36a(this.f46a).m37a());
        a3.putExtra("mipush_payload", a2);
        c(a3);
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, ii iiVar) {
        a((ao) t, hvVar, !hvVar.equals(hv.Registration), iiVar);
    }

    public <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z) {
        a aVar = new a();
        aVar.f54a = t;
        aVar.f8692a = hvVar;
        aVar.f55a = z;
        synchronized (f45a) {
            f45a.add(aVar);
            if (f45a.size() > 10) {
                f45a.remove(0);
            }
        }
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, ii iiVar) {
        a(t, hvVar, z, true, iiVar, true);
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, ii iiVar, boolean z2) {
        a(t, hvVar, z, true, iiVar, z2);
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, boolean z2, ii iiVar, boolean z3) {
        a(t, hvVar, z, z2, iiVar, z3, this.f46a.getPackageName(), b.m36a(this.f46a).m37a());
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, boolean z2, ii iiVar, boolean z3, String str, String str2) {
        a(t, hvVar, z, z2, iiVar, z3, str, str2, true);
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, boolean z2, ii iiVar, boolean z3, String str, String str2, boolean z4) {
        a(t, hvVar, z, z2, iiVar, z3, str, str2, z4, true);
    }

    public final <T extends jg<T, ?>> void a(T t, hv hvVar, boolean z, boolean z2, ii iiVar, boolean z3, String str, String str2, boolean z4, boolean z5) {
        if (!z5 || b.m36a(this.f46a).m45c()) {
            ir a2 = z4 ? ai.a(this.f46a, t, hvVar, z, str, str2) : ai.b(this.f46a, t, hvVar, z, str, str2);
            if (iiVar != null) {
                a2.a(iiVar);
            }
            byte[] a3 = jf.a(a2);
            if (a3 == null) {
                b.m1a("send message fail, because msgBytes is null.");
                return;
            }
            da.a(this.f46a.getPackageName(), this.f46a, t, hvVar, a3.length);
            Intent a4 = m22a();
            a4.setAction("com.xiaomi.mipush.SEND_MESSAGE");
            a4.putExtra("mipush_payload", a3);
            a4.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", z3);
            c(a4);
        } else if (z2) {
            a((ao) t, hvVar, z);
        } else {
            b.m1a("drop the message before initialization.");
        }
    }

    public final void a(String str, au auVar, e eVar) {
        af.a(this.f46a).a(auVar, "syncing");
        a(str, auVar, false, i.m54a(this.f46a, eVar));
    }

    public void a(String str, String str2) {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        a2.putExtra(bh.C, this.f46a.getPackageName());
        a2.putExtra(bh.I, str);
        a2.putExtra(bh.J, str2);
        c(a2);
    }

    public final void a(boolean z) {
        a(z, (String) null);
    }

    public final void a(boolean z, String str) {
        au auVar;
        if (z) {
            af.a(this.f46a).a(au.DISABLE_PUSH, "syncing");
            af.a(this.f46a).a(au.ENABLE_PUSH, "");
            auVar = au.DISABLE_PUSH;
        } else {
            af.a(this.f46a).a(au.ENABLE_PUSH, "syncing");
            af.a(this.f46a).a(au.DISABLE_PUSH, "");
            auVar = au.ENABLE_PUSH;
        }
        a(str, auVar, true, (HashMap<String, String>) null);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m29a() {
        return this.f53a && 1 == b.m36a(this.f46a).a();
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m30a(int i) {
        if (!b.m36a(this.f46a).m43b()) {
            return false;
        }
        c(i);
        iu iuVar = new iu();
        iuVar.a(ba.a());
        iuVar.b(b.m36a(this.f46a).m37a());
        iuVar.d(this.f46a.getPackageName());
        iuVar.c(Cif.ClientABTest.f527a);
        HashMap hashMap = new HashMap();
        iuVar.f666a = hashMap;
        hashMap.put("boot_mode", i + "");
        a(this.f46a).a((ao) iuVar, hv.Notification, false, (ii) null);
        return true;
    }

    /* renamed from: b  reason: collision with other method in class */
    public final void m31b() {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.DISABLE_PUSH");
        c(a2);
    }

    public void b(int i) {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        a2.putExtra(bh.C, this.f46a.getPackageName());
        a2.putExtra(bh.F, i);
        String str = bh.H;
        a2.putExtra(str, bn.b(this.f46a.getPackageName() + i));
        c(a2);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m32b() {
        if (!m29a() || !m26e()) {
            return true;
        }
        if (this.f50a == null) {
            Integer valueOf = Integer.valueOf(bk.a(this.f46a).a());
            this.f50a = valueOf;
            if (valueOf.intValue() == 0) {
                this.f46a.getContentResolver().registerContentObserver(bk.a(this.f46a).m620a(), false, new ar(this, new Handler(Looper.getMainLooper())));
            }
        }
        return this.f50a.intValue() != 0;
    }

    /* renamed from: c  reason: collision with other method in class */
    public void m33c() {
        Intent intent = this.f47a;
        if (intent != null) {
            c(intent);
            this.f47a = null;
        }
    }

    /* renamed from: d  reason: collision with other method in class */
    public void m34d() {
        synchronized (f45a) {
            boolean z = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<a> it = f45a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                a(next.f54a, next.f8692a, next.f55a, false, null, true);
                if (!z) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            f45a.clear();
        }
    }

    /* renamed from: e  reason: collision with other method in class */
    public void m35e() {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION");
        Application application = (Application) bj.a("android.app.ActivityThread", "currentApplication", new Object[0]);
        String packageName = (application == null || application.getApplicationContext() == null) ? null : application.getApplicationContext().getPackageName();
        String packageName2 = this.f46a.getPackageName();
        if (TextUtils.isEmpty(packageName) || packageName.equals(packageName2)) {
            packageName = packageName2;
        } else {
            b.m1a("application package name: " + packageName + ", not equals context package name: " + packageName2);
        }
        a2.putExtra(bh.C, packageName);
        c(a2);
    }

    public void f() {
        Intent a2 = m22a();
        a2.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        a2.putExtra(bh.C, this.f46a.getPackageName());
        a2.putExtra(bh.H, bn.b(this.f46a.getPackageName()));
        c(a2);
    }
}
