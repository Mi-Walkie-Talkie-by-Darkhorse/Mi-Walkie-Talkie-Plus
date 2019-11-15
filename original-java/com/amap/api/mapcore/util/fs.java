package com.amap.api.mapcore.util;

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
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DeviceInfo */
public class fs {
    static String a = "";
    static boolean b = false;
    private static String c = null;
    private static boolean d = false;
    private static String e = "";
    private static String f = "";
    private static String g = "";
    private static String h = "";
    private static String i = "";
    private static String j = "";

    public static String a() {
        return c;
    }

    public static String a(Context context) {
        try {
            Class a2 = ha.a(context, ga.a(), fy.c("WY29tLmFtYXAuYXBpLmFpdW5ldC5OZXRSZXVlc3RQYXJhbQ"));
            return (String) a2.getMethod("getAdiuExtras", new Class[]{Context.class}).invoke(a2, new Object[]{context});
        } catch (Throwable th) {
            gf.b(th, "dv", "aiuEx");
            return null;
        }
    }

    public static String b(final Context context) {
        try {
            fx a2 = ga.a();
            if (a2 == null) {
                return null;
            }
            if (ha.a(context, a2)) {
                final Class a3 = ha.a(context, a2, fy.c("WY29tLmFtYXAuYXBpLmFpdW5ldC5OZXRSZXVlc3RQYXJhbQ"));
                String str = (String) a3.getMethod("getADIU", new Class[]{Context.class}).invoke(a3, new Object[]{context});
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
                if (!d) {
                    d = true;
                    gf.c().submit(new Runnable() {
                        public void run() {
                            try {
                                Map map = (Map) a3.getMethod("getGetParams", new Class[0]).invoke(a3, new Object[0]);
                                if (map != null) {
                                    String str = (String) a3.getMethod("getPostParam", new Class[]{String.class, String.class, String.class, String.class}).invoke(a3, new Object[]{fs.h(context), fs.t(context), fs.l(context), fs.u(context)});
                                    if (!TextUtils.isEmpty(str)) {
                                        byte[] a2 = hp.a().a(new ho(str.getBytes(), map));
                                        a3.getMethod("parseResult", new Class[]{Context.class, String.class}).invoke(a3, new Object[]{context, new String(a2)});
                                    }
                                }
                            } catch (Throwable th) {
                                gf.b(th, "dv", "aiun");
                            }
                        }
                    });
                }
            }
            return null;
        } catch (Throwable th) {
            gf.b(th, "dv", "aiu");
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
        try {
            return B(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return str;
        }
    }

    public static int e(Context context) {
        char c2 = 65535;
        try {
            return C(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return c2;
        }
    }

    public static int f(Context context) {
        char c2 = 65535;
        try {
            return z(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return c2;
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
            gc.a(th, "dI", "sag");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x0093 A[SYNTHETIC, Splitter:B:36:0x0093] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x009e A[SYNTHETIC, Splitter:B:42:0x009e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String w(android.content.Context r9) {
        /*
            r1 = 1
            r3 = 0
            r0 = 0
            java.lang.String r2 = "android.permission.READ_EXTERNAL_STORAGE"
            boolean r2 = com.amap.api.mapcore.util.fy.a(r9, r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            if (r2 == 0) goto L_0x0088
            java.lang.String r2 = "mounted"
            java.lang.String r4 = android.os.Environment.getExternalStorageState()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            boolean r2 = r2.equals(r4)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            if (r2 == 0) goto L_0x0088
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            r4.<init>()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.String r4 = "/.UTSystemConfig/Global/Alvin2.xml"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.String r2 = r2.toString()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.io.File r5 = new java.io.File     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            r5.<init>(r2)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            org.xmlpull.v1.XmlPullParser r6 = android.util.Xml.newPullParser()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            int r4 = r6.getEventType()     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            r2.<init>(r5)     // Catch:{ Throwable -> 0x0090, all -> 0x0099 }
            java.lang.String r0 = "utf-8"
            r6.setInput(r2, r0)     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            r0 = r3
        L_0x004a:
            if (r1 == r4) goto L_0x0087
            switch(r4) {
                case 0: goto L_0x004f;
                case 1: goto L_0x004f;
                case 2: goto L_0x0054;
                case 3: goto L_0x0085;
                case 4: goto L_0x0079;
                default: goto L_0x004f;
            }     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
        L_0x004f:
            int r4 = r6.next()     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            goto L_0x004a
        L_0x0054:
            int r4 = r6.getAttributeCount()     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            if (r4 <= 0) goto L_0x004f
            int r5 = r6.getAttributeCount()     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            r4 = r3
        L_0x005f:
            if (r4 >= r5) goto L_0x004f
            java.lang.String r7 = r6.getAttributeValue(r4)     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            java.lang.String r8 = "UTDID2"
            boolean r8 = r8.equals(r7)     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            if (r8 != 0) goto L_0x0075
            java.lang.String r8 = "UTDID"
            boolean r7 = r8.equals(r7)     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            if (r7 == 0) goto L_0x0076
        L_0x0075:
            r0 = r1
        L_0x0076:
            int r4 = r4 + 1
            goto L_0x005f
        L_0x0079:
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = r6.getText()     // Catch:{ Throwable -> 0x00aa, all -> 0x00a8 }
            if (r2 == 0) goto L_0x0084
            r2.close()     // Catch:{ Throwable -> 0x00a2 }
        L_0x0084:
            return r0
        L_0x0085:
            r0 = r3
            goto L_0x004f
        L_0x0087:
            r0 = r2
        L_0x0088:
            if (r0 == 0) goto L_0x008d
            r0.close()     // Catch:{ Throwable -> 0x00a4 }
        L_0x008d:
            java.lang.String r0 = ""
            goto L_0x0084
        L_0x0090:
            r1 = move-exception
        L_0x0091:
            if (r0 == 0) goto L_0x008d
            r0.close()     // Catch:{ Throwable -> 0x0097 }
            goto L_0x008d
        L_0x0097:
            r0 = move-exception
            goto L_0x008d
        L_0x0099:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x009c:
            if (r2 == 0) goto L_0x00a1
            r2.close()     // Catch:{ Throwable -> 0x00a6 }
        L_0x00a1:
            throw r0
        L_0x00a2:
            r1 = move-exception
            goto L_0x0084
        L_0x00a4:
            r0 = move-exception
            goto L_0x008d
        L_0x00a6:
            r1 = move-exception
            goto L_0x00a1
        L_0x00a8:
            r0 = move-exception
            goto L_0x009c
        L_0x00aa:
            r0 = move-exception
            r0 = r2
            goto L_0x0091
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fs.w(android.content.Context):java.lang.String");
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
        if (!TextUtils.isEmpty(f)) {
            return f;
        }
        try {
            if (VERSION.SDK_INT >= 24) {
                return (String) Build.class.getMethod(fy.c("MZ2V0U2VyaWFs"), new Class[0]).invoke(Build.class, new Object[0]);
            }
            if (VERSION.SDK_INT >= 9) {
                f = Build.SERIAL;
            }
            return f == null ? "" : f;
        } catch (Throwable th) {
        }
    }

    public static String i(Context context) {
        if (!TextUtils.isEmpty(e)) {
            return e;
        }
        try {
            e = Secure.getString(context.getContentResolver(), fy.c(new String(ga.a(13))));
            return e == null ? "" : e;
        } catch (Throwable th) {
            return e;
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
            if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
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
            gc.a(th, "dI", "gcW");
        }
    }

    static String k(Context context) {
        StringBuilder sb = new StringBuilder();
        if (context != null) {
            try {
                if (a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
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
                gc.a(th, "dI", "gWs");
            }
        }
        return sb.toString();
    }

    public static String l(Context context) {
        try {
            if (g != null && !"".equals(g)) {
                return g;
            }
            if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                return g;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager == null) {
                return "";
            }
            g = wifiManager.getConnectionInfo().getMacAddress();
            if (fy.c("YMDI6MDA6MDA6MDA6MDA6MDA").equals(g) || fy.c("YMDA6MDA6MDA6MDA6MDA6MDA").equals(g)) {
                g = d();
            }
            return g;
        } catch (Throwable th) {
            gc.a(th, "dI", "gDc");
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
            gc.a((Throwable) e2, "dI", "gMr");
        }
        return "";
    }

    static String[] m(Context context) {
        try {
            if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU=")) || !a(context, fy.c("EYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19DT0FSU0VfTE9DQVRJT04="))) {
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
                int baseStationId = cdmaCellLocation.getBaseStationId();
                if (systemId < 0 || networkId < 0 || baseStationId < 0) {
                }
                return new String[]{systemId + "||" + networkId + "||" + baseStationId, "cdma"};
            }
            return new String[]{"", ""};
        } catch (Throwable th) {
            gc.a(th, "dI", "cf");
        }
    }

    static String n(Context context) {
        String str = "";
        try {
            if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return str;
            }
            TelephonyManager D = D(context);
            if (D == null) {
                return "";
            }
            String networkOperator = D.getNetworkOperator();
            if (TextUtils.isEmpty(networkOperator) || networkOperator.length() < 3) {
                return str;
            }
            return networkOperator.substring(3);
        } catch (Throwable th) {
            gc.a(th, "dI", "gNC");
            return str;
        }
    }

    public static int o(Context context) {
        char c2 = 65535;
        try {
            return C(context);
        } catch (Throwable th) {
            gc.a(th, "dI", "gNT");
            return c2;
        }
    }

    public static int p(Context context) {
        char c2 = 65535;
        try {
            return z(context);
        } catch (Throwable th) {
            gc.a(th, "dI", "gAT");
            return c2;
        }
    }

    public static NetworkInfo q(Context context) {
        if (!a(context, fy.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
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
            gc.a(th, "dI", "gne");
            return null;
        }
    }

    static String s(Context context) {
        try {
            if (h != null && !"".equals(h)) {
                return h;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            h = i3 > i2 ? i2 + "*" + i3 : i3 + "*" + i2;
            return h;
        } catch (Throwable th) {
            gc.a(th, "dI", "gR");
        }
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v2, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r1v10, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v12, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v8, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r2v9, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r1v17, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r1v18 */
    /* JADX WARNING: type inference failed for: r2v12, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v19, types: [android.os.Parcel] */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v15, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: type inference failed for: r1v22 */
    /* JADX WARNING: type inference failed for: r2v19 */
    /* JADX WARNING: type inference failed for: r2v20 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], ?[OBJECT, ARRAY], java.lang.String]
  uses: [?[OBJECT, ARRAY], ?[int, boolean, OBJECT, ARRAY, byte, short, char], android.os.Parcel, java.lang.String]
  mth insns count: 138
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d0 A[Catch:{ Throwable -> 0x00e6, Throwable -> 0x00eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00f7 A[SYNTHETIC, Splitter:B:44:0x00f7] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0184 A[Catch:{ Throwable -> 0x00e6, Throwable -> 0x00eb }] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String t(android.content.Context r7) {
        /*
            r2 = 0
            java.lang.String r0 = i     // Catch:{ Throwable -> 0x00eb }
            if (r0 == 0) goto L_0x0012
            java.lang.String r0 = ""
            java.lang.String r1 = i     // Catch:{ Throwable -> 0x00eb }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x00eb }
            if (r0 != 0) goto L_0x0012
            java.lang.String r0 = i     // Catch:{ Throwable -> 0x00eb }
        L_0x0011:
            return r0
        L_0x0012:
            java.lang.String r0 = "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="
            java.lang.String r0 = com.amap.api.mapcore.util.fy.c(r0)     // Catch:{ Throwable -> 0x00eb }
            boolean r0 = a(r7, r0)     // Catch:{ Throwable -> 0x00eb }
            if (r0 != 0) goto L_0x0021
            java.lang.String r0 = i     // Catch:{ Throwable -> 0x00eb }
            goto L_0x0011
        L_0x0021:
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r1 = 0
            byte[] r1 = com.amap.api.mapcore.util.ga.a(r1)     // Catch:{ Throwable -> 0x00e6 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r0 = com.amap.api.mapcore.util.fy.c(r0)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r3 = 1
            byte[] r3 = com.amap.api.mapcore.util.ga.a(r3)     // Catch:{ Throwable -> 0x00e6 }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = com.amap.api.mapcore.util.fy.c(r1)     // Catch:{ Throwable -> 0x00e6 }
            r3 = 1
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch:{ Throwable -> 0x00e6 }
            r4 = 0
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r3[r4] = r5     // Catch:{ Throwable -> 0x00e6 }
            java.lang.reflect.Method r1 = r0.getMethod(r1, r3)     // Catch:{ Throwable -> 0x00e6 }
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch:{ Throwable -> 0x00e6 }
            r4 = 21
            if (r3 <= r4) goto L_0x00fe
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x00e6 }
            r4 = 0
            java.lang.String r5 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r6 = 2
            byte[] r6 = com.amap.api.mapcore.util.ga.a(r6)     // Catch:{ Throwable -> 0x00e6 }
            r5.<init>(r6)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r5 = com.amap.api.mapcore.util.fy.c(r5)     // Catch:{ Throwable -> 0x00e6 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x00e6 }
            java.lang.Object r0 = r1.invoke(r0, r3)     // Catch:{ Throwable -> 0x00e6 }
            android.os.IBinder r0 = (android.os.IBinder) r0     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r3 = 4
            byte[] r3 = com.amap.api.mapcore.util.ga.a(r3)     // Catch:{ Throwable -> 0x00e6 }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = com.amap.api.mapcore.util.fy.c(r1)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r4 = 6
            byte[] r4 = com.amap.api.mapcore.util.ga.a(r4)     // Catch:{ Throwable -> 0x00e6 }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r3 = com.amap.api.mapcore.util.fy.c(r3)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.reflect.Field r3 = r1.getDeclaredField(r3)     // Catch:{ Throwable -> 0x00e6 }
            r4 = 1
            r3.setAccessible(r4)     // Catch:{ Throwable -> 0x00e6 }
            int r1 = r3.getInt(r1)     // Catch:{ Throwable -> 0x00e6 }
            android.os.Parcel r3 = android.os.Parcel.obtain()     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            r5 = 7
            byte[] r5 = com.amap.api.mapcore.util.ga.a(r5)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            r4.<init>(r5)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            java.lang.String r4 = com.amap.api.mapcore.util.fy.c(r4)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            r3.writeInterfaceToken(r4)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            java.lang.String r4 = com.amap.api.mapcore.util.fo.c(r7)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            r3.writeString(r4)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            android.os.Parcel r1 = com.amap.api.mapcore.util.fy.a(r0, r1, r3)     // Catch:{ Throwable -> 0x00d8, all -> 0x00f4 }
            if (r1 == 0) goto L_0x00c2
            r1.readException()     // Catch:{ Throwable -> 0x0194 }
            java.lang.String r2 = r1.readString()     // Catch:{ Throwable -> 0x0194 }
        L_0x00c2:
            if (r1 == 0) goto L_0x00c7
            r1.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x00c7:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x00ca:
            i = r2     // Catch:{ Throwable -> 0x00e6 }
        L_0x00cc:
            java.lang.String r0 = i     // Catch:{ Throwable -> 0x00eb }
            if (r0 != 0) goto L_0x00d4
            java.lang.String r0 = ""
            i = r0     // Catch:{ Throwable -> 0x00eb }
        L_0x00d4:
            java.lang.String r0 = i
            goto L_0x0011
        L_0x00d8:
            r0 = move-exception
            r1 = r2
        L_0x00da:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0190 }
            if (r1 == 0) goto L_0x00e2
            r1.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x00e2:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
            goto L_0x00ca
        L_0x00e6:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x00eb }
            goto L_0x00cc
        L_0x00eb:
            r0 = move-exception
            java.lang.String r1 = "dI"
            java.lang.String r2 = "gd"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x00d4
        L_0x00f4:
            r0 = move-exception
        L_0x00f5:
            if (r2 == 0) goto L_0x00fa
            r2.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x00fa:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
            throw r0     // Catch:{ Throwable -> 0x00e6 }
        L_0x00fe:
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x00e6 }
            r4 = 0
            java.lang.String r5 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r6 = 3
            byte[] r6 = com.amap.api.mapcore.util.ga.a(r6)     // Catch:{ Throwable -> 0x00e6 }
            r5.<init>(r6)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r5 = com.amap.api.mapcore.util.fy.c(r5)     // Catch:{ Throwable -> 0x00e6 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x00e6 }
            java.lang.Object r0 = r1.invoke(r0, r3)     // Catch:{ Throwable -> 0x00e6 }
            android.os.IBinder r0 = (android.os.IBinder) r0     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r3 = 5
            byte[] r3 = com.amap.api.mapcore.util.ga.a(r3)     // Catch:{ Throwable -> 0x00e6 }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r1 = com.amap.api.mapcore.util.fy.c(r1)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Throwable -> 0x00e6 }
            r4 = 6
            byte[] r4 = com.amap.api.mapcore.util.ga.a(r4)     // Catch:{ Throwable -> 0x00e6 }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r3 = com.amap.api.mapcore.util.fy.c(r3)     // Catch:{ Throwable -> 0x00e6 }
            java.lang.reflect.Field r3 = r1.getDeclaredField(r3)     // Catch:{ Throwable -> 0x00e6 }
            r4 = 1
            r3.setAccessible(r4)     // Catch:{ Throwable -> 0x00e6 }
            int r1 = r3.getInt(r1)     // Catch:{ Throwable -> 0x00e6 }
            android.os.Parcel r3 = android.os.Parcel.obtain()     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            r5 = 8
            byte[] r5 = com.amap.api.mapcore.util.ga.a(r5)     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            r4.<init>(r5)     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            java.lang.String r4 = com.amap.api.mapcore.util.fy.c(r4)     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            r3.writeInterfaceToken(r4)     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            android.os.Parcel r1 = com.amap.api.mapcore.util.fy.a(r0, r1, r3)     // Catch:{ Throwable -> 0x0173, all -> 0x0181 }
            if (r1 == 0) goto L_0x0167
            r1.readException()     // Catch:{ Throwable -> 0x018e }
            java.lang.String r2 = r1.readString()     // Catch:{ Throwable -> 0x018e }
        L_0x0167:
            if (r1 == 0) goto L_0x016c
            r1.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x016c:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x016f:
            i = r2     // Catch:{ Throwable -> 0x00e6 }
            goto L_0x00cc
        L_0x0173:
            r0 = move-exception
            r1 = r2
        L_0x0175:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x018b }
            if (r1 == 0) goto L_0x017d
            r1.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x017d:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
            goto L_0x016f
        L_0x0181:
            r0 = move-exception
        L_0x0182:
            if (r2 == 0) goto L_0x0187
            r2.recycle()     // Catch:{ Throwable -> 0x00e6 }
        L_0x0187:
            r3.recycle()     // Catch:{ Throwable -> 0x00e6 }
            throw r0     // Catch:{ Throwable -> 0x00e6 }
        L_0x018b:
            r0 = move-exception
            r2 = r1
            goto L_0x0182
        L_0x018e:
            r0 = move-exception
            goto L_0x0175
        L_0x0190:
            r0 = move-exception
            r2 = r1
            goto L_0x00f5
        L_0x0194:
            r0 = move-exception
            goto L_0x00da
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fs.t(android.content.Context):java.lang.String");
    }

    public static String u(Context context) {
        String str = "";
        try {
            return x(context);
        } catch (Throwable th) {
            gc.a(th, "dI", "gSd");
            return str;
        }
    }

    static String v(Context context) {
        try {
            return y(context);
        } catch (Throwable th) {
            gc.a(th, "dI", "gNNa");
            return "";
        }
    }

    private static String x(Context context) {
        if (j != null && !"".equals(j)) {
            return j;
        }
        if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return j;
        }
        TelephonyManager D = D(context);
        if (D == null) {
            return "";
        }
        j = D.getSubscriberId();
        if (j == null) {
            j = "";
        }
        return j;
    }

    private static String y(Context context) {
        if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return null;
        }
        TelephonyManager D = D(context);
        if (D == null) {
            return "";
        }
        String simOperatorName = D.getSimOperatorName();
        if (TextUtils.isEmpty(simOperatorName)) {
            return D.getNetworkOperatorName();
        }
        return simOperatorName;
    }

    private static int z(Context context) {
        if (context == null || !a(context, fy.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
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

    private static String B(Context context) {
        String str = "";
        String u = u(context);
        if (u == null || u.length() < 5) {
            return str;
        }
        return u.substring(3, 5);
    }

    private static int C(Context context) {
        if (!a(context, fy.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return -1;
        }
        TelephonyManager D = D(context);
        if (D != null) {
            return D.getNetworkType();
        }
        return -1;
    }

    private static TelephonyManager D(Context context) {
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
