package com.amap.api.mapcore.util;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
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
public final class iy {
    static long e = 0;
    static long f = 0;
    static long g = 0;
    static long h = 0;
    WifiManager a;
    Object b = new Object();
    ArrayList<ScanResult> c = new ArrayList<>();
    ArrayList<ScanResult> d = new ArrayList<>();
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
    private volatile WifiInfo s = null;

    public iy(Context context, WifiManager wifiManager) {
        this.a = wifiManager;
        this.i = context;
    }

    private static boolean a(int i2) {
        int i3 = 20;
        try {
            i3 = WifiManager.calculateSignalLevel(i2, 20);
        } catch (ArithmeticException e2) {
            jd.a(e2, "APS", "wifiSigFine");
        }
        return i3 > 0;
    }

    public static boolean a(WifiInfo wifiInfo) {
        return wifiInfo != null && !TextUtils.isEmpty(wifiInfo.getSSID()) && jg.a(wifiInfo.getBSSID());
    }

    public static String i() {
        return String.valueOf(jg.b() - h);
    }

    private List<ScanResult> j() {
        if (this.a != null) {
            try {
                List<ScanResult> scanResults = this.a.getScanResults();
                this.o = null;
                return scanResults;
            } catch (SecurityException e2) {
                this.o = e2.getMessage();
            } catch (Throwable th) {
                this.o = null;
                jd.a(th, "WifiManagerWrapper", "getScanResults");
            }
        }
        return null;
    }

    private WifiInfo k() {
        try {
            if (this.a != null) {
                return this.a.getConnectionInfo();
            }
        } catch (Throwable th) {
            jd.a(th, "WifiManagerWrapper", "getConnectionInfo");
        }
        return null;
    }

    private int l() {
        if (this.a != null) {
            return this.a.getWifiState();
        }
        return 4;
    }

    private boolean m() {
        if (jg.b() - e < 4900) {
            return false;
        }
        if ((n() && jg.b() - e < 9900) || this.a == null) {
            return false;
        }
        e = jg.b();
        return this.a.startScan();
    }

    private boolean n() {
        if (this.r == null) {
            this.r = (ConnectivityManager) jg.a(this.i, "connectivity");
        }
        return a(this.r);
    }

    private boolean o() {
        if (this.a == null) {
            return false;
        }
        return jg.c(this.i);
    }

    private void p() {
        if (this.c != null && !this.c.isEmpty()) {
            if (jg.b() - h > OpenStreetMapTileProviderConstants.ONE_HOUR) {
                b();
                this.c.clear();
            }
            if (this.p == null) {
                this.p = new TreeMap<>(Collections.reverseOrder());
            }
            this.p.clear();
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                ScanResult scanResult = (ScanResult) this.c.get(i2);
                if (jg.a(scanResult != null ? scanResult.BSSID : "") && (size <= 20 || a(scanResult.level))) {
                    if (TextUtils.isEmpty(scanResult.SSID)) {
                        scanResult.SSID = "unkwn";
                    } else if (!"<unknown ssid>".equals(scanResult.SSID)) {
                        scanResult.SSID = String.valueOf(i2);
                    }
                    this.p.put(Integer.valueOf((scanResult.level * 25) + i2), scanResult);
                }
            }
            this.c.clear();
            for (ScanResult add : this.p.values()) {
                this.c.add(add);
            }
            this.p.clear();
        }
    }

    private void q() {
        if (t()) {
            long b2 = jg.b();
            if (b2 - f >= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                synchronized (this.b) {
                    this.d.clear();
                }
            }
            s();
            if (b2 - f >= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                for (int i2 = 20; i2 > 0 && this.d.isEmpty(); i2--) {
                    try {
                        Thread.sleep(150);
                    } catch (Throwable th) {
                    }
                }
            }
            synchronized (this.b) {
            }
        }
    }

    private void r() {
        ArrayList<ScanResult> arrayList = this.c;
        ArrayList<ScanResult> arrayList2 = this.d;
        arrayList.clear();
        synchronized (this.b) {
            if (arrayList2 != null) {
                if (arrayList2.size() > 0) {
                    arrayList.addAll(arrayList2);
                }
            }
        }
    }

    private void s() {
        if (t()) {
            try {
                if (m()) {
                    g = jg.b();
                }
            } catch (Throwable th) {
                jd.a(th, "APS", "updateWifi");
            }
        }
    }

    private boolean t() {
        this.q = o();
        if (!this.q || !this.l) {
            return false;
        }
        if (g == 0) {
            return true;
        }
        if (jg.b() - g < 4900 || jg.b() - h < 1500) {
            return false;
        }
        return jg.b() - h > 4900 ? true : true;
    }

    public final ArrayList<ScanResult> a() {
        return this.c;
    }

    public final void a(boolean z) {
        Context context = this.i;
        if (this.a != null && context != null && z && jg.c() > 17) {
            ContentResolver contentResolver = context.getContentResolver();
            String str = "android.provider.Settings$Global";
            try {
                if (((Integer) je.a(str, "getInt", new Object[]{contentResolver, "wifi_scan_always_enabled"}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 0) {
                    je.a(str, "putInt", new Object[]{contentResolver, "wifi_scan_always_enabled", Integer.valueOf(1)}, (Class<?>[]) new Class[]{ContentResolver.class, String.class, Integer.TYPE});
                }
            } catch (Throwable th) {
                jd.a(th, "WifiManagerWrapper", "enableWifiAlwaysScan");
            }
        }
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
            int r3 = com.amap.api.mapcore.util.jg.a(r3)     // Catch:{ Throwable -> 0x001d }
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
            com.amap.api.mapcore.util.jd.a(r0, r2, r3)
        L_0x0025:
            r0 = r1
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.iy.a(android.net.ConnectivityManager):boolean");
    }

    public final void b() {
        this.s = null;
        synchronized (this.b) {
            this.d.clear();
        }
    }

    public final void b(boolean z) {
        if (z) {
            q();
        } else {
            s();
        }
        if (jg.b() - h > IPC.LogoutAsyncTellServerTimeout) {
            synchronized (this.b) {
                this.d.clear();
            }
        }
        f = jg.b();
        if (this.d.isEmpty()) {
            h = jg.b();
            List j2 = j();
            if (j2 != null) {
                synchronized (this.b) {
                    this.d.addAll(j2);
                }
            }
        }
        r();
        p();
    }

    public final void c() {
        if (this.a != null && jg.b() - h > 4900) {
            List list = null;
            try {
                list = j();
            } catch (Throwable th) {
                jd.a(th, "APS", "onReceive part1");
            }
            if (list != null) {
                synchronized (this.b) {
                    this.d.clear();
                    this.d.addAll(list);
                    h = jg.b();
                }
                return;
            }
            synchronized (this.b) {
                this.d.clear();
            }
        }
    }

    public final void c(boolean z) {
        this.l = z;
        this.m = true;
    }

    public final void d() {
        if (this.a != null) {
            int i2 = 4;
            try {
                i2 = l();
            } catch (Throwable th) {
                jd.a(th, "APS", "onReceive part");
            }
            if (this.d == null) {
                this.d = new ArrayList<>();
            }
            switch (i2) {
                case 0:
                    b();
                    return;
                case 1:
                    b();
                    return;
                case 4:
                    b();
                    return;
                default:
                    return;
            }
        }
    }

    public final boolean e() {
        return this.q;
    }

    public final WifiInfo f() {
        this.s = k();
        return this.s;
    }

    public final boolean g() {
        return this.j;
    }

    public final void h() {
        b();
        this.c.clear();
    }
}
