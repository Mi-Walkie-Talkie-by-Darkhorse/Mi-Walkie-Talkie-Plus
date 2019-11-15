package com.sina.weibo.sdk.statistic;

import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* compiled from: LogBuilder */
class c {
    private static /* synthetic */ int[] a;

    static /* synthetic */ int[] a() {
        int[] iArr = a;
        if (iArr == null) {
            iArr = new int[LogType.values().length];
            try {
                iArr[LogType.ACTIVITY.ordinal()] = 5;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[LogType.APP_AD_START.ordinal()] = 6;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[LogType.EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[LogType.FRAGMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[LogType.SESSION_END.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[LogType.SESSION_START.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            a = iArr;
        }
        return iArr;
    }

    public static String a(CopyOnWriteArrayList<f> copyOnWriteArrayList) {
        StringBuilder sb = new StringBuilder();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            sb.append(a((f) it.next()).toString()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        }
        return sb.toString();
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static org.json.JSONObject a(com.sina.weibo.sdk.statistic.f r6) {
        /*
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            int[] r0 = a()     // Catch:{ Exception -> 0x002a }
            com.sina.weibo.sdk.statistic.LogType r2 = r6.e()     // Catch:{ Exception -> 0x002a }
            int r2 = r2.ordinal()     // Catch:{ Exception -> 0x002a }
            r0 = r0[r2]     // Catch:{ Exception -> 0x002a }
            switch(r0) {
                case 1: goto L_0x0017;
                case 2: goto L_0x0040;
                case 3: goto L_0x005f;
                case 4: goto L_0x0087;
                case 5: goto L_0x00a9;
                case 6: goto L_0x00d2;
                default: goto L_0x0016;
            }     // Catch:{ Exception -> 0x002a }
        L_0x0016:
            return r1
        L_0x0017:
            java.lang.String r0 = "type"
            r2 = 0
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.g()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        L_0x002a:
            r0 = move-exception
            java.lang.String r2 = "WBAgent"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "get page log error."
            r3.<init>(r4)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            com.sina.weibo.sdk.utils.c.c(r2, r0)
            goto L_0x0016
        L_0x0040:
            java.lang.String r0 = "type"
            r2 = 1
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.h()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "duration"
            long r2 = r6.i()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        L_0x005f:
            java.lang.String r0 = "type"
            r2 = 2
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "page_id"
            java.lang.String r2 = r6.f()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.g()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "duration"
            long r2 = r6.i()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        L_0x0087:
            java.lang.String r0 = "type"
            r2 = 3
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "page_id"
            java.lang.String r2 = r6.f()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.g()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            com.sina.weibo.sdk.statistic.b r6 = (com.sina.weibo.sdk.statistic.b) r6     // Catch:{ Exception -> 0x002a }
            a(r1, r6)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        L_0x00a9:
            java.lang.String r0 = "type"
            r2 = 4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "page_id"
            java.lang.String r2 = r6.f()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.g()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "duration"
            long r2 = r6.i()     // Catch:{ Exception -> 0x002a }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        L_0x00d2:
            com.sina.weibo.sdk.statistic.a r6 = (com.sina.weibo.sdk.statistic.a) r6     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "type"
            r2 = 0
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "page_id"
            java.lang.String r2 = r6.b()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "time"
            long r2 = r6.g()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            java.lang.String r0 = "aid"
            java.lang.String r2 = r6.a()     // Catch:{ Exception -> 0x002a }
            r1.put(r0, r2)     // Catch:{ Exception -> 0x002a }
            a(r1, r6)     // Catch:{ Exception -> 0x002a }
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.statistic.c.a(com.sina.weibo.sdk.statistic.f):org.json.JSONObject");
    }

    private static JSONObject a(JSONObject jSONObject, b bVar) {
        try {
            jSONObject.put("event_id", bVar.c());
            if (bVar.d() != null) {
                Map d = bVar.d();
                StringBuilder sb = new StringBuilder();
                int i = 0;
                for (String str : d.keySet()) {
                    if (i >= 10) {
                        break;
                    } else if (!TextUtils.isEmpty((CharSequence) d.get(str))) {
                        if (sb.length() > 0) {
                            sb.append("|");
                        }
                        sb.append(str).append(":").append((String) d.get(str));
                        i++;
                    }
                }
                jSONObject.put("extend", sb.toString());
            }
        } catch (Exception e) {
            com.sina.weibo.sdk.utils.c.c("WBAgent", "add event log error." + e);
        }
        return jSONObject;
    }
}
