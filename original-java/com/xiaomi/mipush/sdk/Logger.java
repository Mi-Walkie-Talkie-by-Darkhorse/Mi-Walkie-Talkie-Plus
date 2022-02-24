package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.dh;
import com.xiaomi.push.di;
import java.io.File;

/* loaded from: classes2.dex */
public class Logger {
    private static boolean sDisablePushLog = false;
    private static LoggerInterface sUserLogger;

    public static void disablePushFileLog(Context context) {
        sDisablePushLog = true;
        setPushLog(context);
    }

    public static void enablePushFileLog(Context context) {
        sDisablePushLog = false;
        setPushLog(context);
    }

    @Deprecated
    public static File getLogFile(String str) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LoggerInterface getUserLogger() {
        return sUserLogger;
    }

    private static boolean hasWritePermission(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (String str : strArr) {
                    if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void setLogger(Context context, LoggerInterface loggerInterface) {
        sUserLogger = loggerInterface;
        setPushLog(context);
    }

    public static void setPushLog(Context context) {
        boolean z = true;
        boolean z2 = false;
        z2 = sUserLogger != null;
        if (sDisablePushLog || !hasWritePermission(context)) {
            z = false;
        }
        di diVar = null;
        LoggerInterface loggerInterface = z2 ? sUserLogger : null;
        if (z) {
            diVar = di.a(context);
        }
        b.a(new dh(loggerInterface, diVar));
    }

    @Deprecated
    public static void uploadLogFile(Context context, boolean z) {
    }
}
