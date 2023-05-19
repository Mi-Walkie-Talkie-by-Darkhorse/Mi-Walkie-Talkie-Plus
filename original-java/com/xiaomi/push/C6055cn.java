package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import java.text.SimpleDateFormat;

/* renamed from: com.xiaomi.push.cn */
/* loaded from: classes2.dex */
public class C6055cn {

    /* renamed from: a */
    private static String f21181a;

    /* renamed from: a */
    private static SimpleDateFormat f21182a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        f21182a = simpleDateFormat;
        f21181a = simpleDateFormat.format(Long.valueOf(System.currentTimeMillis()));
    }

    /* renamed from: a */
    public static C6241hz m3495a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d("category_push_stat");
        c6241hz.m2544a("push_sdk_stat_channel");
        c6241hz.m2547a(1L);
        c6241hz.m2536b(str);
        c6241hz.m2541a(true);
        c6241hz.m2537b(System.currentTimeMillis());
        c6241hz.m2521g(C6031bw.m3588a(context).m3590a());
        c6241hz.m2525e("com.xiaomi.xmsf");
        c6241hz.m2523f("");
        c6241hz.m2532c("push_stat");
        return c6241hz;
    }
}
