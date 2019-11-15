package com.shenma.speechrecognition;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;

class t {
    public static String a() {
        return Build.MODEL + "&Android" + VERSION.RELEASE + "&" + VERSION.SDK + "&SDK" + "1.3.3.129";
    }

    public static String a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.getType() == 1) {
                    c.b = 7;
                    return "WIFI";
                } else if (activeNetworkInfo.getType() == 0) {
                    c.b = 4;
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                            return "2.5G";
                        case 2:
                        case 7:
                            return "2.75G";
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return "3G";
                        case 4:
                        case 11:
                            return "2G";
                        case 13:
                            return "4G";
                    }
                }
            }
        } catch (Exception e) {
        }
        return "0";
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
