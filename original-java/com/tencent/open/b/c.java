package com.tencent.open.b;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.tencent.open.a.f;
import com.tencent.open.utils.d;
import java.util.Locale;

/* compiled from: ProGuard */
public class c {
    static String a = null;
    static String b = null;
    static String c = null;
    private static String d;
    private static String e = null;

    public static String a() {
        try {
            Context a2 = d.a();
            if (a2 == null) {
                return "";
            }
            WifiManager wifiManager = (WifiManager) a2.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager == null) {
                return "";
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo == null) {
                return "";
            }
            return connectionInfo.getMacAddress();
        } catch (SecurityException e2) {
            f.b("openSDK_LOG.MobileInfoUtil", "getLocalMacAddress>>>", e2);
            return "";
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        if (context == null) {
            return "";
        }
        d = "";
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int width = windowManager.getDefaultDisplay().getWidth();
            d = width + "x" + windowManager.getDefaultDisplay().getHeight();
        }
        return d;
    }

    public static String b() {
        return Locale.getDefault().getLanguage();
    }

    public static String b(Context context) {
        if (a != null && a.length() > 0) {
            return a;
        }
        if (context == null) {
            return "";
        }
        try {
            a = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getDeviceId();
            return a;
        } catch (Exception e2) {
            return "";
        }
    }

    public static String c(Context context) {
        if (b != null && b.length() > 0) {
            return b;
        }
        if (context == null) {
            return "";
        }
        try {
            b = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimSerialNumber();
            return b;
        } catch (Exception e2) {
            return "";
        }
    }

    public static String d(Context context) {
        if (c != null && c.length() > 0) {
            return c;
        }
        if (context == null) {
            return "";
        }
        try {
            c = Secure.getString(context.getContentResolver(), "android_id");
            return c;
        } catch (Exception e2) {
            return "";
        }
    }

    public static String e(Context context) {
        try {
            if (e == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                StringBuilder sb = new StringBuilder();
                sb.append("imei=").append(b(context)).append('&');
                sb.append("model=").append(Build.MODEL).append('&');
                sb.append("os=").append(VERSION.RELEASE).append('&');
                sb.append("apilevel=").append(VERSION.SDK_INT).append('&');
                String b2 = a.b(context);
                if (b2 == null) {
                    b2 = "";
                }
                sb.append("network=").append(b2).append('&');
                sb.append("sdcard=").append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0).append('&');
                sb.append("display=").append(displayMetrics.widthPixels).append('*').append(displayMetrics.heightPixels).append('&');
                sb.append("manu=").append(Build.MANUFACTURER).append("&");
                sb.append("wifi=").append(a.e(context));
                e = sb.toString();
            }
            return e;
        } catch (Exception e2) {
            return null;
        }
    }
}
