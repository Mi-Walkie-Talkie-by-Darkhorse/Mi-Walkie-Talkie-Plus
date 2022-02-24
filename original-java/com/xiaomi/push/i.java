package com.xiaomi.push;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static String f9066a = null;

    /* renamed from: a  reason: collision with other field name */
    private static final Set<String> f507a;

    /* renamed from: b  reason: collision with root package name */
    private static String f9067b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f9068c = "";
    private static String d;
    private static String e;
    private static final String f = String.valueOf((char) 2);

    /* renamed from: a  reason: collision with other field name */
    private static final String[] f509a = {"--", "a-", "u-", "v-", "o-", "g-"};

    /* renamed from: a  reason: collision with other field name */
    private static boolean f508a = true;

    static {
        HashSet hashSet = new HashSet();
        f507a = hashSet;
        hashSet.add("com.xiaomi.xmsf");
        f507a.add("com.xiaomi.finddevice");
        f507a.add("com.miui.securitycenter");
    }

    private static double a(double d2) {
        int i = 1;
        while (true) {
            double d3 = i;
            if (d3 >= d2) {
                return d3;
            }
            i <<= 1;
        }
    }

    private static float a(int i) {
        float f2 = ((((((i + 102400) / PKIFailureInfo.signerNotTrusted) + 1) * 512) * 1024) / 1024.0f) / 1024.0f;
        double d2 = f2;
        return d2 > 0.5d ? (float) Math.ceil(d2) : f2;
    }

    @TargetApi(17)
    public static int a() {
        Object a2 = bj.a("android.os.UserHandle", "myUserId", new Object[0]);
        if (a2 == null) {
            return -1;
        }
        return ((Integer) Integer.class.cast(a2)).intValue();
    }

    private static long a(File file) {
        StatFs statFs = new StatFs(file.getPath());
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m366a() {
        return a(b()) + "GB";
    }

    /* renamed from: a  reason: collision with other method in class */
    private static String m367a(int i) {
        if (i > 0) {
            String[] strArr = f509a;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        return f509a[0];
    }

    public static String a(Context context) {
        try {
            return j.a(context).a();
        } catch (Exception e2) {
            b.m1a("failure to get gaid:" + e2.getMessage());
            return null;
        }
    }

    public static String a(Context context, boolean z) {
        if (d == null) {
            String c2 = c(context);
            String d2 = !l.m533d() ? z ? d(context) : l(context) : "";
            String b2 = b(context);
            int i = 1;
            if ((Build.VERSION.SDK_INT < 26) || !b(d2) || !b(b2)) {
                c2 = d2 + c2 + b2;
            } else {
                String b3 = az.a(context).b();
                if (!TextUtils.isEmpty(b3)) {
                    c2 = b3 + c2;
                    i = 2;
                } else {
                    String a2 = az.a(context).mo92a();
                    if (TextUtils.isEmpty(a2) || a2.startsWith("00000000-0000-0000-0000-000000000000")) {
                        i = 5;
                    } else {
                        i = 4;
                        c2 = a2;
                    }
                }
            }
            b.b("devid rule select:" + i);
            if (i == 3) {
                d = c2;
            } else {
                d = m367a(i) + bo.b(c2);
            }
        }
        return d;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m368a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    public static boolean a(Context context, String str) {
        ApplicationInfo applicationInfo;
        PackageInfo packageInfo = (PackageInfo) bj.a((Object) context.getPackageManager(), "getPackageInfoAsUser", str, 0, 999);
        if (!(packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null)) {
            int i = applicationInfo.flags;
            if ((i & PKIFailureInfo.badSenderNonce) != 2097152 || (i & 8388608) == 8388608) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = f509a;
            if (i >= strArr.length) {
                return false;
            }
            if (str.startsWith(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    public static int b() {
        BufferedReader bufferedReader;
        Throwable th;
        String[] split;
        if (new File("/proc/meminfo").exists()) {
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
                } catch (IOException unused) {
                }
                try {
                    String readLine = bufferedReader.readLine();
                    if (!TextUtils.isEmpty(readLine) && (split = readLine.split("\\s+")) != null && split.length >= 2 && TextUtils.isDigitsOnly(split[1])) {
                        Integer.parseInt(split[1]);
                    }
                    bufferedReader.close();
                } catch (Exception unused2) {
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused4) {
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        }
        return 0;
    }

    /* renamed from: b  reason: collision with other method in class */
    public static String m369b() {
        double a2 = a(((a(Environment.getDataDirectory()) / 1024.0d) / 1024.0d) / 1024.0d);
        return a2 + "GB";
    }

    public static String b(Context context) {
        return null;
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m370b(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null || powerManager.isScreenOn();
    }

    private static boolean b(String str) {
        if (str == null) {
            return true;
        }
        String trim = str.trim();
        return trim.length() == 0 || trim.equalsIgnoreCase("null") || trim.equalsIgnoreCase("unknown");
    }

    private static int c() {
        return Build.VERSION.SDK_INT < 29 ? 10 : 0;
    }

    /* renamed from: c  reason: collision with other method in class */
    public static String m371c() {
        return b() + "KB";
    }

    public static String c(Context context) {
        if (f9067b != null || !f508a) {
            return f9067b;
        }
        boolean d2 = m373d(context);
        f508a = d2;
        if (!d2) {
            return null;
        }
        try {
            f9067b = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            b.m1a("failure to get androidId: " + th);
        }
        return f9067b;
    }

    /* renamed from: c  reason: collision with other method in class */
    private static boolean m372c(Context context) {
        String packageName = context.getPackageName();
        if (!l.m527a() || !f507a.contains(packageName)) {
            return false;
        }
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", packageName) == 0 || context.getPackageManager().checkPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", packageName) == 0;
    }

    private static boolean c(String str) {
        return !TextUtils.isEmpty(str) && str.length() <= 15 && str.length() >= 14 && bo.m106b(str) && !bo.c(str);
    }

    public static String d() {
        long a2 = a(Environment.getDataDirectory());
        return (a2 / 1024) + "KB";
    }

    public static String d(Context context) {
        int c2 = c();
        String e2 = e(context);
        while (e2 == null) {
            c2--;
            if (c2 <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            e2 = e(context);
        }
        return e2;
    }

    /* renamed from: d  reason: collision with other method in class */
    private static boolean m373d(Context context) {
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            return true;
        }
        Intent intent = new Intent();
        ComponentName componentName = new ComponentName(context.getPackageName(), "com.xiaomi.push.service.XMPushService");
        intent.setComponent(componentName);
        try {
            Bundle bundle = context.getPackageManager().getServiceInfo(componentName, 128).metaData;
            if (bundle != null) {
                String string = bundle.getString("supportGetAndroidID");
                if (TextUtils.isEmpty(string)) {
                    return true;
                }
                return Boolean.parseBoolean(string);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    public static String e(Context context) {
        String str;
        Object a2;
        Object a3;
        Object a4;
        if (l.m533d()) {
            return "";
        }
        String str2 = f9066a;
        if (str2 != null) {
            return str2;
        }
        try {
            if (m372c(context)) {
                str = (!l.m527a() || (a3 = bj.a("miui.telephony.TelephonyManager", "getDefault", new Object[0])) == null || (a4 = bj.a(a3, "getMiuiDeviceId", new Object[0])) == null || !(a4 instanceof String)) ? null : (String) String.class.cast(a4);
                if (str == null) {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (Build.VERSION.SDK_INT < 26) {
                        str = telephonyManager.getDeviceId();
                    } else {
                        if (1 == telephonyManager.getPhoneType()) {
                            a2 = bj.a((Object) telephonyManager, "getImei", (Object[]) null);
                        } else if (2 == telephonyManager.getPhoneType()) {
                            a2 = bj.a((Object) telephonyManager, "getMeid", (Object[]) null);
                        }
                        str = (String) a2;
                    }
                }
            } else {
                str = null;
            }
            if (!c(str)) {
                return "";
            }
            f9066a = str;
            return str;
        } catch (Throwable th) {
            b.m1a("failure to get id:" + th);
            return null;
        }
    }

    public static String f(Context context) {
        int c2 = c();
        String h = h(context);
        while (h == null) {
            c2--;
            if (c2 <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            h = h(context);
        }
        return h;
    }

    public static String g(Context context) {
        Object a2;
        if (l.m533d() || Build.VERSION.SDK_INT < 22) {
            return "";
        }
        if (!TextUtils.isEmpty(f9068c)) {
            return f9068c;
        }
        e(context);
        if (TextUtils.isEmpty(f9066a)) {
            return "";
        }
        try {
            if (m372c(context)) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                Integer num = (Integer) bj.a((Object) telephonyManager, "getPhoneCount", new Object[0]);
                if (num != null && num.intValue() > 1) {
                    String str = null;
                    for (int i = 0; i < num.intValue(); i++) {
                        if (Build.VERSION.SDK_INT < 26) {
                            a2 = bj.a((Object) telephonyManager, "getDeviceId", Integer.valueOf(i));
                        } else if (1 == telephonyManager.getPhoneType()) {
                            a2 = bj.a((Object) telephonyManager, "getImei", Integer.valueOf(i));
                        } else {
                            if (2 == telephonyManager.getPhoneType()) {
                                a2 = bj.a((Object) telephonyManager, "getMeid", Integer.valueOf(i));
                            }
                            if (!TextUtils.isEmpty(str) && !TextUtils.equals(f9066a, str) && c(str)) {
                                f9068c += str + Constants.ACCEPT_TIME_SEPARATOR_SP;
                            }
                        }
                        str = (String) a2;
                        if (!TextUtils.isEmpty(str)) {
                            f9068c += str + Constants.ACCEPT_TIME_SEPARATOR_SP;
                        }
                    }
                    int length = f9068c.length();
                    if (length > 0) {
                        f9068c = f9068c.substring(0, length - 1);
                    }
                    return f9068c;
                }
            }
            return "";
        } catch (Exception e2) {
            b.m1a("failure to get ids: " + e2);
            return "";
        }
    }

    public static String h(Context context) {
        g(context);
        String str = "";
        if (TextUtils.isEmpty(f9068c)) {
            return str;
        }
        for (String str2 : f9068c.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (c(str2)) {
                str = str + bo.a(str2) + Constants.ACCEPT_TIME_SEPARATOR_SP;
            }
        }
        int length = str.length();
        return length > 0 ? str.substring(0, length - 1) : str;
    }

    public static synchronized String i(Context context) {
        synchronized (i.class) {
            if (e != null) {
                return e;
            }
            String c2 = c(context);
            String b2 = b(context);
            String b3 = bo.b(c2 + b2);
            e = b3;
            return b3;
        }
    }

    public static synchronized String j(Context context) {
        String b2;
        synchronized (i.class) {
            String c2 = c(context);
            b2 = bo.b(c2 + ((String) null));
        }
        return b2;
    }

    public static String k(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
    }

    private static String l(Context context) {
        int c2 = c();
        String e2 = e(context);
        while (TextUtils.isEmpty(e2)) {
            c2--;
            if (c2 <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            e2 = e(context);
        }
        return e2;
    }
}
