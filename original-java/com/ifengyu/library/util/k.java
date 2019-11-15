package com.ifengyu.library.util;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* compiled from: TimeUtil */
public class k {
    public static String a(long j, boolean z) {
        String format;
        Date date = new Date(j);
        Date date2 = new Date();
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        Date time = instance.getTime();
        Date date3 = new Date(time.getTime() - 86400000);
        Date date4 = new Date(date3.getTime() - 86400000);
        if (!date.before(time)) {
            format = "今天";
        } else if (!date.before(date3)) {
            format = "昨天";
        } else if (!date.before(date4)) {
            format = "前天";
        } else if (a(date, date2)) {
            format = b(date);
        } else {
            format = new SimpleDateFormat(FileTracerConfig.DEF_FOLDER_FORMAT, Locale.getDefault()).format(date);
        }
        String format2 = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(date);
        if (!z) {
            return format + Token.SEPARATOR + format2;
        }
        if (!date.before(time)) {
            return a(date);
        }
        return format;
    }

    public static String a(Date date) {
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("KK:mm", Locale.getDefault());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("hh:mm", Locale.getDefault());
        int i = instance.get(11);
        if (i >= 0 && i < 5) {
            return "凌晨" + simpleDateFormat.format(date);
        }
        if (i >= 5 && i < 12) {
            return "上午" + simpleDateFormat.format(date);
        }
        if (i >= 12 && i < 18) {
            return "下午" + simpleDateFormat2.format(date);
        }
        if (i < 18 || i >= 24) {
            return "";
        }
        return "晚上" + simpleDateFormat2.format(date);
    }

    public static String b(Date date) {
        String[] strArr = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        return strArr[instance.get(7) - 1];
    }

    public static boolean a(Date date, Date date2) {
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance.setTime(date);
        instance2.setTime(date2);
        int i = instance.get(1) - instance2.get(1);
        if (i == 0) {
            if (instance.get(3) == instance2.get(3)) {
                return true;
            }
        } else if (1 == i && 11 == instance2.get(2)) {
            if (instance.get(3) == instance2.get(3)) {
                return true;
            }
        } else if (-1 == i && 11 == instance.get(2) && instance.get(3) == instance2.get(3)) {
            return true;
        }
        return false;
    }

    public static long a(long j) {
        return (long) new BigDecimal((double) (((float) j) / 1000.0f)).setScale(0, 4).intValue();
    }
}
