package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.channel.commonutils.string.c;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.ao;
import com.xiaomi.push.service.aq;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ag;
import com.xiaomi.xmpush.thrift.an;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.e;
import com.xiaomi.xmpush.thrift.f;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class z {
    private static z b;
    private static boolean f = false;
    private static final ArrayList<a> g = new ArrayList<>();
    private boolean a = false;
    /* access modifiers changed from: private */
    public Context c;
    private String d;
    /* access modifiers changed from: private */
    public Messenger e;
    private Handler h = null;
    /* access modifiers changed from: private */
    public List<Message> i = new ArrayList();
    /* access modifiers changed from: private */
    public boolean j = false;
    private Intent k = null;
    /* access modifiers changed from: private */
    public Integer l = null;

    static class a<T extends org.apache.thrift.a<T, ?>> {
        T a;
        com.xiaomi.xmpush.thrift.a b;
        boolean c;

        a() {
        }
    }

    private z(Context context) {
        this.c = context.getApplicationContext();
        this.d = null;
        this.a = i();
        a(j());
        f = n();
        this.h = new aa(this, Looper.getMainLooper());
    }

    public static z a(Context context) {
        if (b == null) {
            b = new z(context);
        }
        return b;
    }

    private void a(Intent intent) {
        try {
            this.c.startService(intent);
        } catch (Exception e2) {
            b.a((Throwable) e2);
        }
    }

    /* access modifiers changed from: private */
    public final void a(String str, boolean z) {
        af afVar;
        int i2 = 0;
        if (c.a(this.c).b() && d.d(this.c)) {
            af afVar2 = new af();
            Intent j2 = j();
            if (TextUtils.isEmpty(str)) {
                str = MiPushClient.generatePacketID();
                afVar2.a(str);
                afVar = new af(str, true);
                synchronized (u.class) {
                    u.a(this.c).a(str);
                }
            } else {
                afVar2.a(str);
                afVar = new af(str, true);
            }
            if (z) {
                afVar2.c(p.DisablePushMessage.T);
                afVar.c(p.DisablePushMessage.T);
                j2.setAction("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE");
            } else {
                afVar2.c(p.EnablePushMessage.T);
                afVar.c(p.EnablePushMessage.T);
                j2.setAction("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE");
            }
            afVar2.b(c.a(this.c).c());
            afVar2.d(this.c.getPackageName());
            a(afVar2, com.xiaomi.xmpush.thrift.a.Notification, false, null);
            afVar.b(c.a(this.c).c());
            afVar.d(this.c.getPackageName());
            byte[] a2 = ar.a(v.a(this.c, afVar, com.xiaomi.xmpush.thrift.a.Notification, false, this.c.getPackageName(), c.a(this.c).c()));
            if (a2 != null) {
                j2.putExtra("mipush_payload", a2);
                j2.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
                j2.putExtra("mipush_app_id", c.a(this.c).c());
                j2.putExtra("mipush_app_token", c.a(this.c).d());
                b(j2);
            }
            Message obtain = Message.obtain();
            if (z) {
                i2 = 1;
            }
            obtain.obj = str;
            obtain.arg1 = i2;
            this.h.sendMessageDelayed(obtain, 5000);
        }
    }

    private void b(Intent intent) {
        int a2 = aj.a(this.c).a(f.ServiceBootMode.a(), com.xiaomi.xmpush.thrift.b.START.a());
        int h2 = h();
        boolean z = a2 == com.xiaomi.xmpush.thrift.b.BIND.a() && f;
        int a3 = z ? com.xiaomi.xmpush.thrift.b.BIND.a() : com.xiaomi.xmpush.thrift.b.START.a();
        if (a3 != h2) {
            c(a3);
        }
        if (z) {
            c(intent);
        } else {
            a(intent);
        }
    }

    private synchronized void c(Intent intent) {
        if (this.j) {
            Message d2 = d(intent);
            if (this.i.size() >= 50) {
                this.i.remove(0);
            }
            this.i.add(d2);
        } else if (this.e == null) {
            Context context = this.c;
            ac acVar = new ac(this);
            Context context2 = this.c;
            context.bindService(intent, acVar, 1);
            this.j = true;
            this.i.clear();
            this.i.add(d(intent));
        } else {
            try {
                this.e.send(d(intent));
            } catch (RemoteException e2) {
                b.a((Throwable) e2);
            }
        }
        return;
    }

    private Message d(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    private synchronized void d(int i2) {
        this.c.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).edit().putInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, i2).commit();
    }

    private synchronized int h() {
        return this.c.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).getInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, -1);
    }

    private boolean i() {
        try {
            PackageInfo packageInfo = this.c.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            return packageInfo != null && packageInfo.versionCode >= 105;
        } catch (Throwable th) {
            return false;
        }
    }

    private Intent j() {
        Intent intent = new Intent();
        String packageName = this.c.getPackageName();
        if (!c() || "com.xiaomi.xmsf".equals(packageName)) {
            m();
            intent.setComponent(new ComponentName(this.c, "com.xiaomi.push.service.XMPushService"));
            intent.putExtra("mipush_app_package", packageName);
        } else {
            intent.setPackage("com.xiaomi.xmsf");
            intent.setClassName("com.xiaomi.xmsf", k());
            intent.putExtra("mipush_app_package", packageName);
            l();
        }
        return intent;
    }

    private String k() {
        try {
            if (this.c.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106) {
                return "com.xiaomi.push.service.XMPushService";
            }
        } catch (Exception e2) {
        }
        return "com.xiaomi.xmsf.push.service.XMPushService";
    }

    private void l() {
        try {
            this.c.getPackageManager().setComponentEnabledSetting(new ComponentName(this.c, "com.xiaomi.push.service.XMPushService"), 2, 1);
        } catch (Throwable th) {
        }
    }

    private void m() {
        try {
            this.c.getPackageManager().setComponentEnabledSetting(new ComponentName(this.c, "com.xiaomi.push.service.XMPushService"), 1, 1);
        } catch (Throwable th) {
        }
    }

    private boolean n() {
        if (!c()) {
            return true;
        }
        try {
            return this.c.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 108;
        } catch (Exception e2) {
            return true;
        }
    }

    private boolean o() {
        String packageName = this.c.getPackageName();
        return packageName.contains("miui") || packageName.contains(UserInfo.TYPE_XIAOMI) || (this.c.getApplicationInfo().flags & 1) != 0;
    }

    public void a() {
        a(j());
    }

    public void a(int i2) {
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        j2.putExtra(ao.y, this.c.getPackageName());
        j2.putExtra(ao.z, i2);
        b(j2);
    }

    public final void a(ag agVar, boolean z) {
        this.k = null;
        Intent j2 = j();
        byte[] a2 = ar.a(v.a(this.c, agVar, com.xiaomi.xmpush.thrift.a.Registration));
        if (a2 == null) {
            b.a("register fail, because msgBytes is null.");
            return;
        }
        j2.setAction("com.xiaomi.mipush.REGISTER_APP");
        j2.putExtra("mipush_app_id", c.a(this.c).c());
        j2.putExtra("mipush_payload", a2);
        j2.putExtra("mipush_session", this.d);
        j2.putExtra("mipush_env_chanage", z);
        j2.putExtra("mipush_env_type", c.a(this.c).l());
        if (!d.d(this.c) || !g()) {
            this.k = j2;
        } else {
            b(j2);
        }
    }

    public final void a(an anVar) {
        byte[] a2 = ar.a(v.a(this.c, anVar, com.xiaomi.xmpush.thrift.a.UnRegistration));
        if (a2 == null) {
            b.a("unregister fail, because msgBytes is null.");
            return;
        }
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.UNREGISTER_APP");
        j2.putExtra("mipush_app_id", c.a(this.c).c());
        j2.putExtra("mipush_payload", a2);
        b(j2);
    }

    public final void a(e eVar) {
        Intent j2 = j();
        byte[] a2 = ar.a(eVar);
        if (a2 == null) {
            b.a("send tinydata failed, because tinyDataBytes is null.");
            return;
        }
        j2.setAction("com.xiaomi.mipush.SEND_TINYDATA");
        j2.putExtra("mipush_payload", a2);
        a(j2);
    }

    public void a(String str, String str2) {
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        j2.putExtra(ao.y, this.c.getPackageName());
        j2.putExtra(ao.D, str);
        j2.putExtra(ao.E, str2);
        b(j2);
    }

    public final <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, s sVar) {
        a(t, aVar, !aVar.equals(com.xiaomi.xmpush.thrift.a.Registration), sVar);
    }

    public <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, boolean z) {
        a aVar2 = new a();
        aVar2.a = t;
        aVar2.b = aVar;
        aVar2.c = z;
        synchronized (g) {
            g.add(aVar2);
            if (g.size() > 10) {
                g.remove(0);
            }
        }
    }

    public final <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, boolean z, s sVar) {
        a(t, aVar, z, true, sVar, true);
    }

    public final <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, boolean z, s sVar, boolean z2) {
        a(t, aVar, z, true, sVar, z2);
    }

    public final <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, boolean z, boolean z2, s sVar, boolean z3) {
        a(t, aVar, z, z2, sVar, z3, this.c.getPackageName(), c.a(this.c).c());
    }

    public final <T extends org.apache.thrift.a<T, ?>> void a(T t, com.xiaomi.xmpush.thrift.a aVar, boolean z, boolean z2, s sVar, boolean z3, String str, String str2) {
        if (c.a(this.c).i()) {
            ac a2 = v.a(this.c, t, aVar, z, str, str2);
            if (sVar != null) {
                a2.a(sVar);
            }
            byte[] a3 = ar.a(a2);
            if (a3 == null) {
                b.a("send message fail, because msgBytes is null.");
                return;
            }
            Intent j2 = j();
            j2.setAction("com.xiaomi.mipush.SEND_MESSAGE");
            j2.putExtra("mipush_payload", a3);
            j2.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", z3);
            b(j2);
        } else if (z2) {
            a(t, aVar, z);
        } else {
            b.a("drop the message before initialization.");
        }
    }

    public final void a(boolean z) {
        a(z, (String) null);
    }

    public final void a(boolean z, String str) {
        if (z) {
            u.a(this.c).f("disable_syncing");
        } else {
            u.a(this.c).f("enable_syncing");
        }
        a(str, z);
    }

    public final void b() {
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.DISABLE_PUSH");
        b(j2);
    }

    public void b(int i2) {
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        j2.putExtra(ao.y, this.c.getPackageName());
        j2.putExtra(ao.A, i2);
        j2.putExtra(ao.C, c.b(this.c.getPackageName() + i2));
        b(j2);
    }

    public boolean c() {
        return this.a && 1 == c.a(this.c).l();
    }

    public boolean c(int i2) {
        if (!c.a(this.c).b()) {
            return false;
        }
        d(i2);
        af afVar = new af();
        afVar.a(MiPushClient.generatePacketID());
        afVar.b(c.a(this.c).c());
        afVar.d(this.c.getPackageName());
        afVar.c(p.ClientABTest.T);
        afVar.h = new HashMap();
        afVar.h.put("boot_mode", i2 + "");
        a(this.c).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, false, null);
        return true;
    }

    public void d() {
        if (this.k != null) {
            b(this.k);
            this.k = null;
        }
    }

    public void e() {
        synchronized (g) {
            Iterator it = g.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                a(aVar.a, aVar.b, aVar.c, false, null, true);
            }
            g.clear();
        }
    }

    public void f() {
        Intent j2 = j();
        j2.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        j2.putExtra(ao.y, this.c.getPackageName());
        j2.putExtra(ao.C, c.b(this.c.getPackageName()));
        b(j2);
    }

    public boolean g() {
        if (!c() || !o()) {
            return true;
        }
        if (this.l == null) {
            this.l = Integer.valueOf(aq.a(this.c).b());
            if (this.l.intValue() == 0) {
                this.c.getContentResolver().registerContentObserver(aq.a(this.c).c(), false, new ab(this, new Handler(Looper.getMainLooper())));
            }
        }
        return this.l.intValue() != 0;
    }
}
