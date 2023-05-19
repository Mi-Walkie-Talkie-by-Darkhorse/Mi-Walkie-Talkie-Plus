package com.ifengyu.intercom.device.lite.utils;

import androidx.annotation.NonNull;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: TimeUtils.java */
/* renamed from: com.ifengyu.intercom.device.lite.utils.f */
/* loaded from: classes2.dex */
public final class C3326f {

    /* renamed from: a */
    private static final ThreadLocal<SimpleDateFormat> f12414a = new ThreadLocal<>();

    /* renamed from: a */
    private static SimpleDateFormat m13837a(String str) {
        ThreadLocal<SimpleDateFormat> threadLocal = f12414a;
        SimpleDateFormat simpleDateFormat = threadLocal.get();
        if (simpleDateFormat == null) {
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str, Locale.getDefault());
            threadLocal.set(simpleDateFormat2);
            return simpleDateFormat2;
        }
        simpleDateFormat.applyPattern(str);
        return simpleDateFormat;
    }

    /* renamed from: b */
    public static String m13836b(long j, @NonNull String str) {
        return m13835c(j, m13837a(str));
    }

    /* renamed from: c */
    public static String m13835c(long j, @NonNull DateFormat dateFormat) {
        return dateFormat.format(new Date(j));
    }
}
