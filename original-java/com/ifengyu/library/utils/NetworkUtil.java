package com.ifengyu.library.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;

/* renamed from: com.ifengyu.library.utils.l */
/* loaded from: classes2.dex */
public class NetworkUtil {
    static {
        Uri.parse("content://telephony/carriers/preferapn");
    }

    /* renamed from: a */
    private static NetworkInfo m8645a(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static int m8644b(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 2;
                    case 13:
                        return 3;
                    default:
                        return 0;
                }
            } else if (activeNetworkInfo.getType() == 1) {
                return 10;
            }
        }
        return 0;
    }

    /* renamed from: c */
    public static String m8643c(Context context) {
        int m8644b = m8644b(context);
        return m8644b != 1 ? m8644b != 2 ? m8644b != 3 ? m8644b != 10 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "WIFI" : "4G" : "3G" : "2G";
    }

    /* renamed from: d */
    public static boolean m8642d(Context context) {
        NetworkInfo m8645a = m8645a(context);
        if (m8645a != null) {
            return m8645a.isAvailable();
        }
        return false;
    }
}
