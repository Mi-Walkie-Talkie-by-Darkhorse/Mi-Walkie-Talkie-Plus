package com.xiaomi.channel.commonutils.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.reflect.a;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.mipush.sdk.Constants;

public class e {
    private static String a = null;
    private static String b = "";
    private static String c = null;
    private static String d = null;

    public static String a() {
        if (VERSION.SDK_INT > 8) {
            return Build.SERIAL;
        }
        return null;
    }

    public static String a(Context context) {
        if (c == null) {
            String c2 = c(context);
            String b2 = b(context);
            c = "a-" + d.b(c2 + b2 + a());
        }
        return c;
    }

    @TargetApi(17)
    public static int b() {
        if (VERSION.SDK_INT < 17) {
            return -1;
        }
        Object a2 = a.a("android.os.UserHandle", "myUserId", new Object[0]);
        if (a2 != null) {
            return ((Integer) Integer.class.cast(a2)).intValue();
        }
        return -1;
    }

    public static String b(Context context) {
        boolean z = false;
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            b.a(th);
            return z;
        }
    }

    public static String c(Context context) {
        int i = 10;
        String d2 = d(context);
        while (d2 == null) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            d2 = d(context);
            i = i2;
        }
        return d2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a A[Catch:{ Throwable -> 0x004d }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String d(android.content.Context r4) {
        /*
            r1 = 0
            java.lang.String r0 = a
            if (r0 == 0) goto L_0x0008
            java.lang.String r0 = a
        L_0x0007:
            return r0
        L_0x0008:
            boolean r0 = com.xiaomi.channel.commonutils.android.g.a()     // Catch:{ Throwable -> 0x004d }
            if (r0 == 0) goto L_0x0053
            java.lang.String r0 = "miui.telephony.TelephonyManager"
            java.lang.String r0 = "miui.telephony.TelephonyManager"
            java.lang.String r2 = "getDefault"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r0 = com.xiaomi.channel.commonutils.reflect.a.a(r0, r2, r3)     // Catch:{ Throwable -> 0x004d }
            if (r0 == 0) goto L_0x0053
            java.lang.String r2 = "getMiuiDeviceId"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r0 = com.xiaomi.channel.commonutils.reflect.a.a(r0, r2, r3)     // Catch:{ Throwable -> 0x004d }
            if (r0 == 0) goto L_0x0053
            boolean r2 = r0 instanceof java.lang.String     // Catch:{ Throwable -> 0x004d }
            if (r2 == 0) goto L_0x0053
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            java.lang.Object r0 = r2.cast(r0)     // Catch:{ Throwable -> 0x004d }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x004d }
        L_0x0034:
            if (r0 != 0) goto L_0x0048
            boolean r2 = k(r4)     // Catch:{ Throwable -> 0x004d }
            if (r2 == 0) goto L_0x0048
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r4.getSystemService(r0)     // Catch:{ Throwable -> 0x004d }
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch:{ Throwable -> 0x004d }
            java.lang.String r0 = r0.getDeviceId()     // Catch:{ Throwable -> 0x004d }
        L_0x0048:
            if (r0 == 0) goto L_0x0007
            a = r0     // Catch:{ Throwable -> 0x004d }
            goto L_0x0007
        L_0x004d:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            r0 = r1
            goto L_0x0007
        L_0x0053:
            r0 = r1
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.android.e.d(android.content.Context):java.lang.String");
    }

    public static String e(Context context) {
        int i = 10;
        String g = g(context);
        while (g == null) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            g = g(context);
            i = i2;
        }
        return g;
    }

    public static String f(Context context) {
        if (VERSION.SDK_INT < 22) {
            return "";
        }
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        if (!k(context)) {
            return "";
        }
        a = d(context);
        if (TextUtils.isEmpty(a)) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
            Integer num = (Integer) a.a((Object) telephonyManager, "getPhoneCount", new Object[0]);
            if (num == null || num.intValue() <= 1) {
                return "";
            }
            for (int i = 0; i < num.intValue(); i++) {
                String str = (String) a.a((Object) telephonyManager, "getDeviceId", Integer.valueOf(i));
                if (!TextUtils.isEmpty(str) && !TextUtils.equals(a, str)) {
                    b += str + Constants.ACCEPT_TIME_SEPARATOR_SP;
                }
            }
            b = b.substring(0, b.length() - 1);
            return b;
        } catch (Exception e) {
            b.d(e.toString());
            return "";
        }
    }

    public static String g(Context context) {
        f(context);
        if (TextUtils.isEmpty(b)) {
            return "";
        }
        String str = "";
        for (String a2 : b.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            str = str + d.a(a2) + Constants.ACCEPT_TIME_SEPARATOR_SP;
        }
        return str.substring(0, str.length() - 1);
    }

    public static synchronized String h(Context context) {
        String str;
        synchronized (e.class) {
            if (d != null) {
                str = d;
            } else {
                String b2 = b(context);
                d = d.b(b2 + a());
                str = d;
            }
        }
        return str;
    }

    public static String i(Context context) {
        return ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimOperatorName();
    }

    public static String j(Context context) {
        try {
            return ((WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        } catch (Exception e) {
            b.a((Throwable) e);
            return null;
        }
    }

    private static boolean k(Context context) {
        String str = "android.permission.READ_PHONE_STATE";
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0;
    }
}
