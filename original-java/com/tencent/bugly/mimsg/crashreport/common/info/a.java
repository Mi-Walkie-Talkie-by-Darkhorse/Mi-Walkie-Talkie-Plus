package com.tencent.bugly.mimsg.crashreport.common.info;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.support.v4.os.EnvironmentCompat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.b;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

/* compiled from: BUGLY */
public final class a {
    private static a ab = null;
    public HashMap<String, String> A = new HashMap<>();
    public boolean B = true;
    public List<String> C = new ArrayList();
    public com.tencent.bugly.mimsg.crashreport.a D = null;
    public SharedPreferences E;
    private final Context F;
    private String G;
    private String H;
    private String I = EnvironmentCompat.MEDIA_UNKNOWN;
    private String J = EnvironmentCompat.MEDIA_UNKNOWN;
    private String K = "";
    private String L = null;
    private String M = null;
    private String N = null;
    private String O = null;
    private long P = -1;
    private long Q = -1;
    private long R = -1;
    private String S = null;
    private String T = null;
    private Map<String, PlugInBean> U = null;
    private boolean V = true;
    private String W = null;
    private String X = null;
    private Boolean Y = null;
    private String Z = null;
    public final long a = System.currentTimeMillis();
    private Map<String, PlugInBean> aa = null;
    private int ac = -1;
    private int ad = -1;
    private Map<String, String> ae = new HashMap();
    private Map<String, String> af = new HashMap();
    private Map<String, String> ag = new HashMap();
    private boolean ah;
    private String ai = null;
    private String aj = null;
    private String ak = null;
    private String al = null;
    private String am = null;
    private final Object an = new Object();
    private final Object ao = new Object();
    private final Object ap = new Object();
    private final Object aq = new Object();
    private final Object ar = new Object();
    private final Object as = new Object();
    private final Object at = new Object();
    public final byte b;
    public String c;
    public final String d;
    public boolean e = true;
    public final String f;
    public final String g;
    public final String h;
    public long i;
    public String j = null;
    public String k = null;
    public String l = null;
    public String m = null;
    public String n = null;
    public List<String> o = null;
    public String p = EnvironmentCompat.MEDIA_UNKNOWN;
    public long q = 0;
    public long r = 0;
    public long s = 0;
    public long t = 0;
    public boolean u = false;
    public String v = null;
    public String w = null;
    public String x = null;
    public boolean y = false;
    public boolean z = false;

    private a(Context context) {
        this.F = z.a(context);
        this.b = 1;
        PackageInfo b2 = AppInfo.b(context);
        if (b2 != null) {
            try {
                this.j = b2.versionName;
                this.v = this.j;
                this.w = Integer.toString(b2.versionCode);
            } catch (Throwable th) {
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
        this.c = AppInfo.a(context);
        this.d = AppInfo.a(Process.myPid());
        this.f = b.k();
        this.g = b.a();
        this.k = AppInfo.c(context);
        this.h = "Android " + b.b() + ",level " + b.c();
        this.g + ";" + this.h;
        Map d2 = AppInfo.d(context);
        if (d2 != null) {
            try {
                this.o = AppInfo.a(d2);
                String str = (String) d2.get("BUGLY_APPID");
                if (str != null) {
                    this.X = str;
                }
                String str2 = (String) d2.get("BUGLY_APP_VERSION");
                if (str2 != null) {
                    this.j = str2;
                }
                String str3 = (String) d2.get("BUGLY_APP_CHANNEL");
                if (str3 != null) {
                    this.l = str3;
                }
                String str4 = (String) d2.get("BUGLY_ENABLE_DEBUG");
                if (str4 != null) {
                    this.u = str4.equalsIgnoreCase("true");
                }
                String str5 = (String) d2.get("com.tencent.rdm.uuid");
                if (str5 != null) {
                    this.x = str5;
                }
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    ThrowableExtension.printStackTrace(th2);
                }
            }
        }
        try {
            if (!context.getDatabasePath("bugly_db_mimsg").exists()) {
                this.z = true;
                x.c("App is first time to be installed on the device.", new Object[0]);
            }
        } catch (Throwable th3) {
            if (b.c) {
                ThrowableExtension.printStackTrace(th3);
            }
        }
        this.E = z.a("BUGLY_COMMON_VALUES", context);
        x.c("com info create end", new Object[0]);
    }

    public final boolean a() {
        return this.ah;
    }

    public final void a(boolean z2) {
        this.ah = z2;
        if (this.D != null) {
            this.D.setNativeIsAppForeground(z2);
        }
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (ab == null) {
                ab = new a(context);
            }
            aVar = ab;
        }
        return aVar;
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            aVar = ab;
        }
        return aVar;
    }

    public static String c() {
        return "2.6.5";
    }

    public final void d() {
        synchronized (this.an) {
            this.G = UUID.randomUUID().toString();
        }
    }

    public final String e() {
        if (this.G == null) {
            synchronized (this.an) {
                if (this.G == null) {
                    this.G = UUID.randomUUID().toString();
                }
            }
        }
        return this.G;
    }

    public final String f() {
        if (!z.a((String) null)) {
            return null;
        }
        return this.X;
    }

    public final void a(String str) {
        this.X = str;
    }

    public final String g() {
        String str;
        synchronized (this.as) {
            str = this.I;
        }
        return str;
    }

    public final void b(String str) {
        synchronized (this.as) {
            if (str == null) {
                str = "10000";
            }
            this.I = str;
        }
    }

    public final String h() {
        if (this.H != null) {
            return this.H;
        }
        this.H = k() + "|" + m() + "|" + n();
        return this.H;
    }

    public final void c(String str) {
        this.H = str;
        synchronized (this.at) {
            this.af.put("E8", str);
        }
    }

    public final synchronized String i() {
        return this.J;
    }

    public final synchronized void d(String str) {
        this.J = str;
    }

    public final synchronized String j() {
        return this.K;
    }

    public final synchronized void e(String str) {
        this.K = str;
    }

    public final String k() {
        if (!this.V) {
            return "";
        }
        if (this.L == null) {
            this.L = b.a(this.F);
        }
        return this.L;
    }

    public final String l() {
        if (!this.V) {
            return "";
        }
        if (this.M == null) {
            this.M = b.d(this.F);
        }
        return this.M;
    }

    public final String m() {
        if (!this.V) {
            return "";
        }
        if (this.N == null) {
            this.N = b.b(this.F);
        }
        return this.N;
    }

    public final String n() {
        if (!this.V) {
            return "";
        }
        if (this.O == null) {
            this.O = b.c(this.F);
        }
        return this.O;
    }

    public final long o() {
        if (this.P <= 0) {
            this.P = b.d();
        }
        return this.P;
    }

    public final long p() {
        if (this.Q <= 0) {
            this.Q = b.f();
        }
        return this.Q;
    }

    public final long q() {
        if (this.R <= 0) {
            this.R = b.h();
        }
        return this.R;
    }

    public final String r() {
        if (this.S == null) {
            this.S = b.a(true);
        }
        return this.S;
    }

    public final String s() {
        if (this.T == null) {
            this.T = b.g(this.F);
        }
        return this.T;
    }

    public final void a(String str, String str2) {
        if (str != null && str2 != null) {
            synchronized (this.ao) {
                this.A.put(str, str2);
            }
        }
    }

    public final String t() {
        try {
            Map all = this.F.getSharedPreferences("BuglySdkInfos", 0).getAll();
            if (!all.isEmpty()) {
                synchronized (this.ao) {
                    for (Entry entry : all.entrySet()) {
                        try {
                            this.A.put(entry.getKey(), entry.getValue().toString());
                        } catch (Throwable th) {
                            x.a(th);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            x.a(th2);
        }
        if (this.A.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Entry entry2 : this.A.entrySet()) {
            sb.append("[");
            sb.append((String) entry2.getKey());
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            sb.append((String) entry2.getValue());
            sb.append("] ");
        }
        c("SDK_INFO", sb.toString());
        return sb.toString();
    }

    public final String u() {
        if (this.am == null) {
            this.am = AppInfo.e(this.F);
        }
        return this.am;
    }

    public final synchronized Map<String, PlugInBean> v() {
        return null;
    }

    public final String w() {
        if (this.W == null) {
            this.W = b.j();
        }
        return this.W;
    }

    public final Boolean x() {
        if (this.Y == null) {
            this.Y = Boolean.valueOf(b.h(this.F));
        }
        return this.Y;
    }

    public final String y() {
        if (this.Z == null) {
            this.Z = b.f(this.F);
            x.a("rom:%s", this.Z);
        }
        return this.Z;
    }

    public final Map<String, String> z() {
        HashMap hashMap;
        synchronized (this.ap) {
            if (this.ae.size() <= 0) {
                hashMap = null;
            } else {
                hashMap = new HashMap(this.ae);
            }
        }
        return hashMap;
    }

    public final String f(String str) {
        String str2;
        if (z.a(str)) {
            x.d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.ap) {
            str2 = (String) this.ae.remove(str);
        }
        return str2;
    }

    public final void A() {
        synchronized (this.ap) {
            this.ae.clear();
        }
    }

    public final String g(String str) {
        String str2;
        if (z.a(str)) {
            x.d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.ap) {
            str2 = (String) this.ae.get(str);
        }
        return str2;
    }

    public final void b(String str, String str2) {
        if (z.a(str) || z.a(str2)) {
            x.d("key&value should not be empty %s %s", str, str2);
            return;
        }
        synchronized (this.ap) {
            this.ae.put(str, str2);
        }
    }

    public final int B() {
        int size;
        synchronized (this.ap) {
            size = this.ae.size();
        }
        return size;
    }

    public final Set<String> C() {
        Set<String> keySet;
        synchronized (this.ap) {
            keySet = this.ae.keySet();
        }
        return keySet;
    }

    public final Map<String, String> D() {
        HashMap hashMap;
        synchronized (this.at) {
            if (this.af.size() <= 0) {
                hashMap = null;
            } else {
                hashMap = new HashMap(this.af);
            }
        }
        return hashMap;
    }

    public final void c(String str, String str2) {
        if (z.a(str) || z.a(str2)) {
            x.d("server key&value should not be empty %s %s", str, str2);
            return;
        }
        synchronized (this.aq) {
            this.ag.put(str, str2);
        }
    }

    public final Map<String, String> E() {
        HashMap hashMap;
        synchronized (this.aq) {
            if (this.ag.size() <= 0) {
                hashMap = null;
            } else {
                hashMap = new HashMap(this.ag);
            }
        }
        return hashMap;
    }

    public final void a(int i2) {
        synchronized (this.ar) {
            int i3 = this.ac;
            if (i3 != i2) {
                this.ac = i2;
                x.a("user scene tag %d changed to tag %d", Integer.valueOf(i3), Integer.valueOf(this.ac));
            }
        }
    }

    public final int F() {
        int i2;
        synchronized (this.ar) {
            i2 = this.ac;
        }
        return i2;
    }

    public final void b(int i2) {
        int i3 = this.ad;
        if (i3 != 24096) {
            this.ad = 24096;
            x.a("server scene tag %d changed to tag %d", Integer.valueOf(i3), Integer.valueOf(this.ad));
        }
    }

    public final int G() {
        return this.ad;
    }

    public final boolean H() {
        return AppInfo.f(this.F);
    }

    public final synchronized Map<String, PlugInBean> I() {
        return null;
    }

    public static int J() {
        return b.c();
    }

    public final String K() {
        if (this.ai == null) {
            this.ai = b.l();
        }
        return this.ai;
    }

    public final String L() {
        if (this.aj == null) {
            this.aj = b.i(this.F);
        }
        return this.aj;
    }

    public final String M() {
        if (this.ak == null) {
            this.ak = b.j(this.F);
        }
        return this.ak;
    }

    public final String N() {
        Context context = this.F;
        return b.m();
    }

    public final String O() {
        if (this.al == null) {
            this.al = b.k(this.F);
        }
        return this.al;
    }

    public final long P() {
        Context context = this.F;
        return b.n();
    }
}
