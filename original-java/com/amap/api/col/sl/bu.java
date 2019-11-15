package com.amap.api.col.sl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DeviceInfo */
public final class bu {
    static String a = "";
    static String b = "";
    static String c = "";
    static boolean d = false;
    static int e = -1;
    static String f = "";
    static String g = "";
    private static String h = null;
    private static boolean i = false;
    private static String j = "";
    private static String k = "";
    private static String l = "";
    private static String m = "";
    private static String n = "";
    private static boolean o = false;
    private static String p = "";

    public static void a(String str) {
        h = str;
    }

    public static String a() {
        return h;
    }

    public static String a(Context context) {
        try {
            if (!TextUtils.isEmpty(c)) {
                return c;
            }
            bz a2 = ch.a();
            if (cy.a(context, a2)) {
                Class a3 = cy.a(context, a2, ca.c("WY29tLmFtYXAuYXBpLmFpdW5ldC5OZXRSZXVlc3RQYXJhbQ"));
                if (a3 != null) {
                    c = (String) a3.getMethod("getAdiuExtras", new Class[0]).invoke(a3, new Object[0]);
                }
                return c;
            }
            return "";
        } catch (Throwable th) {
            cm.c(th, "dI", "aiuEx");
        }
    }

    public static String b(final Context context) {
        try {
            if (!TextUtils.isEmpty(b)) {
                return b;
            }
            bz a2 = ch.a();
            if (a2 == null) {
                return null;
            }
            if (cy.a(context, a2)) {
                final Class a3 = cy.a(context, a2, ca.c("WY29tLmFtYXAuYXBpLmFpdW5ldC5OZXRSZXVlc3RQYXJhbQ"));
                if (a3 == null) {
                    return b;
                }
                String str = (String) a3.getMethod("getADIU", new Class[]{Context.class}).invoke(a3, new Object[]{context});
                if (!TextUtils.isEmpty(str)) {
                    b = str;
                    return str;
                } else if (!i) {
                    i = true;
                    cm.d().submit(new Runnable() {
                        public final void run() {
                            try {
                                Map map = (Map) a3.getMethod("getGetParams", new Class[0]).invoke(a3, new Object[0]);
                                if (map != null) {
                                    String str = (String) a3.getMethod("getPostParam", new Class[]{String.class, String.class, String.class, String.class}).invoke(a3, new Object[]{bu.h(context), bu.t(context), bu.l(context), bu.u(context)});
                                    if (!TextUtils.isEmpty(str)) {
                                        dn.a();
                                        byte[] a2 = dn.a(new dm(str.getBytes(), map));
                                        a3.getMethod("parseResult", new Class[]{Context.class, String.class}).invoke(a3, new Object[]{context, new String(a2)});
                                    }
                                }
                            } catch (Throwable th) {
                                cm.c(th, "dI", "aiun");
                            }
                        }
                    });
                }
            }
            return "";
        } catch (Throwable th) {
            cm.c(th, "dI", "aiu");
        }
    }

    public static String c(Context context) {
        try {
            return y(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return "";
        }
    }

    public static String d(Context context) {
        String str = "";
        String str2 = "";
        try {
            String u = u(context);
            if (u == null || u.length() < 5) {
                return str2;
            }
            return u.substring(3, 5);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return str;
        }
    }

    public static int e(Context context) {
        try {
            return B(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return -1;
        }
    }

    public static int f(Context context) {
        try {
            return z(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return -1;
        }
    }

    public static String g(Context context) {
        try {
            return x(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return "";
        }
    }

    public static void b() {
        try {
            if (VERSION.SDK_INT > 14) {
                TrafficStats.class.getDeclaredMethod("setThreadStatsTag", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(40964)});
            }
        } catch (Throwable th) {
            cm.c(th, "dI", "sag");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x008c A[SYNTHETIC, Splitter:B:32:0x008c] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0093 A[SYNTHETIC, Splitter:B:37:0x0093] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String w(android.content.Context r9) {
        /*
            r1 = 1
            r3 = 0
            r0 = 0
            java.lang.String r2 = "android.permission.READ_EXTERNAL_STORAGE"
            boolean r2 = com.amap.api.col.sl.ca.a(r9, r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            if (r2 == 0) goto L_0x00a0
            java.lang.String r2 = "mounted"
            java.lang.String r4 = android.os.Environment.getExternalStorageState()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            boolean r2 = r2.equals(r4)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            if (r2 == 0) goto L_0x00a0
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            r4.<init>()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.String r4 = "/.UTSystemConfig/Global/Alvin2.xml"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.String r2 = r2.toString()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.io.File r5 = new java.io.File     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            r5.<init>(r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            org.xmlpull.v1.XmlPullParser r6 = android.util.Xml.newPullParser()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            int r4 = r6.getEventType()     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            r2.<init>(r5)     // Catch:{ Throwable -> 0x0090, all -> 0x0087 }
            java.lang.String r0 = "utf-8"
            r6.setInput(r2, r0)     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            r0 = r3
        L_0x004a:
            if (r1 == r4) goto L_0x009f
            switch(r4) {
                case 0: goto L_0x004f;
                case 1: goto L_0x004f;
                case 2: goto L_0x0054;
                case 3: goto L_0x0085;
                case 4: goto L_0x0079;
                default: goto L_0x004f;
            }     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
        L_0x004f:
            int r4 = r6.next()     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            goto L_0x004a
        L_0x0054:
            int r4 = r6.getAttributeCount()     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            if (r4 <= 0) goto L_0x004f
            int r5 = r6.getAttributeCount()     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            r4 = r3
        L_0x005f:
            if (r4 >= r5) goto L_0x004f
            java.lang.String r7 = r6.getAttributeValue(r4)     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            java.lang.String r8 = "UTDID2"
            boolean r8 = r8.equals(r7)     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            if (r8 != 0) goto L_0x0075
            java.lang.String r8 = "UTDID"
            boolean r7 = r8.equals(r7)     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            if (r7 == 0) goto L_0x0076
        L_0x0075:
            r0 = r1
        L_0x0076:
            int r4 = r4 + 1
            goto L_0x005f
        L_0x0079:
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r6.getText()     // Catch:{ Throwable -> 0x00a8, all -> 0x00a6 }
            if (r2 == 0) goto L_0x0084
            r2.close()     // Catch:{ Throwable -> 0x009d }
        L_0x0084:
            return r0
        L_0x0085:
            r0 = r3
            goto L_0x004f
        L_0x0087:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x008a:
            if (r2 == 0) goto L_0x008f
            r2.close()     // Catch:{ Throwable -> 0x009b }
        L_0x008f:
            throw r0
        L_0x0090:
            r1 = move-exception
        L_0x0091:
            if (r0 == 0) goto L_0x0096
            r0.close()     // Catch:{ Throwable -> 0x0099 }
        L_0x0096:
            java.lang.String r0 = ""
            goto L_0x0084
        L_0x0099:
            r0 = move-exception
            goto L_0x0096
        L_0x009b:
            r1 = move-exception
            goto L_0x008f
        L_0x009d:
            r1 = move-exception
            goto L_0x0084
        L_0x009f:
            r0 = r2
        L_0x00a0:
            if (r0 == 0) goto L_0x0096
            r0.close()     // Catch:{ Throwable -> 0x0099 }
            goto L_0x0096
        L_0x00a6:
            r0 = move-exception
            goto L_0x008a
        L_0x00a8:
            r0 = move-exception
            r0 = r2
            goto L_0x0091
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bu.w(android.content.Context):java.lang.String");
    }

    public static String h(Context context) {
        try {
            if (a != null && !"".equals(a)) {
                return a;
            }
            if (a(context, "android.permission.WRITE_SETTINGS")) {
                a = System.getString(context.getContentResolver(), "mqBRboGZkQPcAkyk");
            }
            if (a != null && !"".equals(a)) {
                return a;
            }
            try {
                a = w(context);
            } catch (Throwable th) {
            }
            return a == null ? "" : a;
        } catch (Throwable th2) {
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(k)) {
            return k;
        }
        try {
            if (VERSION.SDK_INT >= 26) {
                return (String) ca.a(Build.class, "MZ2V0U2VyaWFs", (Class<?>[]) new Class[0]).invoke(Build.class, new Object[0]);
            }
            if (VERSION.SDK_INT >= 9) {
                k = Build.SERIAL;
            }
            return k == null ? "" : k;
        } catch (Throwable th) {
        }
    }

    public static String i(Context context) {
        if (!TextUtils.isEmpty(j)) {
            return j;
        }
        try {
            String string = Secure.getString(context.getContentResolver(), ca.c(new String(ch.a(13))));
            j = string;
            return string == null ? "" : j;
        } catch (Throwable th) {
            return j;
        }
    }

    private static boolean a(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    static String j(Context context) {
        String str;
        String str2 = "";
        if (context == null) {
            return str2;
        }
        try {
            if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                return str2;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager == null) {
                return str2;
            }
            if (wifiManager.isWifiEnabled()) {
                str = wifiManager.getConnectionInfo().getBSSID();
                return str;
            }
            str = str2;
            return str;
        } catch (Throwable th) {
            cj.a(th, "dI", "gcW");
        }
    }

    static String k(Context context) {
        StringBuilder sb = new StringBuilder();
        if (context != null) {
            try {
                if (a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                    WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
                    if (wifiManager == null) {
                        return "";
                    }
                    if (wifiManager.isWifiEnabled()) {
                        List scanResults = wifiManager.getScanResults();
                        if (scanResults == null || scanResults.size() == 0) {
                            return sb.toString();
                        }
                        List a2 = a(scanResults);
                        boolean z = true;
                        int i2 = 0;
                        while (i2 < a2.size() && i2 < 7) {
                            ScanResult scanResult = (ScanResult) a2.get(i2);
                            if (z) {
                                z = false;
                            } else {
                                sb.append(";");
                            }
                            sb.append(scanResult.BSSID);
                            i2++;
                        }
                    }
                    return sb.toString();
                }
            } catch (Throwable th) {
                cm.c(th, "dI", "gWs");
            }
        }
        return sb.toString();
    }

    public static String l(Context context) {
        try {
            if (l != null && !"".equals(l)) {
                return l;
            }
            if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                return l;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager == null) {
                return "";
            }
            l = wifiManager.getConnectionInfo().getMacAddress();
            if (ca.c("YMDI6MDA6MDA6MDA6MDA6MDA").equals(l) || ca.c("YMDA6MDA6MDA6MDA6MDA6MDA").equals(l)) {
                l = d();
            }
            return l;
        } catch (Throwable th) {
            cm.c(th, "dI", "gDc");
        }
    }

    private static String d() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] bArr = null;
                    if (VERSION.SDK_INT >= 9) {
                        bArr = networkInterface.getHardwareAddress();
                    }
                    if (bArr == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : bArr) {
                        String upperCase = Integer.toHexString(b2 & 255).toUpperCase();
                        if (upperCase.length() == 1) {
                            sb.append("0");
                        }
                        sb.append(upperCase).append(":");
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception e2) {
            cm.c(e2, "dI", "gMr");
        }
        return "";
    }

    static String[] m(Context context) {
        try {
            if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU=")) || !a(context, ca.c("EYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19DT0FSU0VfTE9DQVRJT04="))) {
                return new String[]{"", ""};
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
            if (telephonyManager == null) {
                return new String[]{"", ""};
            }
            CellLocation cellLocation = telephonyManager.getCellLocation();
            if (cellLocation instanceof GsmCellLocation) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                return new String[]{gsmCellLocation.getLac() + "||" + gsmCellLocation.getCid(), "gsm"};
            }
            if (cellLocation instanceof CdmaCellLocation) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                int systemId = cdmaCellLocation.getSystemId();
                int networkId = cdmaCellLocation.getNetworkId();
                return new String[]{systemId + "||" + networkId + "||" + cdmaCellLocation.getBaseStationId(), "cdma"};
            }
            return new String[]{"", ""};
        } catch (Throwable th) {
            cj.a(th, "dI", "cf");
        }
    }

    static String n(Context context) {
        String str = "";
        try {
            if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return str;
            }
            TelephonyManager C = C(context);
            if (C == null) {
                return "";
            }
            String networkOperator = C.getNetworkOperator();
            if (TextUtils.isEmpty(networkOperator) || networkOperator.length() < 3) {
                return str;
            }
            return networkOperator.substring(3);
        } catch (Throwable th) {
            cm.c(th, "dI", "gNC");
            return str;
        }
    }

    public static int o(Context context) {
        try {
            return B(context);
        } catch (Throwable th) {
            cm.c(th, "dI", "gNT");
            return -1;
        }
    }

    public static int p(Context context) {
        try {
            return z(context);
        } catch (Throwable th) {
            cj.a(th, "dI", "gAT");
            return -1;
        }
    }

    public static NetworkInfo q(Context context) {
        if (!a(context, ca.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
            return null;
        }
        ConnectivityManager A = A(context);
        if (A != null) {
            return A.getActiveNetworkInfo();
        }
        return null;
    }

    static String r(Context context) {
        try {
            NetworkInfo q = q(context);
            if (q == null) {
                return null;
            }
            return q.getExtraInfo();
        } catch (Throwable th) {
            cm.c(th, "dI", "gne");
            return null;
        }
    }

    static String s(Context context) {
        try {
            if (m != null && !"".equals(m)) {
                return m;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            m = i3 > i2 ? i2 + "*" + i3 : i3 + "*" + i2;
            return m;
        } catch (Throwable th) {
            cm.c(th, "dI", "gR");
        }
    }

    public static String t(Context context) {
        try {
            if (n != null && !"".equals(n)) {
                return n;
            }
            if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return n;
            }
            TelephonyManager C = C(context);
            if (C == null) {
                return "";
            }
            Method a2 = ca.a(C.getClass(), "QZ2V0RGV2aWNlSWQ", (Class<?>[]) new Class[0]);
            if (a2 != null) {
                n = (String) a2.invoke(C, new Object[0]);
            }
            if (n == null) {
                n = "";
            }
            return n;
        } catch (Throwable th) {
            cm.c(th, "dI", "gd");
        }
    }

    public static String u(Context context) {
        String str = "";
        try {
            return x(context);
        } catch (Throwable th) {
            cj.a(th, "dI", "gSd");
            return str;
        }
    }

    static String v(Context context) {
        try {
            return y(context);
        } catch (Throwable th) {
            cm.c(th, "dI", "gNNa");
            return "";
        }
    }

    private static String x(Context context) throws InvocationTargetException, IllegalAccessException {
        if (p != null && !"".equals(p)) {
            return p;
        }
        if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return p;
        }
        TelephonyManager C = C(context);
        if (C == null) {
            return "";
        }
        Method a2 = ca.a(C.getClass(), "UZ2V0U3Vic2NyaWJlcklk", (Class<?>[]) new Class[0]);
        if (a2 != null) {
            p = (String) a2.invoke(C, new Object[0]);
        }
        if (p == null) {
            p = "";
        }
        return p;
    }

    private static String y(Context context) {
        if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return null;
        }
        TelephonyManager C = C(context);
        if (C == null) {
            return "";
        }
        String simOperatorName = C.getSimOperatorName();
        if (TextUtils.isEmpty(simOperatorName)) {
            return C.getNetworkOperatorName();
        }
        return simOperatorName;
    }

    private static int z(Context context) {
        if (context == null || !a(context, ca.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
            return -1;
        }
        ConnectivityManager A = A(context);
        if (A == null) {
            return -1;
        }
        NetworkInfo activeNetworkInfo = A.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getType();
        }
        return -1;
    }

    private static ConnectivityManager A(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    private static int B(Context context) {
        if (!a(context, ca.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return -1;
        }
        TelephonyManager C = C(context);
        if (C != null) {
            return C.getNetworkType();
        }
        return -1;
    }

    private static TelephonyManager C(Context context) {
        return (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
    }

    private static List<ScanResult> a(List<ScanResult> list) {
        int size = list.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= size - 1) {
                return list;
            }
            int i4 = 1;
            while (true) {
                int i5 = i4;
                if (i5 >= size - i3) {
                    break;
                }
                if (((ScanResult) list.get(i5 - 1)).level > ((ScanResult) list.get(i5)).level) {
                    ScanResult scanResult = (ScanResult) list.get(i5 - 1);
                    list.set(i5 - 1, list.get(i5));
                    list.set(i5, scanResult);
                }
                i4 = i5 + 1;
            }
            i2 = i3 + 1;
        }
    }
}
