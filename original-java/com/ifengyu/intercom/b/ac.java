package com.ifengyu.intercom.b;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.R;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: TimeUtils */
public class ac {
    public static String a(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j));
    }

    public static String b(long j) {
        return new SimpleDateFormat("dd").format(Long.valueOf(j));
    }

    public static String c(long j) {
        return new SimpleDateFormat("MMM.", Locale.ENGLISH).format(Long.valueOf(j));
    }

    public static String d(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(1000 * j));
    }

    public static String e(long j) {
        return new SimpleDateFormat(FileTracerConfig.DEF_FOLDER_FORMAT).format(Long.valueOf(1000 * j));
    }

    public static String f(long j) {
        return new SimpleDateFormat(ad.a((int) R.string.time_format_month_day_hour), Locale.getDefault()).format(Long.valueOf(1000 * j));
    }

    public static long a(String str) {
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        String replace = str.substring(0, 19).replace("T", Token.SEPARATOR);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            Date parse = simpleDateFormat.parse(replace);
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            return simpleDateFormat.parse(simpleDateFormat.format(parse)).getTime();
        } catch (ParseException e) {
            ThrowableExtension.printStackTrace(e);
            return j;
        }
    }

    public static String g(long j) {
        Calendar instance = Calendar.getInstance();
        long timeInMillis = instance.getTimeInMillis() - j;
        int i = instance.get(1);
        int i2 = instance.get(2);
        int i3 = instance.get(5);
        if (timeInMillis < 60000) {
            return ad.a((int) R.string.just);
        }
        if (timeInMillis < 60000 || timeInMillis >= OpenStreetMapTileProviderConstants.ONE_HOUR) {
            instance.set(i, i2, i3, 0, 0, 0);
            if (j >= instance.getTimeInMillis()) {
                return ad.a((int) R.string.hour_ago, Long.valueOf(timeInMillis / OpenStreetMapTileProviderConstants.ONE_HOUR));
            }
            instance.set(i, i2, i3 - 1, 0, 0, 0);
            if (j >= instance.getTimeInMillis()) {
                return ad.a((int) R.string.yesterday);
            }
            instance.set(i, i2, i3 - 2, 0, 0, 0);
            if (j >= instance.getTimeInMillis()) {
                return ad.a((int) R.string.the_day_before_yesterday);
            }
            if (timeInMillis < OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS) {
                return ad.a((int) R.string.day_before, Long.valueOf(timeInMillis / 86400000));
            } else if (timeInMillis < 31104000000L) {
                return ad.a((int) R.string.month_ago, Long.valueOf(timeInMillis / OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS));
            } else {
                return ad.a((int) R.string.year_ago, Integer.valueOf(1));
            }
        } else {
            return ad.a((int) R.string.min_ago, Long.valueOf((timeInMillis / 60) / 1000));
        }
    }

    public static String a(int i) {
        if (i <= 0) {
            return "00:00:00";
        }
        int i2 = i / 60;
        if (i2 < 60) {
            return "00:" + b(i2) + ":" + b(i % 60);
        }
        int i3 = i2 / 60;
        if (i3 > 99) {
            return "99:59:59";
        }
        int i4 = i2 % 60;
        return b(i3) + ":" + b(i4) + ":" + b((i - (i3 * 3600)) - (i4 * 60));
    }

    public static String b(int i) {
        if (i < 0 || i >= 10) {
            return "" + i;
        }
        return "0" + Integer.toString(i);
    }
}
