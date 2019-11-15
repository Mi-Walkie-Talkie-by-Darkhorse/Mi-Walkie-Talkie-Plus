package com.ifengyu.library.util;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build.VERSION;

/* compiled from: PermisssionUtils */
public class e {
    @TargetApi(19)
    public static boolean a(Context context, String str) {
        if (VERSION.SDK_INT < 19) {
            return true;
        }
        int checkOpNoThrow = ((AppOpsManager) context.getApplicationContext().getSystemService("appops")).checkOpNoThrow(str, Binder.getCallingUid(), context.getApplicationContext().getPackageName());
        c.a("PermissionUtils", "AppOps:" + checkOpNoThrow);
        switch (checkOpNoThrow) {
            case 0:
                return true;
            case 1:
                return false;
            case 2:
                return true;
            case 3:
                return true;
            case 4:
                return true;
            default:
                return true;
        }
    }
}
