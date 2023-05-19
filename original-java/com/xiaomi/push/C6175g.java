package com.xiaomi.push;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.umeng.umcrash.BuildConfig;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.xiaomi.push.g */
/* loaded from: classes2.dex */
public class C6175g {

    /* renamed from: com.xiaomi.push.g$a */
    /* loaded from: classes2.dex */
    public enum EnumC6176a {
        UNKNOWN(0),
        ALLOWED(1),
        NOT_ALLOWED(2);
        

        /* renamed from: a */
        private final int f21687a;

        EnumC6176a(int i) {
            this.f21687a = i;
        }

        /* renamed from: a */
        public int m2802a() {
            return this.f21687a;
        }
    }

    /* renamed from: a */
    public static int m2819a(Context context) {
        Bundle bundle;
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.android.systemui", 128);
                if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                    return 0;
                }
                return bundle.getInt("SupportForPushVersionCode");
            } catch (PackageManager.NameNotFoundException unused) {
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m2814a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 0;
    }

    /* renamed from: a */
    private static ApplicationInfo m2813a(Context context, String str) {
        if (str.equals(context.getPackageName())) {
            return context.getApplicationInfo();
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            AbstractC5876b.m4147a("not found app info " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static Drawable m2812a(Context context, String str) {
        ApplicationInfo m2813a = m2813a(context, str);
        Drawable drawable = null;
        if (m2813a != null) {
            try {
                drawable = m2813a.loadIcon(context.getPackageManager());
                if (drawable == null) {
                    drawable = m2813a.loadLogo(context.getPackageManager());
                }
            } catch (Exception e) {
                AbstractC5876b.m4147a("get app icon drawable failed, " + e);
            }
        }
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    /* renamed from: a */
    private static EnumC6176a m2815a(Context context, ApplicationInfo applicationInfo) {
        int i = Build.VERSION.SDK_INT;
        if (applicationInfo == null || i < 24) {
            return EnumC6176a.UNKNOWN;
        }
        Boolean bool = null;
        try {
            if (applicationInfo.packageName.equals(context.getPackageName())) {
                bool = Boolean.valueOf(((NotificationManager) context.getSystemService("notification")).areNotificationsEnabled());
            } else {
                Object m3648a = i >= 29 ? C6016bj.m3648a(context.getSystemService("notification"), "getService", new Object[0]) : context.getSystemService("security");
                if (m3648a != null) {
                    bool = (Boolean) C6016bj.m3640b(m3648a, "areNotificationsEnabledForPackage", applicationInfo.packageName, Integer.valueOf(applicationInfo.uid));
                }
            }
            if (bool != null) {
                return bool.booleanValue() ? EnumC6176a.ALLOWED : EnumC6176a.NOT_ALLOWED;
            }
        } catch (Exception e) {
            AbstractC5876b.m4147a("are notifications enabled error " + e);
        }
        return EnumC6176a.UNKNOWN;
    }

    @TargetApi(19)
    /* renamed from: a */
    public static EnumC6176a m2809a(Context context, String str, boolean z) {
        ApplicationInfo applicationInfo;
        EnumC6176a m2815a;
        EnumC6176a enumC6176a;
        if (context == null || TextUtils.isEmpty(str)) {
            return EnumC6176a.UNKNOWN;
        }
        try {
            applicationInfo = str.equals(context.getPackageName()) ? context.getApplicationInfo() : context.getPackageManager().getApplicationInfo(str, 0);
            m2815a = m2815a(context, applicationInfo);
            enumC6176a = EnumC6176a.UNKNOWN;
        } catch (Throwable th) {
            AbstractC5876b.m4147a("get app op error " + th);
        }
        if (m2815a != enumC6176a) {
            return m2815a;
        }
        Integer num = (Integer) C6016bj.m3653a((Class<? extends Object>) AppOpsManager.class, "OP_POST_NOTIFICATION");
        if (num == null) {
            return enumC6176a;
        }
        Integer num2 = (Integer) C6016bj.m3648a((Object) ((AppOpsManager) context.getSystemService("appops")), "checkOpNoThrow", num, Integer.valueOf(applicationInfo.uid), str);
        int i = (Integer) C6016bj.m3653a((Class<? extends Object>) AppOpsManager.class, "MODE_ALLOWED");
        int i2 = (Integer) C6016bj.m3653a((Class<? extends Object>) AppOpsManager.class, "MODE_IGNORED");
        AbstractC5876b.m4141b(String.format("get app mode %s|%s|%s", num2, i, i2));
        if (i == null) {
            i = 0;
        }
        if (i2 == null) {
            i2 = 1;
        }
        if (num2 != null) {
            return z ? !num2.equals(i2) ? EnumC6176a.ALLOWED : EnumC6176a.NOT_ALLOWED : num2.equals(i) ? EnumC6176a.ALLOWED : EnumC6176a.NOT_ALLOWED;
        }
        return EnumC6176a.UNKNOWN;
    }

    /* renamed from: a */
    public static String m2818a(Context context) {
        return m2816a(context, Process.myPid());
    }

    /* renamed from: a */
    public static String m2816a(Context context, int i) {
        List<ActivityManager.RunningAppProcessInfo> list;
        if (context == null) {
            return null;
        }
        try {
            list = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        } catch (Exception unused) {
            list = null;
        }
        if (list == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
            if (runningAppProcessInfo.pid == i) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m2811a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            packageInfo = null;
        }
        return packageInfo != null ? packageInfo.versionName : BuildConfig.VERSION_NAME;
    }

    /* renamed from: a */
    public static boolean m2817a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() >= 1) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == Process.myPid() && runningAppProcessInfo.processName.equals(context.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m2810a(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public static int m2807b(Context context, String str) {
        ApplicationInfo m2813a = m2813a(context, str);
        if (m2813a != null) {
            int i = m2813a.icon;
            return i == 0 ? m2813a.logo : i;
        }
        return 0;
    }

    /* renamed from: b */
    public static String m2808b(Context context) {
        String str;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (runningAppProcesses != null && runningAppProcesses.size() > 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                String[] strArr = runningAppProcessInfo.pkgList;
                for (int i = 0; strArr != null && i < strArr.length; i++) {
                    if (!arrayList.contains(strArr[i])) {
                        arrayList.add(strArr[i]);
                        if (arrayList.size() == 1) {
                            str = (String) arrayList.get(0);
                        } else {
                            sb.append("#");
                            str = strArr[i];
                        }
                        sb.append(str.hashCode() % 100000);
                    }
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m2806b(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) ? str : packageManager.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            return str;
        }
    }

    /* renamed from: b */
    public static boolean m2805b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: c */
    public static boolean m2804c(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    /* renamed from: d */
    public static boolean m2803d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "freeform_window_state", -1) >= 0) {
                return str.equals(Settings.Secure.getString(context.getContentResolver(), "freeform_package_name"));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
