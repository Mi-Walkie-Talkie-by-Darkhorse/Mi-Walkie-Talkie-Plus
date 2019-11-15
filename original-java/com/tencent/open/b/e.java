package com.tencent.open.b;

import com.tencent.open.utils.d;

/* compiled from: ProGuard */
public class e {
    public static int a(String str) {
        int a = com.tencent.open.utils.e.a(d.a(), str).a("Common_BusinessReportFrequency");
        if (a == 0) {
            return 100;
        }
        return a;
    }

    public static int a() {
        int a = com.tencent.open.utils.e.a(d.a(), (String) null).a("Common_HttpRetryCount");
        if (a == 0) {
            return 2;
        }
        return a;
    }
}
