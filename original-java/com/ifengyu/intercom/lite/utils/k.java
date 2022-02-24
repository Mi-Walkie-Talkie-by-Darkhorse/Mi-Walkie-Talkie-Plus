package com.ifengyu.intercom.lite.utils;

import androidx.annotation.NonNull;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* compiled from: TimeUtils.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f5793a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f5794b = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f5795c = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "魔羯座"};

    private static SimpleDateFormat a(String str) {
        SimpleDateFormat simpleDateFormat = f5793a.get();
        if (simpleDateFormat == null) {
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str, Locale.getDefault());
            f5793a.set(simpleDateFormat2);
            return simpleDateFormat2;
        }
        simpleDateFormat.applyPattern(str);
        return simpleDateFormat;
    }

    public static String a(long j, @NonNull String str) {
        return a(j, a(str));
    }

    public static String a(long j, @NonNull DateFormat dateFormat) {
        return dateFormat.format(new Date(j));
    }

    private static long a() {
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(13, 0);
        instance.set(12, 0);
        instance.set(14, 0);
        return instance.getTimeInMillis();
    }

    public static boolean a(long j) {
        long a2 = a();
        return j >= a2 && j < a2 + 86400000;
    }
}
