package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.log.e;
import com.xiaomi.push.log.f;

public class Logger {
    private static boolean sDisablePushLog = false;
    private static LoggerInterface sUserLogger = null;

    public static void disablePushFileLog(Context context) {
        sDisablePushLog = true;
        setPushLog(context);
    }

    public static void enablePushFileLog(Context context) {
        sDisablePushLog = false;
        setPushLog(context);
    }

    private static boolean hasWritePermission(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null) {
                return false;
            }
            for (String equals : strArr) {
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(equals)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void setLogger(Context context, LoggerInterface loggerInterface) {
        sUserLogger = loggerInterface;
        setPushLog(context);
    }

    private static void setPushLog(Context context) {
        boolean z = sUserLogger != null;
        f fVar = new f(context);
        if (!sDisablePushLog && hasWritePermission(context) && z) {
            b.a((LoggerInterface) new e(sUserLogger, fVar));
        } else if (!sDisablePushLog && hasWritePermission(context)) {
            b.a((LoggerInterface) fVar);
        } else if (z) {
            b.a(sUserLogger);
        } else {
            b.a((LoggerInterface) new e(null, null));
        }
    }
}
