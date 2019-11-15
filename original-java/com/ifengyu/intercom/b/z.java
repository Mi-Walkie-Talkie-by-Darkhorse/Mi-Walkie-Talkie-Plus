package com.ifengyu.intercom.b;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build.VERSION;
import com.ifengyu.intercom.ui.activity.PermissionActivity;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PermissionUtils */
public class z {
    /* access modifiers changed from: private */
    public static List<String> a = null;

    public static void a(Context context) {
        if (!c(context)) {
            e(context);
            d(context);
        } else if (context instanceof PermissionActivity) {
            ((Activity) context).finish();
        }
    }

    @TargetApi(23)
    private static void d(Context context) {
        if (!c(context)) {
            ((Activity) context).requestPermissions((String[]) a.toArray(new String[a.size()]), 102);
        }
    }

    @TargetApi(19)
    public static boolean b(Context context) {
        if (VERSION.SDK_INT < 19) {
            return true;
        }
        int checkOpNoThrow = ((AppOpsManager) context.getSystemService("appops")).checkOpNoThrow("android:fine_location", Binder.getCallingUid(), context.getApplicationContext().getPackageName());
        s.b("PermissionUtils", "AppOps:" + checkOpNoThrow);
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

    @TargetApi(23)
    public static boolean c(Context context) {
        return context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && context.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    @TargetApi(23)
    private static void e(Context context) {
        if (a == null) {
            a = new ArrayList();
        } else {
            a.clear();
        }
        if (context.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
            a.add("android.permission.ACCESS_FINE_LOCATION");
        }
        if (context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            a.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            a.add("android.permission.READ_PHONE_STATE");
        }
        if (context.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            a.add("android.permission.RECORD_AUDIO");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b9  */
    @android.annotation.TargetApi(23)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(final android.content.Context r9, int r10, java.lang.String[] r11, int[] r12) {
        /*
            r3 = 2131296762(0x7f0901fa, float:1.821145E38)
            r1 = 1
            r4 = 0
            switch(r10) {
                case 102: goto L_0x000a;
                default: goto L_0x0008;
            }
        L_0x0008:
            r1 = r4
        L_0x0009:
            return r1
        L_0x000a:
            int r6 = r11.length
            r5 = r4
            r2 = r4
        L_0x000d:
            if (r5 >= r6) goto L_0x0041
            r7 = r11[r5]
            r0 = r12[r5]
            r8 = -1
            if (r0 != r8) goto L_0x003a
            java.lang.String r0 = "android.permission.READ_PHONE_STATE"
            boolean r0 = r0.equals(r7)
            if (r0 == 0) goto L_0x0023
            java.util.List<java.lang.String> r0 = a
            r0.remove(r7)
        L_0x0023:
            r0 = r9
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.shouldShowRequestPermissionRationale(r7)
            if (r0 != 0) goto L_0x003f
            java.lang.String r0 = "android.permission.READ_PHONE_STATE"
            boolean r0 = r0.equals(r7)
            if (r0 != 0) goto L_0x003f
            r0 = r1
        L_0x0035:
            int r2 = r5 + 1
            r5 = r2
            r2 = r0
            goto L_0x000d
        L_0x003a:
            java.util.List<java.lang.String> r0 = a
            r0.remove(r7)
        L_0x003f:
            r0 = r2
            goto L_0x0035
        L_0x0041:
            java.util.List<java.lang.String> r0 = a
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x00ca
            java.lang.String r0 = "android.permission.WRITE_EXTERNAL_STORAGE"
            java.util.List<java.lang.String> r5 = a
            java.lang.Object r5 = r5.get(r4)
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L_0x009b
            r0 = r3
        L_0x0058:
            android.app.AlertDialog$Builder r3 = new android.app.AlertDialog$Builder
            r5 = 16974394(0x103023a, float:2.4062497E-38)
            r3.<init>(r9, r5)
            r5 = 2131296398(0x7f09008e, float:1.8210712E38)
            android.app.AlertDialog$Builder r3 = r3.setTitle(r5)
            android.app.AlertDialog$Builder r0 = r3.setMessage(r0)
            r3 = 2131296364(0x7f09006c, float:1.8210643E38)
            com.ifengyu.intercom.b.z$1 r5 = new com.ifengyu.intercom.b.z$1
            r5.<init>(r9)
            android.app.AlertDialog$Builder r0 = r0.setNegativeButton(r3, r5)
            android.app.AlertDialog$Builder r0 = r0.setCancelable(r4)
            if (r2 == 0) goto L_0x00ad
            java.lang.String r2 = r9.getPackageName()
            r3 = 2131296623(0x7f09016f, float:1.8211168E38)
            com.ifengyu.intercom.b.z$2 r5 = new com.ifengyu.intercom.b.z$2
            r5.<init>(r2, r9)
            r0.setPositiveButton(r3, r5)
        L_0x008c:
            boolean r2 = c(r9)
            if (r2 != 0) goto L_0x00b9
            android.app.AlertDialog r0 = r0.create()
            r0.show()
            goto L_0x0009
        L_0x009b:
            java.lang.String r0 = "android.permission.ACCESS_FINE_LOCATION"
            java.util.List<java.lang.String> r5 = a
            java.lang.Object r5 = r5.get(r4)
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L_0x00ca
            r0 = 2131296542(0x7f09011e, float:1.8211004E38)
            goto L_0x0058
        L_0x00ad:
            r2 = 2131296377(0x7f090079, float:1.8210669E38)
            com.ifengyu.intercom.b.z$3 r3 = new com.ifengyu.intercom.b.z$3
            r3.<init>(r9)
            r0.setPositiveButton(r2, r3)
            goto L_0x008c
        L_0x00b9:
            boolean r0 = r9 instanceof com.ifengyu.intercom.ui.activity.PermissionActivity
            if (r0 == 0) goto L_0x0009
            r0 = r9
            android.app.Activity r0 = (android.app.Activity) r0
            r0.finish()
            android.app.Activity r9 = (android.app.Activity) r9
            r9.overridePendingTransition(r4, r4)
            goto L_0x0009
        L_0x00ca:
            r0 = r3
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.z.a(android.content.Context, int, java.lang.String[], int[]):boolean");
    }
}
