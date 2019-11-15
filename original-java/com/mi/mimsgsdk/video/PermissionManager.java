package com.mi.mimsgsdk.video;

import android.annotation.SuppressLint;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class PermissionManager {
    private static final String TAG = PermissionManager.class.getSimpleName();
    private static PermissionManager instance;
    private boolean camera = true;

    public enum PermissionType {
        CAMERA,
        READ_CONTACTS,
        RECORD_AUDIO,
        SYSTEM_ALERT_WINDOW
    }

    private PermissionManager() {
    }

    public static PermissionManager getInstance() {
        if (instance == null) {
            instance = new PermissionManager();
        }
        return instance;
    }

    public boolean checkCamera(Context context) {
        this.camera = checkPermissionWithType(context, PermissionType.CAMERA);
        return this.camera;
    }

    @SuppressLint({"NewApi"})
    private boolean checkPermissionWithType(Context context, PermissionType permissionType) {
        boolean checkPermission;
        String str = "" + permissionType;
        if (VERSION.SDK_INT >= 19) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
                Class<AppOpsManager> cls = AppOpsManager.class;
                Field field = cls.getField("OP_" + str);
                Method declaredMethod = cls.getDeclaredMethod("checkOp", new Class[]{Integer.TYPE, Integer.TYPE, String.class});
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke(appOpsManager, new Object[]{Integer.valueOf(field.getInt(appOpsManager)), Integer.valueOf(packageInfo.applicationInfo.uid), packageInfo.packageName})).intValue();
                checkPermission = (intValue == 2 || intValue == 1) ? false : true;
            } catch (Exception e) {
                Log.e(TAG, "权限检查出错时默认返回有权限，异常代码：" + e);
                checkPermission = true;
            }
        } else {
            checkPermission = checkPermission(context, "android.permission." + str);
        }
        Log.d(TAG, "call checkPermissionWithType: " + permissionType + " = " + checkPermission);
        return checkPermission;
    }

    private boolean checkPermission(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
