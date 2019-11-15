package com.xiaomi.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.ifengyu.im.account.UserInfo;

public class NetworkHelper {
    public static final int NET_2G = 2;
    public static final int NET_3G = 3;
    public static final int NET_4G = 4;
    public static final int NET_NO_NET = 1;
    public static final int NET_UNKNOWN = 0;
    public static final int NET_WIFI = 5;

    public static int getAPNType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        int networkType = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getNetworkType();
        if (activeNetworkInfo == null) {
            return 1;
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            switch (networkType) {
                case 0:
                    return 2;
                case 1:
                    return 2;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 2;
                case 5:
                    return 3;
                case 6:
                    return 3;
                case 7:
                    return 2;
                case 8:
                    return 3;
                case 9:
                    return 3;
                case 10:
                    return 3;
                case 11:
                    return 2;
                case 12:
                    return 3;
                case 13:
                    return 4;
                case 14:
                    return 3;
                case 15:
                    return 3;
                default:
                    return 2;
            }
        } else if (type == 1) {
            return 5;
        } else {
            return 0;
        }
    }
}
