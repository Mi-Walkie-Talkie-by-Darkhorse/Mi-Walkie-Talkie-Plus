package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import java.text.SimpleDateFormat;

/* loaded from: classes2.dex */
public class cn {

    /* renamed from: a  reason: collision with root package name */
    private static String f8814a;

    /* renamed from: a  reason: collision with other field name */
    private static SimpleDateFormat f167a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        f167a = simpleDateFormat;
        f8814a = simpleDateFormat.format(Long.valueOf(System.currentTimeMillis()));
    }

    public static hz a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        hz hzVar = new hz();
        hzVar.d("category_push_stat");
        hzVar.a("push_sdk_stat_channel");
        hzVar.a(1L);
        hzVar.b(str);
        hzVar.a(true);
        hzVar.b(System.currentTimeMillis());
        hzVar.g(bw.a(context).m113a());
        hzVar.e("com.xiaomi.xmsf");
        hzVar.f("");
        hzVar.c("push_stat");
        return hzVar;
    }
}
