package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.mipush.sdk.Constants;
import java.text.SimpleDateFormat;
import java.util.Hashtable;
import java.util.Random;
import org.json.JSONObject;

/* compiled from: Utils */
public final class jg {
    static String a = null;
    static WifiManager b = null;
    private static int c = 0;
    private static String[] d = null;
    private static Hashtable<String, Long> e = new Hashtable<>();
    private static SparseArray<String> f = null;
    private static SimpleDateFormat g = null;
    private static String[] h = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    public static double a(double d2) {
        return ((double) ((long) (d2 * 1000000.0d))) / 1000000.0d;
    }

    public static float a(float f2) {
        return (float) (((double) ((long) (((double) f2) * 100.0d))) / 100.0d);
    }

    public static float a(double[] dArr) {
        if (dArr.length != 4) {
            return 0.0f;
        }
        float[] fArr = new float[1];
        Location.distanceBetween(dArr[0], dArr[1], dArr[2], dArr[3], fArr);
        return fArr[0];
    }

    public static int a(int i) {
        return (i * 2) - 113;
    }

    public static int a(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            return networkInfo.getType();
        }
        return -1;
    }

    public static long a() {
        return System.currentTimeMillis();
    }

    public static Object a(Context context, String str) {
        Object obj = null;
        if (context == null) {
            return obj;
        }
        try {
            return context.getApplicationContext().getSystemService(str);
        } catch (Throwable th) {
            jd.a(th, "Utils", "getServ");
            return obj;
        }
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return c() < 17 ? b(context, "android.provider.Settings$System") : b(context, "android.provider.Settings$Global");
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean a(String str) {
        return !TextUtils.isEmpty(str) && !str.equals("00:00:00:00:00:00") && !str.contains(" :");
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return fy.a(jSONObject, str);
    }

    public static byte[] a(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            bArr = new byte[2];
        }
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((65280 & i) >> 8);
        return bArr;
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((int) ((j >> (i * 8)) & 255));
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        boolean z = false;
        try {
            return fy.b(bArr);
        } catch (Throwable th) {
            jd.a(th, "Utils", "gz");
            return z;
        }
    }

    public static String[] a(TelephonyManager telephonyManager) {
        int i;
        String str = null;
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperator();
        }
        String[] strArr = {"0", "0"};
        boolean z = TextUtils.isEmpty(str) ? false : !TextUtils.isDigitsOnly(str) ? false : str.length() > 4;
        if (z) {
            strArr[0] = str.substring(0, 3);
            char[] charArray = str.substring(3).toCharArray();
            int i2 = 0;
            while (i2 < charArray.length && Character.isDigit(charArray[i2])) {
                i2++;
            }
            strArr[1] = str.substring(3, i2 + 3);
        }
        try {
            i = Integer.parseInt(strArr[0]);
        } catch (Throwable th) {
            jd.a(th, "Utils", "getMccMnc");
            i = 0;
        }
        if (i == 0) {
            strArr[0] = "0";
        }
        if (strArr[0].equals("0") || strArr[1].equals("0")) {
            return (!strArr[0].equals("0") || !strArr[1].equals("0") || d == null) ? strArr : d;
        }
        d = strArr;
        return strArr;
    }

    public static double b(double d2) {
        return ((double) ((long) (d2 * 100.0d))) / 100.0d;
    }

    public static long b() {
        return SystemClock.elapsedRealtime();
    }

    public static String b(int i) {
        String str = "其他错误";
        switch (i) {
            case 0:
                return "success";
            case 1:
                return "重要参数为空";
            case 2:
                return "WIFI信息不足";
            case 3:
                return "请求参数获取出现异常";
            case 4:
                return "网络连接异常";
            case 5:
                return "解析数据异常";
            case 6:
                return "定位结果错误";
            case 7:
                return "KEY错误";
            case 8:
                return "其他错误";
            case 9:
                return "初始化异常";
            case 10:
                return "定位服务启动失败";
            case 11:
                return "错误的基站信息，请检查是否插入SIM卡";
            case 12:
                return "缺少定位权限";
            case 13:
                return "网络定位失败，请检查设备是否插入sim卡，是否开启移动网络或开启了wifi模块";
            case 14:
                return "GPS 定位失败，由于设备当前 GPS 状态差,建议持设备到相对开阔的露天场所再次尝试";
            case 15:
                return "当前返回位置为模拟软件返回，请关闭模拟软件，或者在option中设置允许模拟";
            case 18:
                return "定位失败，飞行模式下关闭了WIFI开关，请关闭飞行模式或者打开WIFI开关";
            case 19:
                return "定位失败，没有检查到SIM卡，并且关闭了WIFI开关，请打开WIFI开关或者插入SIM卡";
            default:
                return str;
        }
    }

    public static String b(Context context) {
        PackageInfo packageInfo;
        CharSequence charSequence = null;
        if (!TextUtils.isEmpty(jd.g)) {
            return jd.g;
        }
        if (context == null) {
            return null;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(fo.c(context), 64);
        } catch (Throwable th) {
            jd.a(th, "Utils", "getAppName part");
            packageInfo = null;
        }
        try {
            if (TextUtils.isEmpty(jd.h)) {
                jd.h = null;
            }
        } catch (Throwable th2) {
            jd.a(th2, "Utils", "getAppName");
        }
        StringBuilder sb = new StringBuilder();
        if (packageInfo != null) {
            if (packageInfo.applicationInfo != null) {
                charSequence = packageInfo.applicationInfo.loadLabel(context.getPackageManager());
            }
            if (charSequence != null) {
                sb.append(charSequence.toString());
            }
            if (!TextUtils.isEmpty(packageInfo.versionName)) {
                sb.append(packageInfo.versionName);
            }
        }
        String c2 = fo.c(context);
        if (!TextUtils.isEmpty(c2)) {
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(c2);
        }
        if (!TextUtils.isEmpty(jd.h)) {
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(jd.h);
        }
        String sb2 = sb.toString();
        jd.g = sb2;
        return sb2;
    }

    public static String b(TelephonyManager telephonyManager) {
        int i = 0;
        if (f == null) {
            SparseArray<String> sparseArray = new SparseArray<>();
            f = sparseArray;
            sparseArray.append(0, "UNKWN");
            f.append(1, "GPRS");
            f.append(2, "EDGE");
            f.append(3, "UMTS");
            f.append(4, "CDMA");
            f.append(5, "EVDO_0");
            f.append(6, "EVDO_A");
            f.append(7, "1xRTT");
            f.append(8, "HSDPA");
            f.append(9, "HSUPA");
            f.append(10, "HSPA");
            f.append(11, "IDEN");
            f.append(12, "EVDO_B");
            f.append(13, "LTE");
            f.append(14, "EHRPD");
            f.append(15, "HSPAP");
        }
        if (telephonyManager != null) {
            i = telephonyManager.getNetworkType();
        }
        return (String) f.get(i, "UNKWN");
    }

    private static boolean b(Context context, String str) throws Throwable {
        return ((Integer) je.a(str, "getInt", new Object[]{context.getContentResolver(), ((String) je.a(str, "AIRPLANE_MODE_ON")).toString()}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 1;
    }

    public static byte[] b(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            bArr = new byte[4];
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((i >> (i2 * 8)) & 255);
        }
        return bArr;
    }

    public static byte[] b(String str) {
        return a(Integer.parseInt(str), (byte[]) null);
    }

    public static int c() {
        if (c > 0) {
            return c;
        }
        boolean z = false;
        String str = "android.os.Build$VERSION";
        try {
            return je.b(str, "SDK_INT");
        } catch (Throwable th) {
            return z;
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean c(Context context) {
        boolean z;
        if (context == null) {
            return true;
        }
        if (b == null) {
            b = (WifiManager) a(context, Network.NETWORK_TYPE_WIFI);
        }
        try {
            z = b.isWifiEnabled();
        } catch (Throwable th) {
            z = false;
        }
        if (z || c() <= 17) {
            return z;
        }
        try {
            return String.valueOf(je.a(b, "isScanAlwaysAvailable", new Object[0])).equals("true");
        } catch (Throwable th2) {
            return z;
        }
    }

    public static byte[] c(String str) {
        return b(Integer.parseInt(str), (byte[]) null);
    }

    public static String d() {
        return Build.MODEL;
    }

    public static String e() {
        return VERSION.RELEASE;
    }

    public static int f() {
        return new Random().nextInt(65536) - 32768;
    }
}
