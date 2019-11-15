package com.amap.api.col.sl;

import android.content.Context;
import com.xiaomi.mipush.sdk.Constants;

/* compiled from: StatisticsUtil */
public final class ar {
    static eb a;

    public static void a(Context context, String str, long j, boolean z) {
        try {
            String a2 = a(str, j, z);
            if (a2 != null && a2.length() > 0) {
                if (a == null) {
                    a = new eb(context, "sea", "6.1.0", "O002");
                }
                a.a(a2);
                ec.a(a, context);
            }
        } catch (Throwable th) {
            t.a(th, "StatisticsUtil", "recordResponseAction");
        }
    }

    private static String a(String str, long j, boolean z) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            sb.append("\"RequestPath\":\"").append(str).append("\"");
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            sb.append("\"ResponseTime\":").append(j);
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            sb.append("\"Success\":").append(z);
            sb.append("}");
            return sb.toString();
        } catch (Throwable th) {
            t.a(th, "StatisticsUtil", "generateNetWorkResponseStatisticsEntity");
            return null;
        }
    }
}
