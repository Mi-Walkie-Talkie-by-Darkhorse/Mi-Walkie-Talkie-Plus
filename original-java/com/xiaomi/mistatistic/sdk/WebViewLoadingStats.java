package com.xiaomi.mistatistic.sdk;

import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.k;

public class WebViewLoadingStats {
    public static void onPageStart(String str) {
        k.b(c.a(), str, System.currentTimeMillis());
    }

    public static void onPageEnd(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long a = k.a(c.a(), str, 0);
        long j = currentTimeMillis - a;
        if (a <= 0 || j < 0) {
            h.b("", "web_view_page_loading record time is invalid, record startTime is : %d,record end time is : %d", Long.valueOf(a), Long.valueOf(currentTimeMillis));
            return;
        }
        k.b(c.a(), str, 0);
        h.b("", "web_view_page_loading time is:%d, url is:%s", Long.valueOf(j), str);
        MiStatInterface.recordCalculateEvent("web_view_page_loading_time", str, j);
    }
}
