package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.os.EnvironmentCompat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.utils.AidTask.a;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Locale;

/* compiled from: Utility */
public class i {
    public static Bundle a(String str) {
        try {
            URL url = new URL(str);
            Bundle c = c(url.getQuery());
            c.putAll(c(url.getRef()));
            return c;
        } catch (MalformedURLException e) {
            return new Bundle();
        }
    }

    public static Bundle b(String str) {
        try {
            return c(new URI(str).getQuery());
        } catch (Exception e) {
            return new Bundle();
        }
    }

    public static Bundle c(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String split : str.split("&")) {
                String[] split2 = split.split("=");
                try {
                    bundle.putString(URLDecoder.decode(split2[0], "UTF-8"), URLDecoder.decode(split2[1], "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        }
        return bundle;
    }

    public static boolean a(Context context) {
        try {
            Locale locale = context.getResources().getConfiguration().locale;
            if (Locale.CHINA.equals(locale) || Locale.CHINESE.equals(locale) || Locale.SIMPLIFIED_CHINESE.equals(locale) || Locale.TAIWAN.equals(locale)) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public static String a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            for (Signature byteArray : packageInfo.signatures) {
                byte[] byteArray2 = byteArray.toByteArray();
                if (byteArray2 != null) {
                    return d.a(byteArray2);
                }
            }
            return null;
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static String b(Context context, String str) {
        a b = AidTask.a(context).b(str);
        if (b != null) {
            return b.a();
        }
        return "";
    }

    public static String b(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER).append("-").append(Build.MODEL);
        sb.append("_");
        sb.append(VERSION.RELEASE);
        sb.append("_");
        sb.append("weibosdk");
        sb.append("_");
        sb.append("0031405000");
        sb.append("_android");
        return sb.toString();
    }

    public static String c(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER).append("-").append(Build.MODEL);
        sb.append("__");
        sb.append("weibosdk");
        sb.append("__");
        try {
            sb.append("0031405000".replaceAll("\\s+", "_"));
        } catch (Exception e) {
            sb.append(EnvironmentCompat.MEDIA_UNKNOWN);
        }
        sb.append("__").append("android").append("__android").append(VERSION.RELEASE);
        return sb.toString();
    }
}
