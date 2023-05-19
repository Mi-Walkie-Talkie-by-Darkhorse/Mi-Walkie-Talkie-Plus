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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: com.xiaomi.push.i */
/* loaded from: classes2.dex */
public class C6242i {

    /* renamed from: a */
    private static String f22011a = null;

    /* renamed from: a */
    private static final Set<String> f22012a;

    /* renamed from: a */
    private static boolean f22013a = false;

    /* renamed from: b */
    private static String f22015b = null;

    /* renamed from: c */
    private static String f22016c = "";

    /* renamed from: d */
    private static String f22017d;

    /* renamed from: e */
    private static String f22018e;

    /* renamed from: f */
    private static final String f22019f = String.valueOf((char) 2);

    /* renamed from: a */
    private static final String[] f22014a = {"--", "a-", "u-", "v-", "o-", "g-"};

    static {
        HashSet hashSet = new HashSet();
        f22012a = hashSet;
        hashSet.add("com.xiaomi.xmsf");
        hashSet.add("com.xiaomi.finddevice");
        hashSet.add("com.miui.securitycenter");
        f22013a = true;
    }

    /* renamed from: a */
    private static double m2514a(double d) {
        int i = 1;
        while (true) {
            double d2 = i;
            if (d2 >= d) {
                return d2;
            }
            i <<= 1;
        }
    }

    /* renamed from: a */
    private static float m2513a(int i) {
        float f = ((((((i + 102400) / PKIFailureInfo.signerNotTrusted) + 1) * 512) * 1024) / 1024.0f) / 1024.0f;
        double d = f;
        return d > 0.5d ? (float) Math.ceil(d) : f;
    }

    @TargetApi(17)
    /* renamed from: a */
    public static int m2516a() {
        Object m3646a = C6016bj.m3646a("android.os.UserHandle", "myUserId", new Object[0]);
        if (m3646a == null) {
            return -1;
        }
        return ((Integer) Integer.class.cast(m3646a)).intValue();
    }

    /* renamed from: a */
    private static long m2507a(File file) {
        StatFs statFs = new StatFs(file.getPath());
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }

    /* renamed from: a */
    public static String m2515a() {
        return m2513a(m2505b()) + "GB";
    }

    /* renamed from: a */
    private static String m2512a(int i) {
        if (i > 0) {
            String[] strArr = f22014a;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        return f22014a[0];
    }

    /* renamed from: a */
    public static String m2511a(Context context) {
        try {
            return C6269j.m2025a(context).m2024a();
        } catch (Exception e) {
            AbstractC5876b.m4147a("failure to get gaid:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static String m2508a(Context context, boolean z) {
        if (f22017d == null) {
            String m2498c = m2498c(context);
            String m2494d = !C6306l.m1837d() ? z ? m2494d(context) : m2485l(context) : "";
            String m2503b = m2503b(context);
            int i = 1;
            if (!(Build.VERSION.SDK_INT < 26) && m2501b(m2494d) && m2501b(m2503b)) {
                String m3726b = C6000az.m3729a(context).m3726b();
                if (TextUtils.isEmpty(m3726b)) {
                    String mo3684a = C6000az.m3729a(context).mo3684a();
                    if (TextUtils.isEmpty(mo3684a) || mo3684a.startsWith("00000000-0000-0000-0000-000000000000")) {
                        i = 5;
                    } else {
                        i = 4;
                        m2498c = mo3684a;
                    }
                } else {
                    m2498c = m3726b + m2498c;
                    i = 2;
                }
            } else {
                m2498c = m2494d + m2498c + m2503b;
            }
            AbstractC5876b.m4141b("devid rule select:" + i);
            if (i == 3) {
                f22017d = m2498c;
            } else {
                f22017d = m2512a(i) + C6023bo.m3611b(m2498c);
            }
        }
        return f22017d;
    }

    /* renamed from: a */
    public static boolean m2510a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            return intExtra == 2 || intExtra == 5;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m2509a(Context context, String str) {
        ApplicationInfo applicationInfo;
        PackageInfo packageInfo = (PackageInfo) C6016bj.m3648a((Object) context.getPackageManager(), "getPackageInfoAsUser", str, 0, 999);
        if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
            int i = applicationInfo.flags;
            if ((i & PKIFailureInfo.badSenderNonce) != 2097152 || (i & 8388608) == 8388608) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m2506a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = f22014a;
            if (i >= strArr.length) {
                return false;
            }
            if (str.startsWith(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: b */
    public static int m2505b() {
        BufferedReader bufferedReader;
        Throwable th;
        String[] split;
        if (new File("/proc/meminfo").exists()) {
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    bufferedReader = null;
                    th = th2;
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
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
            }
        }
        return 0;
    }

    /* renamed from: b */
    public static String m2504b() {
        double m2514a = m2514a(((m2507a(Environment.getDataDirectory()) / 1024.0d) / 1024.0d) / 1024.0d);
        return m2514a + "GB";
    }

    /* renamed from: b */
    public static String m2503b(Context context) {
        return null;
    }

    /* renamed from: b */
    public static boolean m2502b(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null || powerManager.isScreenOn();
    }

    /* renamed from: b */
    private static boolean m2501b(String str) {
        if (str == null) {
            return true;
        }
        String trim = str.trim();
        return trim.length() == 0 || trim.equalsIgnoreCase("null") || trim.equalsIgnoreCase("unknown");
    }

    /* renamed from: c */
    private static int m2500c() {
        return Build.VERSION.SDK_INT < 29 ? 10 : 0;
    }

    /* renamed from: c */
    public static String m2499c() {
        return m2505b() + "KB";
    }

    /* renamed from: c */
    public static String m2498c(Context context) {
        String str = f22015b;
        if (str == null && f22013a) {
            boolean m2493d = m2493d(context);
            f22013a = m2493d;
            if (m2493d) {
                try {
                    f22015b = Settings.Secure.getString(context.getContentResolver(), "android_id");
                } catch (Throwable th) {
                    AbstractC5876b.m4147a("failure to get androidId: " + th);
                }
                return f22015b;
            }
            return null;
        }
        return str;
    }

    /* renamed from: c */
    private static boolean m2497c(Context context) {
        String packageName = context.getPackageName();
        if (C6306l.m1853a() && f22012a.contains(packageName)) {
            return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", packageName) == 0 || context.getPackageManager().checkPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", packageName) == 0;
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m2496c(String str) {
        return !TextUtils.isEmpty(str) && str.length() <= 15 && str.length() >= 14 && C6023bo.m3610b(str) && !C6023bo.m3609c(str);
    }

    /* renamed from: d */
    public static String m2495d() {
        long m2507a = m2507a(Environment.getDataDirectory());
        return (m2507a / 1024) + "KB";
    }

    /* renamed from: d */
    public static String m2494d(Context context) {
        int m2500c = m2500c();
        String m2492e = m2492e(context);
        while (m2492e == null) {
            int i = m2500c - 1;
            if (m2500c <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            m2492e = m2492e(context);
            m2500c = i;
        }
        return m2492e;
    }

    /* renamed from: d */
    private static boolean m2493d(Context context) {
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

    /* renamed from: e */
    public static String m2492e(Context context) {
        String str;
        Object obj;
        Object m3646a;
        Object m3648a;
        if (C6306l.m1837d()) {
            return "";
        }
        String str2 = f22011a;
        if (str2 != null) {
            return str2;
        }
        try {
            if (m2497c(context)) {
                str = (!C6306l.m1853a() || (m3646a = C6016bj.m3646a("miui.telephony.TelephonyManager", "getDefault", new Object[0])) == null || (m3648a = C6016bj.m3648a(m3646a, "getMiuiDeviceId", new Object[0])) == null || !(m3648a instanceof String)) ? null : (String) String.class.cast(m3648a);
                if (str == null) {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (Build.VERSION.SDK_INT < 26) {
                        str = telephonyManager.getDeviceId();
                    } else {
                        if (1 == telephonyManager.getPhoneType()) {
                            obj = C6016bj.m3648a((Object) telephonyManager, "getImei", (Object[]) null);
                        } else if (2 == telephonyManager.getPhoneType()) {
                            obj = C6016bj.m3648a((Object) telephonyManager, "getMeid", (Object[]) null);
                        }
                        str = (String) obj;
                    }
                }
            } else {
                str = null;
            }
            if (m2496c(str)) {
                f22011a = str;
                return str;
            }
            return "";
        } catch (Throwable th) {
            AbstractC5876b.m4147a("failure to get id:" + th);
            return null;
        }
    }

    /* renamed from: f */
    public static String m2491f(Context context) {
        int m2500c = m2500c();
        String m2489h = m2489h(context);
        while (m2489h == null) {
            int i = m2500c - 1;
            if (m2500c <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            m2489h = m2489h(context);
            m2500c = i;
        }
        return m2489h;
    }

    /* renamed from: g */
    public static String m2490g(Context context) {
        Object m3648a;
        if (!C6306l.m1837d() && Build.VERSION.SDK_INT >= 22) {
            if (TextUtils.isEmpty(f22016c)) {
                m2492e(context);
                if (TextUtils.isEmpty(f22011a)) {
                    return "";
                }
                try {
                    if (m2497c(context)) {
                        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                        Integer num = (Integer) C6016bj.m3648a((Object) telephonyManager, "getPhoneCount", new Object[0]);
                        if (num != null && num.intValue() > 1) {
                            String str = null;
                            for (int i = 0; i < num.intValue(); i++) {
                                if (Build.VERSION.SDK_INT < 26) {
                                    m3648a = C6016bj.m3648a((Object) telephonyManager, "getDeviceId", Integer.valueOf(i));
                                } else if (1 == telephonyManager.getPhoneType()) {
                                    m3648a = C6016bj.m3648a((Object) telephonyManager, "getImei", Integer.valueOf(i));
                                } else {
                                    if (2 == telephonyManager.getPhoneType()) {
                                        m3648a = C6016bj.m3648a((Object) telephonyManager, "getMeid", Integer.valueOf(i));
                                    }
                                    if (!TextUtils.isEmpty(str) && !TextUtils.equals(f22011a, str) && m2496c(str)) {
                                        f22016c += str + Constants.ACCEPT_TIME_SEPARATOR_SP;
                                    }
                                }
                                str = (String) m3648a;
                                if (!TextUtils.isEmpty(str)) {
                                    f22016c += str + Constants.ACCEPT_TIME_SEPARATOR_SP;
                                }
                            }
                            int length = f22016c.length();
                            if (length > 0) {
                                f22016c = f22016c.substring(0, length - 1);
                            }
                            return f22016c;
                        }
                    }
                    return "";
                } catch (Exception e) {
                    AbstractC5876b.m4147a("failure to get ids: " + e);
                    return "";
                }
            }
            return f22016c;
        }
        return "";
    }

    /* renamed from: h */
    public static String m2489h(Context context) {
        m2490g(context);
        String str = "";
        if (TextUtils.isEmpty(f22016c)) {
            return "";
        }
        for (String str2 : f22016c.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (m2496c(str2)) {
                str = str + C6023bo.m3620a(str2) + Constants.ACCEPT_TIME_SEPARATOR_SP;
            }
        }
        int length = str.length();
        return length > 0 ? str.substring(0, length - 1) : str;
    }

    /* renamed from: i */
    public static synchronized String m2488i(Context context) {
        synchronized (C6242i.class) {
            String str = f22018e;
            if (str != null) {
                return str;
            }
            String m2498c = m2498c(context);
            String m2503b = m2503b(context);
            String m3611b = C6023bo.m3611b(m2498c + m2503b);
            f22018e = m3611b;
            return m3611b;
        }
    }

    /* renamed from: j */
    public static synchronized String m2487j(Context context) {
        String m3611b;
        synchronized (C6242i.class) {
            String m2498c = m2498c(context);
            m3611b = C6023bo.m3611b(m2498c + ((String) null));
        }
        return m3611b;
    }

    /* renamed from: k */
    public static String m2486k(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
    }

    /* renamed from: l */
    private static String m2485l(Context context) {
        int m2500c = m2500c();
        String m2492e = m2492e(context);
        while (TextUtils.isEmpty(m2492e)) {
            int i = m2500c - 1;
            if (m2500c <= 0) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            m2492e = m2492e(context);
            m2500c = i;
        }
        return m2492e;
    }
}
