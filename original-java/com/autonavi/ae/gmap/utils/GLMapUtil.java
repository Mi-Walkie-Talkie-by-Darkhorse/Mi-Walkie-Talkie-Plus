package com.autonavi.ae.gmap.utils;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.TypedValue;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class GLMapUtil {
    public static final int AMAP_ENGINE_TYPE_EAGLEEYE = 1;
    public static final int AMAP_ENGINE_TYPE_MAIN = 0;
    public static final int AN_ENGINE_ID_EAGLE_EYE = 2;
    public static final int AN_ENGINE_ID_MAIN = 1;
    public static final int DEFAULT_DURATION = 250;

    public static byte[] decodeAssetResData(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read > -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    open.close();
                    return byteArray;
                }
            }
        } catch (IOException e) {
            return null;
        } catch (OutOfMemoryError e2) {
            return null;
        }
    }

    public static int dipToPixel(Context context, int i) {
        if (context == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
        } catch (Exception e) {
            return i;
        }
    }

    public static int spToPixel(Context context, int i) {
        return (int) TypedValue.applyDimension(2, (float) i, context.getResources().getDisplayMetrics());
    }

    public static String getString(Context context, int i) {
        return context.getResources().getString(i);
    }

    public static boolean isAssic(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] >= 256 || charArray[i] <= 0) {
                return false;
            }
        }
        return true;
    }

    public static String getAppVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return "";
        }
    }
}
