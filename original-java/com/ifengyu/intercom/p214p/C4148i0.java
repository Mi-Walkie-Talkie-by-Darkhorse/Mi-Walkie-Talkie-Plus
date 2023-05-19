package com.ifengyu.intercom.p214p;

import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: TimeUtils.java */
/* renamed from: com.ifengyu.intercom.p.i0 */
/* loaded from: classes2.dex */
public class C4148i0 {
    /* renamed from: a */
    public static long m11167a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        String replace = str.substring(0, 19).replace("T", " ");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            Date parse = simpleDateFormat.parse(replace);
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            return simpleDateFormat.parse(simpleDateFormat.format(parse)).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: b */
    public static String m11166b(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j * 1000));
    }

    /* renamed from: c */
    public static String m11165c(long j) {
        Calendar calendar = Calendar.getInstance();
        long timeInMillis = calendar.getTimeInMillis() - j;
        int i = calendar.get(1);
        int i2 = calendar.get(2);
        int i3 = calendar.get(5);
        int i4 = (timeInMillis > 60000L ? 1 : (timeInMillis == 60000L ? 0 : -1));
        if (i4 < 0) {
            return UIUtils.m8603o(R.string.just);
        }
        if (i4 < 0 || timeInMillis >= 3600000) {
            calendar.set(i, i2, i3, 0, 0, 0);
            if (j >= calendar.getTimeInMillis()) {
                return UIUtils.m8602p(R.string.hour_ago, Long.valueOf(timeInMillis / 3600000));
            }
            calendar.set(i, i2, i3 - 1, 0, 0, 0);
            if (j >= calendar.getTimeInMillis()) {
                return UIUtils.m8603o(R.string.yesterday);
            }
            calendar.set(i, i2, i3 - 2, 0, 0, 0);
            if (j >= calendar.getTimeInMillis()) {
                return UIUtils.m8603o(R.string.the_day_before_yesterday);
            }
            return timeInMillis < 2592000000L ? UIUtils.m8602p(R.string.day_before, Long.valueOf(timeInMillis / 86400000)) : timeInMillis < 31104000000L ? UIUtils.m8602p(R.string.month_ago, Long.valueOf(timeInMillis / 2592000000L)) : UIUtils.m8602p(R.string.year_ago, 1);
        }
        return UIUtils.m8602p(R.string.min_ago, Long.valueOf((timeInMillis / 60) / 1000));
    }

    /* renamed from: d */
    public static String m11164d(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j));
    }

    /* renamed from: e */
    public static String m11163e(long j, String str) {
        return new SimpleDateFormat(str, Locale.getDefault()).format(new Date(j));
    }

    /* renamed from: f */
    public static String m11162f(long j, boolean z) {
        Date date = new Date(j);
        new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        Date date2 = new Date(time.getTime() - 86400000);
        Date date3 = new Date(time.getTime() + 86400000);
        if (!date.before(time)) {
            return new SimpleDateFormat("HH:mm", Locale.getDefault()).format(date);
        }
        if (!date.before(date2)) {
            return UIUtils.m8603o(R.string.time_yesterday);
        }
        if (m11159i(date, date3)) {
            return m11160h(date);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(date);
    }

    /* renamed from: g */
    public static String m11161g(long j) {
        Date date = new Date(j);
        new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        Date date2 = new Date(time.getTime() - 86400000);
        if (!date.before(time)) {
            return m11163e(j, "HH:mm");
        }
        if (!date.before(date2)) {
            return UIUtils.m8603o(R.string.time_yesterday) + m11163e(j, "HH:mm");
        }
        return m11163e(j, UIUtils.m8603o(R.string.time_format));
    }

    /* renamed from: h */
    public static String m11160h(Date date) {
        String[] strArr = {UIUtils.m8603o(R.string.time_sunday), UIUtils.m8603o(R.string.time_monday), UIUtils.m8603o(R.string.time_tuesday), UIUtils.m8603o(R.string.time_wednesday), UIUtils.m8603o(R.string.time_thursday), UIUtils.m8603o(R.string.time_friday), UIUtils.m8603o(R.string.time_saturday)};
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return strArr[calendar.get(7) - 1];
    }

    /* renamed from: i */
    private static boolean m11159i(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date2);
        calendar.add(5, -7);
        return calendar.getTime().getTime() < date.getTime();
    }
}
