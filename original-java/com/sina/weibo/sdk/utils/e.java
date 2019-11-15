package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.os.EnvironmentCompat;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

/* compiled from: NetworkHelper */
public class e {
    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        NetworkInfo c = c(context);
        if (c == null || !c.isConnected()) {
            return false;
        }
        return true;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        NetworkInfo c = c(context);
        if (c == null || 1 != c.getType() || !c.isConnected()) {
            return false;
        }
        return true;
    }

    public static NetworkInfo c(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static void d(Context context) {
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeAllCookie();
        CookieSyncManager.getInstance().sync();
    }

    public static String e(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append("Android");
        sb.append("__");
        sb.append("weibo");
        sb.append("__");
        sb.append("sdk");
        sb.append("__");
        try {
            sb.append(context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName.replaceAll("\\s+", "_"));
        } catch (Exception e) {
            sb.append(EnvironmentCompat.MEDIA_UNKNOWN);
        }
        return sb.toString();
    }
}
