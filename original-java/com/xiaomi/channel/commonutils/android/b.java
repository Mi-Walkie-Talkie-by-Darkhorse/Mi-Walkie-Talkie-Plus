package com.xiaomi.channel.commonutils.android;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class b {

    public enum a {
        UNKNOWN(0),
        ALLOWED(1),
        NOT_ALLOWED(2);
        
        private final int d;

        private a(int i) {
            this.d = i;
        }

        public int a() {
            return this.d;
        }
    }

    public static String a(Context context) {
        try {
            List runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
            if (com.xiaomi.channel.commonutils.misc.b.a(runningTasks) || runningTasks.get(0) == null || ((RunningTaskInfo) runningTasks.get(0)).topActivity == null) {
                return null;
            }
            return ((RunningTaskInfo) runningTasks.get(0)).topActivity.getPackageName();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            packageInfo = null;
        }
        return packageInfo != null ? packageInfo.versionName : "1.0";
    }

    public static int b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 0;
    }

    public static boolean b(Context context) {
        return TextUtils.equals(context.getPackageName(), a(context));
    }

    public static int c(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 1).versionCode;
        } catch (Exception e) {
            return 0;
        }
    }

    public static String c(Context context) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (runningAppProcesses != null && runningAppProcesses.size() > 0) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                String[] strArr = runningAppProcessInfo.pkgList;
                int i = 0;
                while (strArr != null && i < strArr.length) {
                    if (!arrayList.contains(strArr[i])) {
                        arrayList.add(strArr[i]);
                        if (arrayList.size() == 1) {
                            sb.append(((String) arrayList.get(0)).hashCode() % 100000);
                        } else {
                            sb.append("#").append(strArr[i].hashCode() % 100000);
                        }
                    }
                    i++;
                }
            }
        }
        return sb.toString();
    }

    @TargetApi(19)
    public static a d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str) || VERSION.SDK_INT < 19) {
            return a.UNKNOWN;
        }
        try {
            Integer num = (Integer) com.xiaomi.channel.commonutils.reflect.a.a(AppOpsManager.class, "OP_POST_NOTIFICATION");
            if (num == null) {
                return a.UNKNOWN;
            }
            Integer num2 = (Integer) com.xiaomi.channel.commonutils.reflect.a.a((Object) (AppOpsManager) context.getSystemService("appops"), "checkOpNoThrow", num, Integer.valueOf(context.getPackageManager().getApplicationInfo(str, 0).uid), str);
            return (num2 == null || num2.intValue() != 0) ? a.NOT_ALLOWED : a.ALLOWED;
        } catch (Throwable th) {
            return a.UNKNOWN;
        }
    }

    public static Signature[] e(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 64).signatures;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean f(Context context, String str) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean g(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static boolean h(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
