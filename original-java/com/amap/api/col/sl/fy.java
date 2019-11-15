package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.DPoint;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Random;
import org.json.JSONObject;

/* compiled from: Utils */
public final class fy {
    static String a = null;
    static WifiManager b = null;
    private static int c = 0;
    private static String[] d = null;
    private static Hashtable<String, Long> e = new Hashtable<>();
    private static SparseArray<String> f = null;
    private static SimpleDateFormat g = null;
    private static String[] h = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    private static boolean i = false;

    public static boolean a(String str) {
        if (!TextUtils.isEmpty(str) && TextUtils.isDigitsOnly(str)) {
            return ",202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,901,".contains(new StringBuilder(Constants.ACCEPT_TIME_SEPARATOR_SP).append(str).append(Constants.ACCEPT_TIME_SEPARATOR_SP).toString());
        }
        return false;
    }

    public static boolean a(ev evVar) {
        if (evVar != null && !evVar.d().equals(com.tencent.connect.common.Constants.VIA_SHARE_TYPE_PUBLISHVIDEO) && !evVar.d().equals("5") && !evVar.d().equals(com.tencent.connect.common.Constants.VIA_SHARE_TYPE_INFO)) {
            return b((AMapLocation) evVar);
        }
        return false;
    }

    public static boolean a(AMapLocation aMapLocation) {
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
            return b(aMapLocation);
        }
        return false;
    }

    public static boolean b(AMapLocation aMapLocation) {
        double longitude = aMapLocation.getLongitude();
        double latitude = aMapLocation.getLatitude();
        if ((longitude != 0.0d || latitude != 0.0d) && longitude <= 180.0d && latitude <= 90.0d && longitude >= -180.0d && latitude >= -90.0d) {
            return true;
        }
        return false;
    }

    public static int a(int i2) {
        return (i2 * 2) - 113;
    }

    public static String[] a(TelephonyManager telephonyManager) {
        boolean z;
        int i2;
        String str = null;
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperator();
        }
        String[] strArr = {"0", "0"};
        if (TextUtils.isEmpty(str)) {
            z = false;
        } else if (!TextUtils.isDigitsOnly(str)) {
            z = false;
        } else if (str.length() <= 4) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            strArr[0] = str.substring(0, 3);
            char[] charArray = str.substring(3).toCharArray();
            int i3 = 0;
            while (i3 < charArray.length && Character.isDigit(charArray[i3])) {
                i3++;
            }
            strArr[1] = str.substring(3, i3 + 3);
        }
        try {
            i2 = Integer.parseInt(strArr[0]);
        } catch (Throwable th) {
            fq.a(th, "Utils", "getMccMnc");
            i2 = 0;
        }
        if (i2 == 0) {
            strArr[0] = "0";
        }
        if (strArr[0].equals("0") || strArr[1].equals("0")) {
            return (!strArr[0].equals("0") || !strArr[1].equals("0") || d == null) ? strArr : d;
        }
        d = strArr;
        return strArr;
    }

    public static long a() {
        return System.currentTimeMillis();
    }

    public static long b() {
        return SystemClock.elapsedRealtime();
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            if (c() < 17) {
                return c(context, "android.provider.Settings$System");
            }
            return c(context, "android.provider.Settings$Global");
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean c(Context context, String str) throws Throwable {
        return ((Integer) ft.a(str, "getInt", new Object[]{context.getContentResolver(), ((String) ft.a(str, "AIRPLANE_MODE_ON")).toString()}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 1;
    }

    public static float a(double[] dArr) {
        if (dArr.length != 4) {
            return 0.0f;
        }
        float[] fArr = new float[1];
        Location.distanceBetween(dArr[0], dArr[1], dArr[2], dArr[3], fArr);
        return fArr[0];
    }

    public static float a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        return a(new double[]{aMapLocation.getLatitude(), aMapLocation.getLongitude(), aMapLocation2.getLatitude(), aMapLocation2.getLongitude()});
    }

    public static float a(DPoint dPoint, DPoint dPoint2) {
        return a(new double[]{dPoint.getLatitude(), dPoint.getLongitude(), dPoint2.getLatitude(), dPoint2.getLongitude()});
    }

    public static Object a(Context context, String str) {
        Object obj = null;
        if (context == null) {
            return obj;
        }
        try {
            return context.getApplicationContext().getSystemService(str);
        } catch (Throwable th) {
            fq.a(th, "Utils", "getServ");
            return obj;
        }
    }

    public static int c() {
        if (c > 0) {
            return c;
        }
        boolean z = false;
        String str = "android.os.Build$VERSION";
        try {
            return ft.b(str, "SDK_INT");
        } catch (Throwable th) {
            return z;
        }
    }

    public static byte[] a(byte[] bArr) {
        boolean z = false;
        try {
            return ca.b(bArr);
        } catch (Throwable th) {
            fq.a(th, "Utils", "gz");
            return z;
        }
    }

    public static String d() {
        return Build.MODEL;
    }

    public static String e() {
        return VERSION.RELEASE;
    }

    public static String b(Context context) {
        PackageInfo packageInfo;
        CharSequence charSequence = null;
        if (!TextUtils.isEmpty(fq.g)) {
            return fq.g;
        }
        if (context == null) {
            return null;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(bp.c(context), 64);
        } catch (Throwable th) {
            fq.a(th, "Utils", "getAppName part");
            packageInfo = null;
        }
        try {
            if (TextUtils.isEmpty(fq.h)) {
                fq.h = null;
            }
        } catch (Throwable th2) {
            fq.a(th2, "Utils", "getAppName");
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
        String c2 = bp.c(context);
        if (!TextUtils.isEmpty(c2)) {
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(c2);
        }
        if (!TextUtils.isEmpty(fq.h)) {
            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(fq.h);
        }
        String sb2 = sb.toString();
        fq.g = sb2;
        return sb2;
    }

    public static NetworkInfo c(Context context) {
        boolean z = false;
        try {
            return bu.q(context);
        } catch (Throwable th) {
            fq.a(th, "Utils", "getNetWorkInfo");
            return z;
        }
    }

    public static int f() {
        return new Random().nextInt(65536) - 32768;
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return ca.a(jSONObject, str);
    }

    public static boolean b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals("00:00:00:00:00:00") && !str.contains(" :")) {
            return true;
        }
        return false;
    }

    public static void g() {
        e.clear();
    }

    public static String h() {
        try {
            return bv.b("S128DF1572465B890OE3F7A13167KLEI".getBytes("UTF-8")).substring(20);
        } catch (Throwable th) {
            return "";
        }
    }

    public static int a(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            return networkInfo.getType();
        }
        return -1;
    }

    public static boolean d(Context context) {
        try {
            NetworkInfo c2 = c(context);
            if (c2 == null || !c2.isConnectedOrConnecting()) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static String b(TelephonyManager telephonyManager) {
        int i2 = 0;
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
            i2 = telephonyManager.getNetworkType();
        }
        return (String) f.get(i2, "UNKWN");
    }

    public static boolean e(Context context) {
        try {
            for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(bp.c(context))) {
                    if (runningAppProcessInfo.importance != 100) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            fq.a(th, "Utils", "isApplicationBroughtToBackground");
            return true;
        }
    }

    public static String b(byte[] bArr) {
        return ca.g(bArr);
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[8];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((int) ((j >> (i2 * 8)) & 255));
        }
        return bArr;
    }

    public static byte[] c(String str) {
        return a(Integer.parseInt(str), (byte[]) null);
    }

    public static byte[] a(int i2, byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            bArr = new byte[2];
        }
        bArr[0] = (byte) (i2 & 255);
        bArr[1] = (byte) ((65280 & i2) >> 8);
        return bArr;
    }

    public static String a(long j, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        if (g == null) {
            try {
                g = new SimpleDateFormat(str, Locale.CHINA);
            } catch (Throwable th) {
                fq.a(th, "Utils", "formatUTC");
            }
        } else {
            g.applyPattern(str);
        }
        if (j <= 0) {
            j = System.currentTimeMillis();
        }
        if (g == null) {
            return "NULL";
        }
        return g.format(Long.valueOf(j));
    }

    public static boolean a(long j, long j2) {
        String str = "yyyyMMddHH";
        if (g == null) {
            try {
                g = new SimpleDateFormat(str, Locale.CHINA);
            } catch (Throwable th) {
                fq.a(th, "Utils", "isSameDay part1");
            }
        } else {
            g.applyPattern(str);
        }
        try {
            if (g != null) {
                return g.format(Long.valueOf(j)).equals(g.format(Long.valueOf(j2)));
            }
            return false;
        } catch (Throwable th2) {
            fq.a(th2, "Utils", "isSameHour");
            return false;
        }
    }

    public static boolean b(long j, long j2) {
        String str = "yyyyMMdd";
        if (g == null) {
            try {
                g = new SimpleDateFormat(str, Locale.CHINA);
            } catch (Throwable th) {
                fq.a(th, "Utils", "isSameDay part1");
            }
        } else {
            g.applyPattern(str);
        }
        try {
            if (g != null) {
                return g.format(Long.valueOf(j)).equals(g.format(Long.valueOf(j2)));
            }
            return false;
        } catch (Throwable th2) {
            fq.a(th2, "Utils", "isSameDay");
            return false;
        }
    }

    public static boolean c(long j, long j2) {
        boolean z = true;
        if (!b(j, j2)) {
            return false;
        }
        Calendar instance = Calendar.getInstance(Locale.CHINA);
        instance.setTimeInMillis(j);
        int i2 = instance.get(11);
        instance.setTimeInMillis(j2);
        int i3 = instance.get(11);
        if (i2 <= 12 ? i3 > 12 : i3 <= 12) {
            z = false;
        }
        return z;
    }

    public static byte[] d(String str) {
        return b(Integer.parseInt(str), (byte[]) null);
    }

    public static byte[] b(int i2, byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            bArr = new byte[4];
        }
        for (int i3 = 0; i3 < bArr.length; i3++) {
            bArr[i3] = (byte) ((i2 >> (i3 * 8)) & 255);
        }
        return bArr;
    }

    public static double a(double d2) {
        return ((double) ((long) (d2 * 1000000.0d))) / 1000000.0d;
    }

    public static double b(double d2) {
        return ((double) ((long) (d2 * 100.0d))) / 100.0d;
    }

    public static double c(double d2) {
        return ((double) ((long) (d2 * 1000000.0d))) / 1000000.0d;
    }

    public static float a(float f2) {
        return (float) (((double) ((long) (((double) f2) * 100.0d))) / 100.0d);
    }

    public static String i() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath()).append(File.separator);
        sb.append("amap").append(File.separator);
        sb.append("openamaplocationsdk").append(File.separator);
        return sb.toString();
    }

    public static String b(int i2) {
        String str = "其他错误";
        switch (i2) {
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

    public static boolean b(Context context, String str) {
        try {
            if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean f(Context context) {
        int i2;
        if (VERSION.SDK_INT < 23 || context.getApplicationInfo().targetSdkVersion < 23) {
            for (String checkCallingOrSelfPermission : h) {
                if (context.checkCallingOrSelfPermission(checkCallingOrSelfPermission) != 0) {
                    return false;
                }
            }
            return true;
        }
        Application application = (Application) context;
        for (String str : h) {
            try {
                i2 = ft.b(application.getBaseContext(), "checkSelfPermission", str);
            } catch (Throwable th) {
                i2 = 0;
            }
            if (i2 != 0) {
                return false;
            }
        }
        return true;
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length + 1)];
        bArr2[0] = 0;
        for (int i2 = 1; i2 <= bArr.length; i2++) {
            bArr2[i2] = bArr[bArr.length - i2];
        }
        return bArr2;
    }

    public static byte[] d(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 10, bArr2, 0, Math.min(26, bArr.length) - 10);
        return bArr2;
    }

    public static boolean a(Location location, int i2) {
        int i3;
        Bundle extras = location.getExtras();
        if (extras != null) {
            i3 = extras.getInt("satellites");
        } else {
            i3 = 0;
        }
        if (i3 <= 0) {
            return true;
        }
        if (i2 == 0 && location.getAltitude() == 0.0d && location.getBearing() == 0.0f && location.getSpeed() == 0.0f) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005f, code lost:
        r0 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0062, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0067, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0068, code lost:
        if (r2 != null) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x006a, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006d, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        return true;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0067 A[ExcHandler: all (r0v1 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:4:0x0016] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0071  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(android.database.sqlite.SQLiteDatabase r6, java.lang.String r7) {
        /*
            r2 = 0
            r1 = 1
            r0 = 0
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            if (r3 == 0) goto L_0x000a
        L_0x0009:
            return r0
        L_0x000a:
            java.lang.String r3 = "2.0.201501131131"
            java.lang.String r4 = "."
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)
            if (r6 == 0) goto L_0x0009
            boolean r4 = r6.isOpen()     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            if (r4 == 0) goto L_0x0009
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            r4.<init>()     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.String r5 = "SELECT count(*) as c FROM sqlite_master WHERE type = 'table' AND name = '"
            r4.append(r5)     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.String r5 = r7.trim()     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.StringBuilder r5 = r4.append(r5)     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.StringBuilder r3 = r5.append(r3)     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.String r5 = "' "
            r3.append(r5)     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            java.lang.String r3 = r4.toString()     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            r5 = 0
            android.database.Cursor r2 = r6.rawQuery(r3, r5)     // Catch:{ Throwable -> 0x005e, all -> 0x0067 }
            if (r2 == 0) goto L_0x0050
            boolean r3 = r2.moveToFirst()     // Catch:{ Throwable -> 0x006e, all -> 0x0067 }
            if (r3 == 0) goto L_0x0050
            r3 = 0
            int r3 = r2.getInt(r3)     // Catch:{ Throwable -> 0x006e, all -> 0x0067 }
            if (r3 <= 0) goto L_0x0050
            r0 = r1
        L_0x0050:
            r3 = 0
            int r5 = r4.length()     // Catch:{ Throwable -> 0x006e, all -> 0x0067 }
            r4.delete(r3, r5)     // Catch:{ Throwable -> 0x006e, all -> 0x0067 }
            if (r2 == 0) goto L_0x0009
            r2.close()
            goto L_0x0009
        L_0x005e:
            r0 = move-exception
            r0 = r2
        L_0x0060:
            if (r0 == 0) goto L_0x0071
            r0.close()
            r0 = r1
            goto L_0x0009
        L_0x0067:
            r0 = move-exception
            if (r2 == 0) goto L_0x006d
            r2.close()
        L_0x006d:
            throw r0
        L_0x006e:
            r0 = move-exception
            r0 = r2
            goto L_0x0060
        L_0x0071:
            r0 = r1
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fy.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        ArrayList e2 = e(str);
        String[] split = str2.toString().split("#");
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < split.length; i4++) {
            if (split[i4].contains(",nb") || split[i4].contains(",access")) {
                i2++;
                if (e2.contains(split[i4])) {
                    i3++;
                }
            }
        }
        if (((double) (i3 * 2)) >= ((double) (e2.size() + i2)) * 0.618d) {
            return true;
        }
        return false;
    }

    public static ArrayList<String> e(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("#");
            for (int i2 = 0; i2 < split.length; i2++) {
                if (split[i2].contains(",nb") || split[i2].contains(",access")) {
                    arrayList.add(split[i2]);
                }
            }
        }
        return arrayList;
    }

    @SuppressLint({"NewApi"})
    public static boolean g(Context context) {
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
            return String.valueOf(ft.a(b, "isScanAlwaysAvailable", new Object[0])).equals("true");
        } catch (Throwable th2) {
            return z;
        }
    }

    public static String h(Context context) {
        NetworkInfo c2 = c(context);
        if (c2 == null || !c2.isConnectedOrConnecting()) {
            return "DISCONNECTED";
        }
        String str = "UNKNOWN";
        int type = c2.getType();
        if (type == 1) {
            return "WIFI";
        }
        if (type != 0) {
            return str;
        }
        String subtypeName = c2.getSubtypeName();
        switch (c2.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return "3G";
            case 13:
                return "4G";
            default:
                if (subtypeName.equalsIgnoreCase("GSM")) {
                    return "2G";
                }
                if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) {
                    return "3G";
                }
                return subtypeName;
        }
    }

    public static String i(Context context) {
        String l = bu.l(context);
        if (TextUtils.isEmpty(l) || l.equals("00:00:00:00:00:00")) {
            l = fx.a(context);
        }
        if (TextUtils.isEmpty(l)) {
            l = "00:00:00:00:00:00";
        }
        if (!i) {
            if (context != null && !TextUtils.isEmpty(l)) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("pref", 0);
                String str = null;
                try {
                    str = bv.b(l.getBytes("UTF-8"));
                } catch (Throwable th) {
                    fq.a(th, "SPUtil", "setSmac");
                }
                if (!TextUtils.isEmpty(str)) {
                    sharedPreferences.edit().putString("smac", str).commit();
                }
            }
            i = true;
        }
        return l;
    }
}
