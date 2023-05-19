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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6022bn;
import com.xiaomi.push.C6072da;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6264iv;
import com.xiaomi.push.C6274jb;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6238hw;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6279jg;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6377ba;
import com.xiaomi.push.service.C6396bk;
import com.xiaomi.push.service.C6441i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.xiaomi.mipush.sdk.ao */
/* loaded from: classes2.dex */
public class C5928ao {

    /* renamed from: a */
    private static C5928ao f20900a = null;

    /* renamed from: a */
    private static final ArrayList<C5929a> f20901a = new ArrayList<>();

    /* renamed from: b */
    private static boolean f20902b = false;

    /* renamed from: a */
    private Context f20903a;

    /* renamed from: a */
    private Handler f20905a;

    /* renamed from: a */
    private Messenger f20906a;

    /* renamed from: a */
    private boolean f20910a;

    /* renamed from: a */
    private List<Message> f20909a = new ArrayList();

    /* renamed from: c */
    private boolean f20911c = false;

    /* renamed from: a */
    private Intent f20904a = null;

    /* renamed from: a */
    private Integer f20907a = null;

    /* renamed from: a */
    private String f20908a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.mipush.sdk.ao$a */
    /* loaded from: classes2.dex */
    public static class C5929a<T extends InterfaceC6279jg<T, ?>> {

        /* renamed from: a */
        EnumC6237hv f20912a;

        /* renamed from: a */
        T f20913a;

        /* renamed from: a */
        boolean f20914a;

        C5929a() {
        }
    }

    private C5928ao(Context context) {
        this.f20910a = false;
        this.f20905a = null;
        this.f20903a = context.getApplicationContext();
        this.f20910a = m3950c();
        f20902b = m3945d();
        this.f20905a = new HandlerC5930ap(this, Looper.getMainLooper());
        if (C6306l.m1851a(context)) {
            C6441i.m1368a(new C5931aq(this));
        }
        Intent m3957b = m3957b();
        if (m3957b != null) {
            m3953b(m3957b);
        }
    }

    /* renamed from: a */
    private synchronized int m3993a() {
        return this.f20903a.getSharedPreferences("mipush_extra", 0).getInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, -1);
    }

    /* renamed from: a */
    private Intent m3992a() {
        return (!m3989a() || "com.xiaomi.xmsf".equals(this.f20903a.getPackageName())) ? m3943e() : m3947d();
    }

    /* renamed from: a */
    private Message m3983a(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    /* renamed from: a */
    public static synchronized C5928ao m3984a(Context context) {
        C5928ao c5928ao;
        synchronized (C5928ao.class) {
            if (f20900a == null) {
                f20900a = new C5928ao(context);
            }
            c5928ao = f20900a;
        }
        return c5928ao;
    }

    /* renamed from: a */
    private String m3991a() {
        try {
            return this.f20903a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106 ? "com.xiaomi.push.service.XMPushService" : "com.xiaomi.xmsf.push.service.XMPushService";
        } catch (Exception unused) {
            return "com.xiaomi.xmsf.push.service.XMPushService";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3961a(String str, EnumC5935au enumC5935au, boolean z, HashMap<String, String> hashMap) {
        C6263iu c6263iu;
        String str2;
        if (C5938b.m3923a(this.f20903a).m3913b() && C6013bi.m3662b(this.f20903a)) {
            C6263iu c6263iu2 = new C6263iu();
            c6263iu2.m2185a(true);
            Intent m3992a = m3992a();
            if (TextUtils.isEmpty(str)) {
                str = C6377ba.m1518a();
                c6263iu2.m2189a(str);
                c6263iu = z ? new C6263iu(str, true) : null;
                synchronized (C5919af.class) {
                    C5919af.m4028a(this.f20903a).m4024a(str);
                }
            } else {
                c6263iu2.m2189a(str);
                c6263iu = z ? new C6263iu(str, true) : null;
            }
            switch (C5934at.f20919a[enumC5935au.ordinal()]) {
                case 1:
                    EnumC6248if enumC6248if = EnumC6248if.DisablePushMessage;
                    c6263iu2.m2176c(enumC6248if.f22236a);
                    c6263iu.m2176c(enumC6248if.f22236a);
                    if (hashMap != null) {
                        c6263iu2.m2186a(hashMap);
                        c6263iu.m2186a(hashMap);
                    }
                    str2 = "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE";
                    m3992a.setAction(str2);
                    break;
                case 2:
                    EnumC6248if enumC6248if2 = EnumC6248if.EnablePushMessage;
                    c6263iu2.m2176c(enumC6248if2.f22236a);
                    c6263iu.m2176c(enumC6248if2.f22236a);
                    if (hashMap != null) {
                        c6263iu2.m2186a(hashMap);
                        c6263iu.m2186a(hashMap);
                    }
                    str2 = "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE";
                    m3992a.setAction(str2);
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                    c6263iu2.m2176c(EnumC6248if.ThirdPartyRegUpdate.f22236a);
                    if (hashMap != null) {
                        c6263iu2.m2186a(hashMap);
                        break;
                    }
                    break;
            }
            AbstractC5876b.m4137e("type:" + enumC5935au + ", " + str);
            c6263iu2.m2180b(C5938b.m3923a(this.f20903a).m3928a());
            c6263iu2.m2173d(this.f20903a.getPackageName());
            EnumC6237hv enumC6237hv = EnumC6237hv.Notification;
            m3968a((C5928ao) c6263iu2, enumC6237hv, false, (C6251ii) null);
            if (z) {
                c6263iu.m2180b(C5938b.m3923a(this.f20903a).m3928a());
                c6263iu.m2173d(this.f20903a.getPackageName());
                Context context = this.f20903a;
                byte[] m1933a = C6278jf.m1933a(C5922ai.m4017a(context, c6263iu, enumC6237hv, false, context.getPackageName(), C5938b.m3923a(this.f20903a).m3928a()));
                if (m1933a != null) {
                    C6072da.m3401a(this.f20903a.getPackageName(), this.f20903a, c6263iu, enumC6237hv, m1933a.length);
                    m3992a.putExtra("mipush_payload", m1933a);
                    m3992a.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
                    m3992a.putExtra("mipush_app_id", C5938b.m3923a(this.f20903a).m3928a());
                    m3992a.putExtra("mipush_app_token", C5938b.m3923a(this.f20903a).m3915b());
                    m3948c(m3992a);
                }
            }
            Message obtain = Message.obtain();
            obtain.what = 19;
            int ordinal = enumC5935au.ordinal();
            obtain.obj = str;
            obtain.arg1 = ordinal;
            this.f20905a.sendMessageDelayed(obtain, 5000L);
        }
    }

    /* renamed from: b */
    private Intent m3957b() {
        if ("com.xiaomi.xmsf".equals(this.f20903a.getPackageName())) {
            AbstractC5876b.m4139c("pushChannel xmsf create own channel");
            return m3943e();
        }
        return m3952c();
    }

    /* renamed from: b */
    private void m3953b(Intent intent) {
        try {
            if (C6306l.m1853a() || Build.VERSION.SDK_INT < 26) {
                this.f20903a.startService(intent);
            } else {
                m3944d(intent);
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }

    /* renamed from: c */
    private Intent m3952c() {
        if (m3989a()) {
            AbstractC5876b.m4139c("pushChannel app start miui china channel");
            return m3947d();
        }
        AbstractC5876b.m4139c("pushChannel app start  own channel");
        return m3943e();
    }

    /* renamed from: c */
    private synchronized void m3949c(int i) {
        this.f20903a.getSharedPreferences("mipush_extra", 0).edit().putInt(Constants.EXTRA_KEY_BOOT_SERVICE_MODE, i).commit();
    }

    /* renamed from: c */
    private void m3948c(Intent intent) {
        C6372ax m1530a = C6372ax.m1530a(this.f20903a);
        int m2484a = EnumC6243ia.ServiceBootMode.m2484a();
        EnumC6238hw enumC6238hw = EnumC6238hw.START;
        int m1534a = m1530a.m1534a(m2484a, enumC6238hw.m2563a());
        int m3993a = m3993a();
        EnumC6238hw enumC6238hw2 = EnumC6238hw.BIND;
        boolean z = m1534a == enumC6238hw2.m2563a() && f20902b;
        int m2563a = z ? enumC6238hw2.m2563a() : enumC6238hw.m2563a();
        if (m2563a != m3993a) {
            m3987a(m2563a);
        }
        if (z) {
            m3944d(intent);
        } else {
            m3953b(intent);
        }
    }

    /* renamed from: c */
    private boolean m3950c() {
        try {
            PackageInfo packageInfo = this.f20903a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 105;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: d */
    private Intent m3947d() {
        Intent intent = new Intent();
        String packageName = this.f20903a.getPackageName();
        intent.setPackage("com.xiaomi.xmsf");
        intent.setClassName("com.xiaomi.xmsf", m3991a());
        intent.putExtra("mipush_app_package", packageName);
        m3939g();
        return intent;
    }

    /* renamed from: d */
    private synchronized void m3944d(Intent intent) {
        if (this.f20911c) {
            Message m3983a = m3983a(intent);
            if (this.f20909a.size() >= 50) {
                this.f20909a.remove(0);
            }
            this.f20909a.add(m3983a);
            return;
        }
        if (this.f20906a == null) {
            this.f20903a.bindService(intent, new ServiceConnectionC5933as(this), 1);
            this.f20911c = true;
            this.f20909a.clear();
            this.f20909a.add(m3983a(intent));
        } else {
            try {
                this.f20906a.send(m3983a(intent));
            } catch (RemoteException unused) {
                this.f20906a = null;
                this.f20911c = false;
            }
        }
    }

    /* renamed from: d */
    private boolean m3945d() {
        if (m3989a()) {
            try {
                return this.f20903a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 108;
            } catch (Exception unused) {
            }
        }
        return true;
    }

    /* renamed from: e */
    private Intent m3943e() {
        Intent intent = new Intent();
        String packageName = this.f20903a.getPackageName();
        m3938h();
        intent.setComponent(new ComponentName(this.f20903a, "com.xiaomi.push.service.XMPushService"));
        intent.putExtra("mipush_app_package", packageName);
        return intent;
    }

    /* renamed from: e */
    private boolean m3941e() {
        String packageName = this.f20903a.getPackageName();
        return packageName.contains("miui") || packageName.contains("xiaomi") || (this.f20903a.getApplicationInfo().flags & 1) != 0;
    }

    /* renamed from: g */
    private void m3939g() {
        try {
            PackageManager packageManager = this.f20903a.getPackageManager();
            ComponentName componentName = new ComponentName(this.f20903a, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) == 2) {
                return;
            }
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: h */
    private void m3938h() {
        try {
            PackageManager packageManager = this.f20903a.getPackageManager();
            ComponentName componentName = new ComponentName(this.f20903a, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) == 1) {
                return;
            }
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m3990a() {
        m3953b(m3992a());
    }

    /* renamed from: a */
    public void m3988a(int i) {
        m3986a(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m3986a(int i, int i2) {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        m3992a.putExtra(AbstractC6391bh.f23062C, this.f20903a.getPackageName());
        m3992a.putExtra(AbstractC6391bh.f23063D, i);
        m3992a.putExtra(AbstractC6391bh.f23064E, i2);
        m3948c(m3992a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m3985a(int i, String str) {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.thirdparty");
        m3992a.putExtra("com.xiaomi.mipush.thirdparty_LEVEL", i);
        m3992a.putExtra("com.xiaomi.mipush.thirdparty_DESC", str);
        m3953b(m3992a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m3982a(Intent intent) {
        intent.fillIn(m3992a(), 24);
        m3948c(intent);
    }

    /* renamed from: a */
    public final void m3973a(C6241hz c6241hz) {
        Intent m3992a = m3992a();
        byte[] m1933a = C6278jf.m1933a(c6241hz);
        if (m1933a == null) {
            AbstractC5876b.m4147a("send TinyData failed, because tinyDataBytes is null.");
            return;
        }
        m3992a.setAction("com.xiaomi.mipush.SEND_TINYDATA");
        m3992a.putExtra("mipush_payload", m1933a);
        m3953b(m3992a);
    }

    /* renamed from: a */
    public final void m3972a(C6264iv c6264iv, boolean z) {
        C6129en.m3082a(this.f20903a.getApplicationContext()).m3076a(this.f20903a.getPackageName(), "E100003", c6264iv.m2158a(), 6001, null);
        this.f20904a = null;
        C5938b.m3923a(this.f20903a).f20932a = c6264iv.m2158a();
        Intent m3992a = m3992a();
        byte[] m1933a = C6278jf.m1933a(C5922ai.m4018a(this.f20903a, c6264iv, EnumC6237hv.Registration));
        if (m1933a == null) {
            AbstractC5876b.m4147a("register fail, because msgBytes is null.");
            return;
        }
        m3992a.setAction("com.xiaomi.mipush.REGISTER_APP");
        m3992a.putExtra("mipush_app_id", C5938b.m3923a(this.f20903a).m3928a());
        m3992a.putExtra("mipush_payload", m1933a);
        m3992a.putExtra("mipush_session", this.f20908a);
        m3992a.putExtra("mipush_env_chanage", z);
        m3992a.putExtra("mipush_env_type", C5938b.m3923a(this.f20903a).m3929a());
        if (C6013bi.m3662b(this.f20903a) && m3955b()) {
            m3948c(m3992a);
        } else {
            this.f20904a = m3992a;
        }
    }

    /* renamed from: a */
    public final void m3971a(C6274jb c6274jb) {
        byte[] m1933a = C6278jf.m1933a(C5922ai.m4018a(this.f20903a, c6274jb, EnumC6237hv.UnRegistration));
        if (m1933a == null) {
            AbstractC5876b.m4147a("unregister fail, because msgBytes is null.");
            return;
        }
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.UNREGISTER_APP");
        m3992a.putExtra("mipush_app_id", C5938b.m3923a(this.f20903a).m3928a());
        m3992a.putExtra("mipush_payload", m1933a);
        m3948c(m3992a);
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3970a(T t, EnumC6237hv enumC6237hv, C6251ii c6251ii) {
        m3968a((C5928ao) t, enumC6237hv, !enumC6237hv.equals(EnumC6237hv.Registration), c6251ii);
    }

    /* renamed from: a */
    public <T extends InterfaceC6279jg<T, ?>> void m3969a(T t, EnumC6237hv enumC6237hv, boolean z) {
        C5929a c5929a = new C5929a();
        c5929a.f20913a = t;
        c5929a.f20912a = enumC6237hv;
        c5929a.f20914a = z;
        ArrayList<C5929a> arrayList = f20901a;
        synchronized (arrayList) {
            arrayList.add(c5929a);
            if (arrayList.size() > 10) {
                arrayList.remove(0);
            }
        }
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3968a(T t, EnumC6237hv enumC6237hv, boolean z, C6251ii c6251ii) {
        m3966a(t, enumC6237hv, z, true, c6251ii, true);
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3967a(T t, EnumC6237hv enumC6237hv, boolean z, C6251ii c6251ii, boolean z2) {
        m3966a(t, enumC6237hv, z, true, c6251ii, z2);
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3966a(T t, EnumC6237hv enumC6237hv, boolean z, boolean z2, C6251ii c6251ii, boolean z3) {
        m3965a(t, enumC6237hv, z, z2, c6251ii, z3, this.f20903a.getPackageName(), C5938b.m3923a(this.f20903a).m3928a());
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3965a(T t, EnumC6237hv enumC6237hv, boolean z, boolean z2, C6251ii c6251ii, boolean z3, String str, String str2) {
        m3964a(t, enumC6237hv, z, z2, c6251ii, z3, str, str2, true);
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3964a(T t, EnumC6237hv enumC6237hv, boolean z, boolean z2, C6251ii c6251ii, boolean z3, String str, String str2, boolean z4) {
        m3963a(t, enumC6237hv, z, z2, c6251ii, z3, str, str2, z4, true);
    }

    /* renamed from: a */
    public final <T extends InterfaceC6279jg<T, ?>> void m3963a(T t, EnumC6237hv enumC6237hv, boolean z, boolean z2, C6251ii c6251ii, boolean z3, String str, String str2, boolean z4, boolean z5) {
        if (z5 && !C5938b.m3923a(this.f20903a).m3908c()) {
            if (z2) {
                m3969a((C5928ao) t, enumC6237hv, z);
                return;
            } else {
                AbstractC5876b.m4147a("drop the message before initialization.");
                return;
            }
        }
        C6260ir m4017a = z4 ? C5922ai.m4017a(this.f20903a, t, enumC6237hv, z, str, str2) : C5922ai.m4014b(this.f20903a, t, enumC6237hv, z, str, str2);
        if (c6251ii != null) {
            m4017a.m2227a(c6251ii);
        }
        byte[] m1933a = C6278jf.m1933a(m4017a);
        if (m1933a == null) {
            AbstractC5876b.m4147a("send message fail, because msgBytes is null.");
            return;
        }
        C6072da.m3401a(this.f20903a.getPackageName(), this.f20903a, t, enumC6237hv, m1933a.length);
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.SEND_MESSAGE");
        m3992a.putExtra("mipush_payload", m1933a);
        m3992a.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", z3);
        m3948c(m3992a);
    }

    /* renamed from: a */
    public final void m3962a(String str, EnumC5935au enumC5935au, EnumC5942e enumC5942e) {
        C5919af.m4028a(this.f20903a).m4026a(enumC5935au, "syncing");
        m3961a(str, enumC5935au, false, C5946i.m3870a(this.f20903a, enumC5942e));
    }

    /* renamed from: a */
    public void m3960a(String str, String str2) {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        m3992a.putExtra(AbstractC6391bh.f23062C, this.f20903a.getPackageName());
        m3992a.putExtra(AbstractC6391bh.f23068I, str);
        m3992a.putExtra(AbstractC6391bh.f23069J, str2);
        m3948c(m3992a);
    }

    /* renamed from: a */
    public final void m3959a(boolean z) {
        m3958a(z, (String) null);
    }

    /* renamed from: a */
    public final void m3958a(boolean z, String str) {
        EnumC5935au enumC5935au;
        C5919af m4028a;
        EnumC5935au enumC5935au2;
        if (z) {
            C5919af m4028a2 = C5919af.m4028a(this.f20903a);
            enumC5935au = EnumC5935au.DISABLE_PUSH;
            m4028a2.m4026a(enumC5935au, "syncing");
            m4028a = C5919af.m4028a(this.f20903a);
            enumC5935au2 = EnumC5935au.ENABLE_PUSH;
        } else {
            C5919af m4028a3 = C5919af.m4028a(this.f20903a);
            enumC5935au = EnumC5935au.ENABLE_PUSH;
            m4028a3.m4026a(enumC5935au, "syncing");
            m4028a = C5919af.m4028a(this.f20903a);
            enumC5935au2 = EnumC5935au.DISABLE_PUSH;
        }
        m4028a.m4026a(enumC5935au2, "");
        m3961a(str, enumC5935au, true, (HashMap<String, String>) null);
    }

    /* renamed from: a */
    public boolean m3989a() {
        return this.f20910a && 1 == C5938b.m3923a(this.f20903a).m3929a();
    }

    /* renamed from: a */
    public boolean m3987a(int i) {
        if (C5938b.m3923a(this.f20903a).m3913b()) {
            m3949c(i);
            C6263iu c6263iu = new C6263iu();
            c6263iu.m2189a(C6377ba.m1518a());
            c6263iu.m2180b(C5938b.m3923a(this.f20903a).m3928a());
            c6263iu.m2173d(this.f20903a.getPackageName());
            c6263iu.m2176c(EnumC6248if.ClientABTest.f22236a);
            HashMap hashMap = new HashMap();
            c6263iu.f22500a = hashMap;
            hashMap.put("boot_mode", i + "");
            m3984a(this.f20903a).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m3956b() {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.DISABLE_PUSH");
        m3948c(m3992a);
    }

    /* renamed from: b */
    public void m3954b(int i) {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        m3992a.putExtra(AbstractC6391bh.f23062C, this.f20903a.getPackageName());
        m3992a.putExtra(AbstractC6391bh.f23065F, i);
        String str = AbstractC6391bh.f23067H;
        m3992a.putExtra(str, C6022bn.m3622b(this.f20903a.getPackageName() + i));
        m3948c(m3992a);
    }

    /* renamed from: b */
    public boolean m3955b() {
        if (m3989a() && m3941e()) {
            if (this.f20907a == null) {
                Integer valueOf = Integer.valueOf(C6396bk.m1466a(this.f20903a).m1469a());
                this.f20907a = valueOf;
                if (valueOf.intValue() == 0) {
                    this.f20903a.getContentResolver().registerContentObserver(C6396bk.m1466a(this.f20903a).m1468a(), false, new C5932ar(this, new Handler(Looper.getMainLooper())));
                }
            }
            return this.f20907a.intValue() != 0;
        }
        return true;
    }

    /* renamed from: c */
    public void m3951c() {
        Intent intent = this.f20904a;
        if (intent != null) {
            m3948c(intent);
            this.f20904a = null;
        }
    }

    /* renamed from: d */
    public void m3946d() {
        ArrayList<C5929a> arrayList = f20901a;
        synchronized (arrayList) {
            boolean z = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<C5929a> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                C5929a next = it2.next();
                m3966a(next.f20913a, next.f20912a, next.f20914a, false, null, true);
                if (!z) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            f20901a.clear();
        }
    }

    /* renamed from: e */
    public void m3942e() {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION");
        Application application = (Application) C6016bj.m3646a("android.app.ActivityThread", "currentApplication", new Object[0]);
        String packageName = (application == null || application.getApplicationContext() == null) ? null : application.getApplicationContext().getPackageName();
        String packageName2 = this.f20903a.getPackageName();
        if (TextUtils.isEmpty(packageName) || packageName.equals(packageName2)) {
            packageName = packageName2;
        } else {
            AbstractC5876b.m4147a("application package name: " + packageName + ", not equals context package name: " + packageName2);
        }
        m3992a.putExtra(AbstractC6391bh.f23062C, packageName);
        m3948c(m3992a);
    }

    /* renamed from: f */
    public void m3940f() {
        Intent m3992a = m3992a();
        m3992a.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        m3992a.putExtra(AbstractC6391bh.f23062C, this.f20903a.getPackageName());
        m3992a.putExtra(AbstractC6391bh.f23067H, C6022bn.m3622b(this.f20903a.getPackageName()));
        m3948c(m3992a);
    }
}
