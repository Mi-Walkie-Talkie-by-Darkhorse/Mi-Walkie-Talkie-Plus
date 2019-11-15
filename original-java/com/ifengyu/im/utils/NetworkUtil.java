package com.ifengyu.im.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class NetworkUtil {
    public static final int NONETWORK = 0;
    public static final int NOWIFI = 2;
    public static final int WIFI = 1;

    public static int getNetWorkType(Context context) {
        if (!isNetWorkAvalible(context)) {
            return 0;
        }
        if (((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnectedOrConnecting()) {
            return 1;
        }
        return 2;
    }

    public static boolean isNetWorkAvalible(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    private static NetworkInfo getActiveNetworkInfo(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }
}
