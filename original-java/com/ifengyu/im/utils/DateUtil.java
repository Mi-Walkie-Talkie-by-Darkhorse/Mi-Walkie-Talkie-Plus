package com.ifengyu.im.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
    public static String getSessionTime(int i) {
        if (i <= 0) {
            return null;
        }
        String[] strArr = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy/MM/dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm");
        long j = ((long) i) * 1000;
        long currentTimeMillis = System.currentTimeMillis();
        long timesmorning = getTimesmorning();
        long j2 = timesmorning - 518400000;
        long j3 = currentTimeMillis - j;
        if (j3 < currentTimeMillis - timesmorning) {
            return simpleDateFormat2.format(Long.valueOf(j));
        }
        if (j3 >= currentTimeMillis - j2) {
            return simpleDateFormat.format(Long.valueOf(j));
        }
        if (j3 < currentTimeMillis - (timesmorning - 86400000)) {
            return "昨天";
        }
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        int i2 = instance.get(7) - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        return strArr[i2];
    }

    public static long getTimesmorning() {
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(13, 0);
        instance.set(12, 0);
        instance.set(14, 0);
        return instance.getTimeInMillis();
    }

    public static boolean needDisplayTime(int i, int i2) {
        return ((long) (i2 - i)) >= 300;
    }

    public static String getTimeDiffDesc(Date date) {
        if (date == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        Date date2 = new Date();
        instance.setTime(date2);
        Calendar instance2 = Calendar.getInstance();
        instance2.setTime(date);
        String[] strArr = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        int i = instance2.get(7) - 1;
        if (i < 0) {
            i = 0;
        }
        Calendar instance3 = Calendar.getInstance();
        Calendar instance4 = Calendar.getInstance();
        instance4.set(1, instance3.get(1));
        instance4.set(2, instance3.get(2));
        instance4.set(5, instance3.get(5));
        instance4.set(11, 0);
        instance4.set(12, 0);
        instance4.set(13, 0);
        Calendar instance5 = Calendar.getInstance();
        instance5.setTime(date2);
        instance5.add(5, -1);
        instance5.set(11, 0);
        instance5.set(12, 0);
        instance5.set(13, 0);
        Calendar instance6 = Calendar.getInstance();
        instance6.setTime(date2);
        instance6.add(5, -7);
        instance6.set(11, 0);
        instance6.set(12, 0);
        instance6.set(13, 0);
        int i2 = instance2.get(2);
        int i3 = instance2.get(5);
        int i4 = instance2.get(11);
        int i5 = instance2.get(12);
        String str = "";
        String str2 = "";
        if (i4 < 10) {
            str = "0";
        }
        if (i5 < 10) {
            str2 = "0";
        }
        if (instance2.after(instance4)) {
            if (i4 < 6) {
                return "凌晨 " + str + i4 + ":" + str2 + i5;
            }
            if (i4 < 12) {
                return "上午 " + str + i4 + ":" + str2 + i5;
            }
            if (i4 < 13) {
                return "下午 " + i4 + ":" + str2 + i5;
            }
            if (i4 < 19) {
                return "下午 " + (i4 - 12) + ":" + str2 + i5;
            }
            return "晚上 " + (i4 - 12) + ":" + str2 + i5;
        } else if (!instance2.before(instance4) || !instance2.after(instance5)) {
            if (!instance2.before(instance5) || !instance2.after(instance6)) {
                if (i4 < 6) {
                    return (i2 + 1) + "月" + i3 + "日凌晨 " + str + i4 + ":" + str2 + i5;
                }
                if (i4 < 12) {
                    return (i2 + 1) + "月" + i3 + "日上午 " + str + i4 + ":" + str2 + i5;
                }
                if (i4 < 13) {
                    return (i2 + 1) + "月" + i3 + "日下午 " + i4 + ":" + str2 + i5;
                }
                if (i4 < 19) {
                    return (i2 + 1) + "月" + i3 + "日下午 " + (i4 - 12) + ":" + str2 + i5;
                }
                return (i2 + 1) + "月" + i3 + "日晚上 " + (i4 - 12) + ":" + str2 + i5;
            } else if (i4 < 6) {
                return strArr[i] + "凌晨 " + str + i4 + ":" + str2 + i5;
            } else {
                if (i4 < 12) {
                    return strArr[i] + "上午 " + str + i4 + ":" + str2 + i5;
                }
                if (i4 < 13) {
                    return strArr[i] + "下午 " + i4 + ":" + str2 + i5;
                }
                if (i4 < 19) {
                    return strArr[i] + "下午 " + (i4 - 12) + ":" + str2 + i5;
                }
                return strArr[i] + "晚上 " + (i4 - 12) + ":" + str2 + i5;
            }
        } else if (i4 < 6) {
            return "昨天凌晨 " + str + i4 + ":" + str2 + i5;
        } else {
            if (i4 < 12) {
                return "昨天上午 " + str + i4 + ":" + str2 + i5;
            }
            if (i4 < 13) {
                return "昨天下午 " + i4 + ":" + str2 + i5;
            }
            if (i4 < 19) {
                return "昨天下午 " + (i4 - 12) + ":" + str2 + i5;
            }
            return "昨天晚上 " + (i4 - 12) + ":" + str2 + i5;
        }
    }
}
