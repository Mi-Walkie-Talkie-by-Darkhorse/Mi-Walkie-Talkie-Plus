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
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.umeng.umcrash.BuildConfig;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class g {

    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN(0),
        ALLOWED(1),
        NOT_ALLOWED(2);
        

        /* renamed from: a  reason: collision with other field name */
        private final int f397a;

        a(int i) {
            this.f397a = i;
        }

        public int a() {
            return this.f397a;
        }
    }

    public static int a(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.android.systemui", 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return 0;
            }
            return applicationInfo.metaData.getInt("SupportForPushVersionCode");
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    public static int a(Context context, String str) {
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

    /* renamed from: a  reason: collision with other method in class */
    private static ApplicationInfo m299a(Context context, String str) {
        if (str.equals(context.getPackageName())) {
            return context.getApplicationInfo();
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            b.m1a("not found app info " + str);
            return null;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static Drawable m300a(Context context, String str) {
        ApplicationInfo a2 = m299a(context, str);
        Drawable drawable = null;
        if (a2 != null) {
            try {
                drawable = a2.loadIcon(context.getPackageManager());
                if (drawable == null) {
                    drawable = a2.loadLogo(context.getPackageManager());
                }
            } catch (Exception e) {
                b.m1a("get app icon drawable failed, " + e);
            }
        }
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    private static a a(Context context, ApplicationInfo applicationInfo) {
        int i = Build.VERSION.SDK_INT;
        if (applicationInfo == null || i < 24) {
            return a.UNKNOWN;
        }
        Boolean bool = null;
        try {
            if (applicationInfo.packageName.equals(context.getPackageName())) {
                bool = Boolean.valueOf(((NotificationManager) context.getSystemService("notification")).areNotificationsEnabled());
            } else {
                Object a2 = i >= 29 ? bj.a(context.getSystemService("notification"), "getService", new Object[0]) : context.getSystemService("security");
                if (a2 != null) {
                    bool = (Boolean) bj.b(a2, "areNotificationsEnabledForPackage", applicationInfo.packageName, Integer.valueOf(applicationInfo.uid));
                }
            }
            if (bool != null) {
                return bool.booleanValue() ? a.ALLOWED : a.NOT_ALLOWED;
            }
        } catch (Exception e) {
            b.m1a("are notifications enabled error " + e);
        }
        return a.UNKNOWN;
    }

    @TargetApi(19)
    public static a a(Context context, String str, boolean z) {
        ApplicationInfo applicationInfo;
        a a2;
        if (context == null || TextUtils.isEmpty(str)) {
            return a.UNKNOWN;
        }
        try {
            applicationInfo = str.equals(context.getPackageName()) ? context.getApplicationInfo() : context.getPackageManager().getApplicationInfo(str, 0);
            a2 = a(context, applicationInfo);
        } catch (Throwable th) {
            b.m1a("get app op error " + th);
        }
        if (a2 != a.UNKNOWN) {
            return a2;
        }
        Integer num = (Integer) bj.a((Class<? extends Object>) AppOpsManager.class, "OP_POST_NOTIFICATION");
        if (num == null) {
            return a.UNKNOWN;
        }
        Integer num2 = (Integer) bj.a((Object) ((AppOpsManager) context.getSystemService("appops")), "checkOpNoThrow", num, Integer.valueOf(applicationInfo.uid), str);
        int i = (Integer) bj.a((Class<? extends Object>) AppOpsManager.class, "MODE_ALLOWED");
        int i2 = (Integer) bj.a((Class<? extends Object>) AppOpsManager.class, "MODE_IGNORED");
        b.b(String.format("get app mode %s|%s|%s", num2, i, i2));
        if (i == null) {
            i = 0;
        }
        if (i2 == null) {
            i2 = 1;
        }
        if (num2 != null) {
            return z ? !num2.equals(i2) ? a.ALLOWED : a.NOT_ALLOWED : num2.equals(i) ? a.ALLOWED : a.NOT_ALLOWED;
        }
        return a.UNKNOWN;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m301a(Context context) {
        return a(context, Process.myPid());
    }

    public static String a(Context context, int i) {
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

    /* renamed from: a  reason: collision with other method in class */
    public static String m302a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            packageInfo = null;
        }
        return packageInfo != null ? packageInfo.versionName : BuildConfig.VERSION_NAME;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m303a(Context context) {
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

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m304a(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                return true;
            }
        }
        return false;
    }

    public static int b(Context context, String str) {
        ApplicationInfo a2 = m299a(context, str);
        if (a2 == null) {
            return 0;
        }
        int i = a2.icon;
        return i == 0 ? a2.logo : i;
    }

    public static String b(Context context) {
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

    /* renamed from: b  reason: collision with other method in class */
    public static String m305b(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) ? str : packageManager.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            return str;
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m306b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static boolean c(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static boolean d(Context context, String str) {
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
