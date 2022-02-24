package com.ifengyu.intercom.i;

import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.xiaomi.mipush.sdk.Constants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: TimeUtils.java */
/* loaded from: classes2.dex */
public class j0 {
    public static String a(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j * 1000));
    }

    public static String b(long j) {
        Calendar instance = Calendar.getInstance();
        long timeInMillis = instance.getTimeInMillis() - j;
        int i = instance.get(1);
        int i2 = instance.get(2);
        int i3 = instance.get(5);
        int i4 = (timeInMillis > OpenStreetMapTileProviderConstants.ONE_MINUTE ? 1 : (timeInMillis == OpenStreetMapTileProviderConstants.ONE_MINUTE ? 0 : -1));
        if (i4 < 0) {
            return k0.c(R.string.just);
        }
        if (i4 >= 0 && timeInMillis < OpenStreetMapTileProviderConstants.ONE_HOUR) {
            return k0.a((int) R.string.min_ago, Long.valueOf((timeInMillis / 60) / 1000));
        }
        instance.set(i, i2, i3, 0, 0, 0);
        if (j >= instance.getTimeInMillis()) {
            return k0.a((int) R.string.hour_ago, Long.valueOf(timeInMillis / OpenStreetMapTileProviderConstants.ONE_HOUR));
        }
        instance.set(i, i2, i3 - 1, 0, 0, 0);
        if (j >= instance.getTimeInMillis()) {
            return k0.c(R.string.yesterday);
        }
        instance.set(i, i2, i3 - 2, 0, 0, 0);
        if (j >= instance.getTimeInMillis()) {
            return k0.c(R.string.the_day_before_yesterday);
        }
        return timeInMillis < OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS ? k0.a((int) R.string.day_before, Long.valueOf(timeInMillis / 86400000)) : timeInMillis < 31104000000L ? k0.a((int) R.string.month_ago, Long.valueOf(timeInMillis / OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS)) : k0.a((int) R.string.year_ago, 1);
    }

    public static String c(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j));
    }

    public static String d(long j) {
        return new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(j * 1000));
    }

    public static String e(long j) {
        return new SimpleDateFormat("dd").format(Long.valueOf(j));
    }

    public static String f(long j) {
        return new SimpleDateFormat("MMM.", Locale.ENGLISH).format(Long.valueOf(j));
    }

    public static String g(long j) {
        return new SimpleDateFormat(k0.c(R.string.time_format_month_day_hour), Locale.getDefault()).format(Long.valueOf(j * 1000));
    }

    public static long a(String str) {
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

    public static String a(int i) {
        if (i <= 0) {
            return "00:00:00";
        }
        int i2 = i / 60;
        if (i2 < 60) {
            return "00:" + b(i2) + Constants.COLON_SEPARATOR + b(i % 60);
        }
        int i3 = i2 / 60;
        if (i3 > 99) {
            return "99:59:59";
        }
        int i4 = i2 % 60;
        return b(i3) + Constants.COLON_SEPARATOR + b(i4) + Constants.COLON_SEPARATOR + b((i - (i3 * 3600)) - (i4 * 60));
    }

    public static String b(int i) {
        if (i < 0 || i >= 10) {
            return "" + i;
        }
        return "0" + Integer.toString(i);
    }
}
