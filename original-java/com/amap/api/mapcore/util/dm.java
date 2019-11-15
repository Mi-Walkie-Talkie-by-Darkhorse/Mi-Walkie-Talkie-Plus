package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;

/* compiled from: DeviceUtil */
public class dm {
    public static String a(Context context) {
        String t = fs.t(context);
        if (TextUtils.isEmpty(t)) {
            t = fs.h(context);
            if (TextUtils.isEmpty(t)) {
                t = a();
            }
        }
        return fu.c(t);
    }

    private static String a() {
        return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
    }
}
