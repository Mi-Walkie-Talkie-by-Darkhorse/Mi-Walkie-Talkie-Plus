package com.xiaomi.mistatistic.sdk.controller;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.NetworkInterface;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.List;
import org.apache.http.HttpHost;

/* compiled from: Utils */
public class q {
    public static byte[] a(String str) {
        if (str == null) {
            return new byte[0];
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(a(str));
            return String.format("%1$032X", new Object[]{new BigInteger(1, instance.digest())});
        } catch (NoSuchAlgorithmException e) {
            return str;
        }
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            instance.update(a(str));
            return String.format("%1$032X", new Object[]{new BigInteger(1, instance.digest())});
        } catch (NoSuchAlgorithmException e) {
            return str;
        }
    }

    public static boolean a(Context context) {
        Throwable th;
        boolean z;
        String[] strArr;
        try {
            List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
                z = false;
            } else {
                boolean z2 = false;
                for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    try {
                        if (runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == 125) {
                            for (String str : runningAppProcessInfo.pkgList) {
                                if (str.equals(context.getPackageName())) {
                                    h.b("U", String.format(" %s importance %d", new Object[]{str, Integer.valueOf(runningAppProcessInfo.importance)}));
                                    z2 = true;
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        z = z2;
                        th = th3;
                        h.a("isForegroundRunning exception ", th);
                        return z;
                    }
                }
                z = z2;
            }
            try {
                h.b("U", "%s foreground running %s", context.getPackageName(), Boolean.valueOf(z));
            } catch (Throwable th4) {
                th = th4;
                h.a("isForegroundRunning exception ", th);
                return z;
            }
        } catch (Throwable th5) {
            th = th5;
            z = false;
            h.a("isForegroundRunning exception ", th);
            return z;
        }
        return z;
    }

    public static boolean a(long j) {
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        long timeInMillis = instance.getTimeInMillis();
        long j2 = 86400000 + timeInMillis;
        if (timeInMillis > j || j >= j2) {
            return false;
        }
        return true;
    }

    public static boolean a(long j, long j2) {
        return Math.abs(System.currentTimeMillis() - j) > j2;
    }

    private static String b() {
        String str = "";
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterface = (NetworkInterface) networkInterfaces.nextElement();
                byte[] hardwareAddress = networkInterface.getHardwareAddress();
                if (!(hardwareAddress == null || hardwareAddress.length == 0)) {
                    StringBuilder sb = new StringBuilder();
                    for (byte valueOf : hardwareAddress) {
                        sb.append(String.format("%02x:", new Object[]{Byte.valueOf(valueOf)}));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    String sb2 = sb.toString();
                    if ("wlan0".equals(networkInterface.getName())) {
                        return sb2;
                    }
                }
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
        return str;
    }

    public static String b(Context context) {
        String str;
        String str2 = "";
        if (VERSION.SDK_INT >= 23) {
            str = b();
        } else {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = ((WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
            } catch (Exception e) {
                h.a("U", "getMacMd5 exception: ", (Throwable) e);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            return b(str);
        }
        return str;
    }

    public static String c(Context context) {
        boolean z = false;
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            h.a("U", "getAndroidId exception: ", th);
            return z;
        }
    }

    public static String a() {
        if (VERSION.SDK_INT > 8) {
            return Build.SERIAL;
        }
        return null;
    }

    public static boolean d(Context context) {
        boolean z = false;
        if (k.b(context, "is_miui")) {
            return k.a(context, "is_miui");
        }
        try {
            context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0);
            z = true;
        } catch (Exception e) {
            h.b("U", "cannot get pkginfo com.xiaomi.xmsf, not miui.", (Throwable) e);
        }
        k.a(context, "is_miui", z);
        return z;
    }

    public static boolean e(Context context) {
        boolean z;
        if (k.b(context, "is_xiaomi")) {
            return k.a(context, "is_xiaomi");
        }
        String packageName = context.getPackageName();
        if (packageName.contains("miui") || packageName.contains(UserInfo.TYPE_XIAOMI)) {
            k.a(context, "is_xiaomi", true);
            return true;
        } else if (!d(context)) {
            k.a(context, "is_xiaomi", false);
            return false;
        } else {
            if ((context.getApplicationInfo().flags & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            h.b("U", "the pkg %s is sys app %s", packageName, Boolean.valueOf(z));
            k.a(context, "is_xiaomi", z);
            return z;
        }
    }

    public static String f(Context context) {
        String str;
        if (!d(context)) {
            return null;
        }
        String str2 = "miui.telephony.TelephonyManager";
        try {
            Class cls = Class.forName("miui.telephony.TelephonyManager");
            Method declaredMethod = cls.getDeclaredMethod("getDefault", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke != null) {
                Method declaredMethod2 = cls.getDeclaredMethod("getMiuiDeviceId", new Class[0]);
                declaredMethod2.setAccessible(true);
                Object invoke2 = declaredMethod2.invoke(invoke, new Object[0]);
                if (invoke2 != null && (invoke2 instanceof String)) {
                    str = (String) String.class.cast(invoke2);
                    return str;
                }
            }
            str = null;
            return str;
        } catch (Exception e) {
            h.a("getMiuiImei exception: ", (Throwable) e);
            return null;
        }
    }

    public static void a(boolean z) {
        Editor edit = c.a().getSharedPreferences("enable_global", 0).edit();
        edit.putBoolean("enable_global", z);
        edit.apply();
    }

    private static boolean c() {
        return c.a().getSharedPreferences("enable_global", 0).getBoolean("enable_global", false);
    }

    public static String a(Context context, String str) {
        try {
            if ((!d(context) || !BuildSetting.isInternationalBuild()) && !c()) {
                return str;
            }
            if (!str.toLowerCase().startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                str = "https://" + str;
            }
            String host = new URL(str).getHost();
            String str2 = "";
            if (host.contains(".")) {
                String[] split = host.split("\\.");
                if (split != null && split.length > 0) {
                    for (int i = 0; i < split.length; i++) {
                        if (i == split.length - 2) {
                            str2 = str2 + "intl.";
                        }
                        str2 = str2 + split[i];
                        if (i < split.length - 1) {
                            str2 = str2 + ".";
                        }
                    }
                }
            } else {
                str2 = "intl." + host;
            }
            return str.replace(host, str2);
        } catch (Exception e) {
            h.a("U", "ensureInternationalServer exception", (Throwable) e);
            return str;
        }
    }
}
