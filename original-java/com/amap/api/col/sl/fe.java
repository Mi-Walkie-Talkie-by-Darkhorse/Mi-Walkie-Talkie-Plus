package com.amap.api.col.sl;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: WifiManagerWrapper */
public final class fe {
    static long d = 0;
    static long e = 0;
    static long f = 0;
    static long g = 0;
    static long h = 0;
    WifiManager a;
    Object b = new Object();
    ArrayList<ScanResult> c = new ArrayList<>();
    Context i;
    boolean j = false;
    StringBuilder k = null;
    boolean l = true;
    boolean m = true;
    String n = "isScanAlwaysAvailable";
    String o = null;
    TreeMap<Integer, ScanResult> p = null;
    public boolean q = true;
    ConnectivityManager r = null;
    volatile boolean s = false;
    private volatile WifiInfo t = null;

    public fe(Context context, WifiManager wifiManager) {
        this.a = wifiManager;
        this.i = context;
    }

    private List<ScanResult> m() {
        if (this.a != null) {
            try {
                List<ScanResult> scanResults = this.a.getScanResults();
                this.o = null;
                return scanResults;
            } catch (SecurityException e2) {
                this.o = e2.getMessage();
            } catch (Throwable th) {
                this.o = null;
                fq.a(th, "WifiManagerWrapper", "getScanResults");
            }
        }
        return null;
    }

    private WifiInfo n() {
        try {
            if (this.a != null) {
                return this.a.getConnectionInfo();
            }
        } catch (Throwable th) {
            fq.a(th, "WifiManagerWrapper", "getConnectionInfo");
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0019, code lost:
        if (a(r2.getConnectionInfo()) != false) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(android.net.ConnectivityManager r5) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            android.net.wifi.WifiManager r2 = r4.a
            if (r2 != 0) goto L_0x0007
        L_0x0006:
            return r1
        L_0x0007:
            android.net.NetworkInfo r3 = r5.getActiveNetworkInfo()     // Catch:{ Throwable -> 0x001d }
            int r3 = com.amap.api.col.sl.fy.a(r3)     // Catch:{ Throwable -> 0x001d }
            if (r3 != r0) goto L_0x0025
            android.net.wifi.WifiInfo r2 = r2.getConnectionInfo()     // Catch:{ Throwable -> 0x001d }
            boolean r2 = a(r2)     // Catch:{ Throwable -> 0x001d }
            if (r2 == 0) goto L_0x0025
        L_0x001b:
            r1 = r0
            goto L_0x0006
        L_0x001d:
            r0 = move-exception
            java.lang.String r2 = "WifiManagerWrapper"
            java.lang.String r3 = "wifiAccess"
            com.amap.api.col.sl.fq.a(r0, r2, r3)
        L_0x0025:
            r0 = r1
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fe.a(android.net.ConnectivityManager):boolean");
    }

    public final void a(boolean z) {
        Context context = this.i;
        if (this.a != null && context != null && z && fy.c() > 17) {
            ContentResolver contentResolver = context.getContentResolver();
            String str = "android.provider.Settings$Global";
            try {
                if (((Integer) ft.a(str, "getInt", new Object[]{contentResolver, "wifi_scan_always_enabled"}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 0) {
                    ft.a(str, "putInt", new Object[]{contentResolver, "wifi_scan_always_enabled", Integer.valueOf(1)}, (Class<?>[]) new Class[]{ContentResolver.class, String.class, Integer.TYPE});
                }
            } catch (Throwable th) {
                fq.a(th, "WifiManagerWrapper", "enableWifiAlwaysScan");
            }
        }
    }

    public static boolean a(WifiInfo wifiInfo) {
        if (wifiInfo != null && !TextUtils.isEmpty(wifiInfo.getSSID()) && fy.b(wifiInfo.getBSSID())) {
            return true;
        }
        return false;
    }

    public final String a() {
        return this.o;
    }

    private List<WifiConfiguration> o() {
        if (this.a != null) {
            return this.a.getConfiguredNetworks();
        }
        return null;
    }

    public final ArrayList<ScanResult> b() {
        if (this.c == null) {
            return null;
        }
        ArrayList<ScanResult> arrayList = new ArrayList<>();
        if (this.c.isEmpty()) {
            return arrayList;
        }
        arrayList.addAll(this.c);
        return arrayList;
    }

    public final void b(boolean z) {
        if (!z) {
            p();
        } else if (q()) {
            long b2 = fy.b();
            if (b2 - e >= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                this.c.clear();
                h = g;
            }
            p();
            if (b2 - e >= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                for (int i2 = 20; i2 > 0 && g == h; i2--) {
                    try {
                        Thread.sleep(150);
                    } catch (Throwable th) {
                    }
                }
            }
            synchronized (this.b) {
            }
        }
        if (this.s) {
            this.s = false;
            c();
        }
        if (h != g) {
            List list = null;
            try {
                list = m();
            } catch (Throwable th2) {
                fq.a(th2, "WifiManager", "updateScanResult");
            }
            h = g;
            if (list != null) {
                this.c.clear();
                this.c.addAll(list);
            } else {
                this.c.clear();
            }
        }
        if (fy.b() - g > IPC.LogoutAsyncTellServerTimeout) {
            this.c.clear();
        }
        e = fy.b();
        if (this.c.isEmpty()) {
            g = fy.b();
            List m2 = m();
            if (m2 != null) {
                this.c.addAll(m2);
            }
        }
        if (this.c != null && !this.c.isEmpty()) {
            if (fy.b() - g > OpenStreetMapTileProviderConstants.ONE_HOUR) {
                c();
            }
            if (this.p == null) {
                this.p = new TreeMap<>(Collections.reverseOrder());
            }
            this.p.clear();
            int size = this.c.size();
            for (int i3 = 0; i3 < size; i3++) {
                ScanResult scanResult = (ScanResult) this.c.get(i3);
                if (fy.b(scanResult != null ? scanResult.BSSID : "") && (size <= 20 || a(scanResult.level))) {
                    if (TextUtils.isEmpty(scanResult.SSID)) {
                        scanResult.SSID = "unkwn";
                    } else if (!"<unknown ssid>".equals(scanResult.SSID)) {
                        scanResult.SSID = String.valueOf(i3);
                    }
                    this.p.put(Integer.valueOf((scanResult.level * 25) + i3), scanResult);
                }
            }
            this.c.clear();
            for (ScanResult add : this.p.values()) {
                this.c.add(add);
            }
            this.p.clear();
        }
    }

    public final void a(boolean z, boolean z2) {
        this.l = z;
        this.m = z2;
    }

    public final void c() {
        this.t = null;
        this.c.clear();
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x004a A[Catch:{ Throwable -> 0x0053 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void p() {
        /*
            r4 = this;
            boolean r0 = r4.q()
            if (r0 == 0) goto L_0x0050
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0053 }
            long r2 = d     // Catch:{ Throwable -> 0x0053 }
            long r0 = r0 - r2
            r2 = 4900(0x1324, double:2.421E-320)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0051
            android.net.ConnectivityManager r0 = r4.r     // Catch:{ Throwable -> 0x0053 }
            if (r0 != 0) goto L_0x0023
            android.content.Context r0 = r4.i     // Catch:{ Throwable -> 0x0053 }
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)     // Catch:{ Throwable -> 0x0053 }
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch:{ Throwable -> 0x0053 }
            r4.r = r0     // Catch:{ Throwable -> 0x0053 }
        L_0x0023:
            android.net.ConnectivityManager r0 = r4.r     // Catch:{ Throwable -> 0x0053 }
            boolean r0 = r4.a(r0)     // Catch:{ Throwable -> 0x0053 }
            if (r0 == 0) goto L_0x0038
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0053 }
            long r2 = d     // Catch:{ Throwable -> 0x0053 }
            long r0 = r0 - r2
            r2 = 9900(0x26ac, double:4.8912E-320)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0051
        L_0x0038:
            android.net.wifi.WifiManager r0 = r4.a     // Catch:{ Throwable -> 0x0053 }
            if (r0 == 0) goto L_0x0051
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0053 }
            d = r0     // Catch:{ Throwable -> 0x0053 }
            android.net.wifi.WifiManager r0 = r4.a     // Catch:{ Throwable -> 0x0053 }
            boolean r0 = r0.startScan()     // Catch:{ Throwable -> 0x0053 }
        L_0x0048:
            if (r0 == 0) goto L_0x0050
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0053 }
            f = r0     // Catch:{ Throwable -> 0x0053 }
        L_0x0050:
            return
        L_0x0051:
            r0 = 0
            goto L_0x0048
        L_0x0053:
            r0 = move-exception
            java.lang.String r1 = "WifiManager"
            java.lang.String r2 = "wifiScan"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x0050
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fe.p():void");
    }

    public final void d() {
        if (this.a != null && fy.b() - g > 4900) {
            g = fy.b();
        }
    }

    public final void e() {
        int i2 = 4;
        if (this.a != null) {
            try {
                if (this.a != null) {
                    i2 = this.a.getWifiState();
                }
            } catch (Throwable th) {
                fq.a(th, "APS", "onReceive part");
            }
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            switch (i2) {
                case 0:
                case 1:
                case 4:
                    this.s = true;
                    return;
                default:
                    return;
            }
        }
    }

    private static boolean a(int i2) {
        int i3 = 20;
        try {
            i3 = WifiManager.calculateSignalLevel(i2, 20);
        } catch (ArithmeticException e2) {
            fq.a(e2, "APS", "wifiSigFine");
        }
        if (i3 > 0) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        return this.q;
    }

    private boolean q() {
        this.q = this.a == null ? false : fy.g(this.i);
        if (!this.q || !this.l) {
            return false;
        }
        if (f == 0) {
            return true;
        }
        if (fy.b() - f < 4900 || fy.b() - g < 1500) {
            return false;
        }
        if (fy.b() - g > 4900) {
            return true;
        }
        return true;
    }

    public final WifiInfo g() {
        this.t = n();
        return this.t;
    }

    public final boolean h() {
        return this.j;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x005f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String i() {
        /*
            r13 = this;
            r2 = 1
            r5 = 0
            java.lang.StringBuilder r0 = r13.k
            if (r0 != 0) goto L_0x0078
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 700(0x2bc, float:9.81E-43)
            r0.<init>(r1)
            r13.k = r0
        L_0x000f:
            r13.j = r5
            java.lang.String r0 = ""
            android.net.wifi.WifiInfo r1 = r13.g()
            r13.t = r1
            android.net.wifi.WifiInfo r1 = r13.t
            boolean r1 = a(r1)
            if (r1 == 0) goto L_0x00f1
            android.net.wifi.WifiInfo r0 = r13.t
            java.lang.String r0 = r0.getBSSID()
            r1 = r0
        L_0x0028:
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r13.c
            int r7 = r0.size()
            r6 = r5
            r4 = r5
            r3 = r5
        L_0x0031:
            if (r6 >= r7) goto L_0x0084
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r13.c
            java.lang.Object r0 = r0.get(r6)
            android.net.wifi.ScanResult r0 = (android.net.wifi.ScanResult) r0
            java.lang.String r8 = r0.BSSID
            boolean r0 = r13.m
            if (r0 != 0) goto L_0x00ee
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r13.c
            java.lang.Object r0 = r0.get(r6)
            android.net.wifi.ScanResult r0 = (android.net.wifi.ScanResult) r0
            java.lang.String r0 = r0.SSID
            java.lang.String r9 = "<unknown ssid>"
            boolean r0 = r9.equals(r0)
            if (r0 != 0) goto L_0x00ee
            r0 = r2
        L_0x0054:
            java.lang.String r3 = "nb"
            boolean r9 = r1.equals(r8)
            if (r9 == 0) goto L_0x005f
            java.lang.String r3 = "access"
            r4 = r2
        L_0x005f:
            java.lang.StringBuilder r9 = r13.k
            java.util.Locale r10 = java.util.Locale.US
            java.lang.String r11 = "#%s,%s"
            r12 = 2
            java.lang.Object[] r12 = new java.lang.Object[r12]
            r12[r5] = r8
            r12[r2] = r3
            java.lang.String r3 = java.lang.String.format(r10, r11, r12)
            r9.append(r3)
            int r3 = r6 + 1
            r6 = r3
            r3 = r0
            goto L_0x0031
        L_0x0078:
            java.lang.StringBuilder r0 = r13.k
            java.lang.StringBuilder r1 = r13.k
            int r1 = r1.length()
            r0.delete(r5, r1)
            goto L_0x000f
        L_0x0084:
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r13.c
            int r0 = r0.size()
            if (r0 != 0) goto L_0x00ec
            r6 = r2
        L_0x008d:
            boolean r0 = r13.m     // Catch:{ Throwable -> 0x00b9 }
            if (r0 != 0) goto L_0x00ea
            if (r6 != 0) goto L_0x00ea
            java.util.List r7 = r13.o()     // Catch:{ Throwable -> 0x00b9 }
            r3 = r5
        L_0x0098:
            if (r7 == 0) goto L_0x00bb
            int r0 = r7.size()     // Catch:{ Throwable -> 0x00e6 }
            if (r5 >= r0) goto L_0x00bb
            java.lang.Object r0 = r7.get(r5)     // Catch:{ Throwable -> 0x00e6 }
            android.net.wifi.WifiConfiguration r0 = (android.net.wifi.WifiConfiguration) r0     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r0 = r0.BSSID     // Catch:{ Throwable -> 0x00e6 }
            java.lang.StringBuilder r8 = r13.k     // Catch:{ Throwable -> 0x00e6 }
            java.lang.String r8 = r8.toString()     // Catch:{ Throwable -> 0x00e6 }
            boolean r0 = r8.contains(r0)     // Catch:{ Throwable -> 0x00e6 }
            if (r0 == 0) goto L_0x00e8
            r0 = r2
        L_0x00b5:
            int r5 = r5 + 1
            r3 = r0
            goto L_0x0098
        L_0x00b9:
            r0 = move-exception
            r3 = r5
        L_0x00bb:
            boolean r0 = r13.m
            if (r0 != 0) goto L_0x00c5
            if (r6 != 0) goto L_0x00c5
            if (r3 != 0) goto L_0x00c5
            r13.j = r2
        L_0x00c5:
            if (r4 != 0) goto L_0x00df
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 != 0) goto L_0x00df
            java.lang.StringBuilder r0 = r13.k
            java.lang.String r2 = "#"
            java.lang.StringBuilder r0 = r0.append(r2)
            r0.append(r1)
            java.lang.StringBuilder r0 = r13.k
            java.lang.String r1 = ",access"
            r0.append(r1)
        L_0x00df:
            java.lang.StringBuilder r0 = r13.k
            java.lang.String r0 = r0.toString()
            return r0
        L_0x00e6:
            r0 = move-exception
            goto L_0x00bb
        L_0x00e8:
            r0 = r3
            goto L_0x00b5
        L_0x00ea:
            r3 = r5
            goto L_0x00bb
        L_0x00ec:
            r6 = r3
            goto L_0x008d
        L_0x00ee:
            r0 = r3
            goto L_0x0054
        L_0x00f1:
            r1 = r0
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fe.i():java.lang.String");
    }

    public final void j() {
        c();
        this.c.clear();
    }

    public static String k() {
        return String.valueOf(fy.b() - g);
    }

    public final boolean l() {
        try {
            List o2 = o();
            if (o2 == null || o2.isEmpty()) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
