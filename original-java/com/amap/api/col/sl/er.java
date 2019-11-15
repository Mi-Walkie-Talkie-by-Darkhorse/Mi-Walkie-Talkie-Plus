package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationProtocol;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.mi.mimsgsdk.utils.Network;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;

@SuppressLint({"NewApi"})
/* compiled from: APS */
public final class er {
    static int G = -1;
    public static boolean J = true;
    private static boolean N = false;
    private static int P = -1;
    StringBuilder A = null;
    boolean B = false;
    public boolean C = false;
    int D = 12;
    ew E = null;
    boolean F = false;
    eu H = null;
    String I = null;
    IntentFilter K = null;
    private int L = 0;
    private String M = null;
    private String O = null;
    private boolean Q = true;
    Context a = null;
    ConnectivityManager b = null;
    fe c = null;
    fb d = null;
    fd e = null;
    fc f = null;
    fg g = null;
    es h = null;
    ey i = null;
    fn j = null;
    ArrayList<ScanResult> k = new ArrayList<>();
    a l = null;
    AMapLocationClientOption m = new AMapLocationClientOption();
    ev n = null;
    long o = 0;
    fo p = null;
    boolean q = false;
    fl r = null;
    StringBuilder s = new StringBuilder();
    boolean t = true;
    boolean u = true;
    GeoLanguage v = GeoLanguage.DEFAULT;
    boolean w = true;
    boolean x = false;
    WifiInfo y = null;
    boolean z = true;

    /* compiled from: APS */
    class a extends BroadcastReceiver {
        a() {
        }

        public final void onReceive(Context context, Intent intent) {
            if (context != null && intent != null) {
                try {
                    String action = intent.getAction();
                    if (TextUtils.isEmpty(action)) {
                        return;
                    }
                    if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                        if (er.this.c != null) {
                            er.this.c.d();
                        }
                    } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                        if (er.this.c != null) {
                            er.this.c.e();
                        }
                    } else if (action.equals("android.intent.action.SCREEN_ON")) {
                        if (er.this.f != null) {
                            er.this.f.a(true);
                        }
                    } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                        if (er.this.f != null) {
                            er.this.f.a(false);
                            er.this.f.c();
                        }
                    } else if (action.equals("android.net.conn.CONNECTIVITY_CHANGE") && er.this.f != null) {
                        er.this.f.d();
                    }
                } catch (Throwable th) {
                    fq.a(th, "APS", "onReceive");
                }
            }
        }
    }

    public final void a(Context context) {
        try {
            if (this.a == null) {
                this.H = new eu();
                this.a = context.getApplicationContext();
                fp.e(this.a);
                fy.b(this.a);
                if (this.c == null) {
                    this.c = new fe(this.a, (WifiManager) fy.a(this.a, Network.NETWORK_TYPE_WIFI));
                }
                if (this.d == null) {
                    this.d = new fb(this.a);
                }
                if (this.e == null) {
                    this.e = new fd();
                }
                if (this.f == null) {
                    this.f = new fc();
                }
                if (this.g == null) {
                    this.g = new fg();
                }
                if (this.j == null) {
                    this.j = new fn();
                }
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "initBase");
        }
    }

    public final void a() {
        Context context = this.a;
        this.r = fl.a();
        if (this.r != null) {
            try {
                this.r.a(this.m.getHttpTimeOut(), this.m.getLocationProtocol().equals(AMapLocationProtocol.HTTPS), this.m.getGeoLanguage());
            } catch (Throwable th) {
            }
        }
        if (this.b == null) {
            this.b = (ConnectivityManager) fy.a(this.a, "connectivity");
        }
        if (this.p == null) {
            this.p = new fo();
        }
    }

    public final void b() {
        if (this.i == null) {
            this.i = new ey(this.a);
        }
        if (this.E == null) {
            this.E = new ew(this.a);
        }
        if (this.h == null) {
            this.h = new es(this.a);
        }
        this.e.a(this.a);
        l();
        this.c.b(false);
        this.k = this.c.b();
        this.d.a(false, n());
        this.g.a(this.a);
        this.h.b();
        try {
            if (this.a.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") == 0) {
                this.q = true;
            }
        } catch (Throwable th) {
        }
        this.C = true;
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        boolean z2;
        boolean z3;
        boolean z4 = false;
        boolean z5 = true;
        this.m = aMapLocationClientOption;
        if (this.m == null) {
            this.m = new AMapLocationClientOption();
        }
        if (this.c != null) {
            fe feVar = this.c;
            this.m.isWifiActiveScan();
            feVar.a(this.m.isWifiScan(), this.m.isMockEnable());
        }
        if (this.r != null) {
            fl flVar = this.r;
            long httpTimeOut = this.m.getHttpTimeOut();
            if (this.m.getLocationProtocol().equals(AMapLocationProtocol.HTTPS)) {
                z4 = true;
            }
            flVar.a(httpTimeOut, z4, aMapLocationClientOption.getGeoLanguage());
        }
        if (this.g != null) {
            this.g.a(this.m);
        }
        if (this.j != null) {
            this.j.a(this.m);
        }
        GeoLanguage geoLanguage = GeoLanguage.DEFAULT;
        try {
            geoLanguage = this.m.getGeoLanguage();
            z2 = this.m.isNeedAddress();
            try {
                z3 = this.m.isOffset();
                try {
                    z5 = this.m.isLocationCacheEnable();
                    this.x = this.m.isOnceLocationLatest();
                    this.F = this.m.isSensorEnable();
                    if (!(z3 == this.u && z2 == this.t && z5 == this.w && geoLanguage == this.v)) {
                        if (this.g != null) {
                            this.g.a();
                        }
                        b((ev) null);
                        this.Q = false;
                        if (this.H != null) {
                            this.H.a();
                        }
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                z3 = true;
            }
        } catch (Throwable th3) {
            z2 = true;
            z3 = true;
        }
        this.u = z3;
        this.t = z2;
        this.w = z5;
        this.v = geoLanguage;
    }

    public final void c() {
        if (this.s.length() > 0) {
            this.s.delete(0, this.s.length());
        }
    }

    public final ev d() throws Throwable {
        boolean z2;
        long j2;
        boolean z3;
        c();
        if (this.a == null) {
            this.s.append("context is null#0101");
            return a(1, this.s.toString());
        }
        this.L++;
        if (this.L == 1) {
            this.f.e();
            if (this.c != null) {
                this.c.a(this.q);
            }
            this.f.a();
            this.e.a();
        }
        long j3 = this.o;
        if (!this.Q) {
            this.Q = true;
            z2 = false;
        } else {
            if (fy.b() - j3 < 800) {
                if (fy.a(this.n)) {
                    j2 = fy.a() - this.n.getTime();
                } else {
                    j2 = 0;
                }
                if (j2 <= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                    z2 = true;
                }
            }
            z2 = false;
        }
        if (!z2 || !fy.a(this.n)) {
            if (this.E != null) {
                if (this.F) {
                    this.E.a();
                } else {
                    this.E.b();
                }
            }
            try {
                if (this.m.isOnceLocationLatest() || !this.m.isOnceLocation()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.c.b(z3);
                this.k = this.c.b();
            } catch (Throwable th) {
                fq.a(th, "APS", "getLocation getScanResultsParam");
            }
            try {
                this.d.a(false, n());
            } catch (Throwable th2) {
                fq.a(th2, "APS", "getLocation getCgiListParam");
            }
            this.O = m();
            if (TextUtils.isEmpty(this.O)) {
                this.n = this.h.e();
                if (this.n == null) {
                    return a(this.D, this.s.toString());
                }
                this.n.setLocationDetail(this.s.toString());
                return this.n;
            }
            this.e.a(this.m, this.O);
            this.A = a(this.A);
            if (this.c.h()) {
                ev a2 = a(15, "networkLocation has been mocked!#1502");
                a2.setMock(true);
                return a2;
            }
            boolean z4 = this.o == 0 ? true : fy.b() - this.o > IPC.LogoutAsyncTellServerTimeout;
            ev a3 = this.g.a(this.d, z4, this.n, this.c, this.A, this.O, this.a);
            if (fy.a(a3)) {
                b(a3);
            } else {
                this.n = a(false, true);
                if (fy.a(this.n)) {
                    this.n.e("new");
                    this.g.a(this.A.toString());
                    this.g.a(this.d.c());
                    b(this.n);
                }
            }
            this.g.a(this.O, this.A, this.n, this.a, true);
            fd fdVar = this.e;
            Context context = this.a;
            fdVar.a(this.O, this.n);
            if (!fy.a(this.n)) {
                fd fdVar2 = this.e;
                fg fgVar = this.g;
                String str = this.O;
                String sb = this.A.toString();
                AMapLocationClientOption aMapLocationClientOption = this.m;
                Context context2 = this.a;
                this.n = fdVar2.a(fgVar, str, sb, aMapLocationClientOption, m(), this.n);
            }
            this.A.delete(0, this.A.length());
            if (!this.F || this.E == null) {
                this.n.setAltitude(0.0d);
                this.n.setBearing(0.0f);
                this.n.setSpeed(0.0f);
            } else {
                this.n.setAltitude(this.E.c());
                this.n.setBearing(this.E.d());
                this.n.setSpeed((float) this.E.e());
            }
            return this.n;
        }
        if (this.w && fp.b(this.n.getTime())) {
            this.n.setLocationType(2);
        }
        return this.n;
    }

    public final void e() {
        try {
            a(this.a);
            a(this.m);
            Context context = this.a;
            i();
            a(a(true, true));
        } catch (Throwable th) {
            fq.a(th, "APS", "doFusionLocation");
        }
    }

    public final ev a(ev evVar, String... strArr) {
        this.H.a(this.w);
        if (strArr == null || strArr.length == 0) {
            return this.H.a(evVar);
        }
        if (strArr[0].equals("shake")) {
            return this.H.a(evVar);
        }
        if (!strArr[0].equals("fusion")) {
            return evVar;
        }
        eu euVar = this.H;
        return evVar;
    }

    @SuppressLint({"NewApi"})
    public final void f() {
        this.I = null;
        this.B = false;
        this.C = false;
        if (this.f != null) {
            this.f.b();
            this.f.a = null;
        }
        if (this.h != null) {
            this.h.a();
        }
        if (this.g != null) {
            this.g.b(this.a);
        }
        if (this.H != null) {
            this.H.a();
        }
        if (this.j != null) {
            this.j = null;
        }
        fy.g();
        try {
            if (!(this.a == null || this.l == null)) {
                this.a.unregisterReceiver(this.l);
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "destroy");
        } finally {
            this.l = null;
        }
        if (this.d != null) {
            this.d.g();
        }
        if (this.c != null) {
            this.c.j();
        }
        if (this.k != null) {
            this.k.clear();
        }
        if (this.E != null) {
            this.E.f();
        }
        this.n = null;
        this.a = null;
        if (this.e != null) {
            this.e.b();
        }
        this.A = null;
        if (this.i != null) {
            this.i.d();
        }
    }

    private void l() {
        try {
            if (this.l == null) {
                this.l = new a();
            }
            if (this.K == null) {
                this.K = new IntentFilter();
                this.K.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                this.K.addAction("android.net.wifi.SCAN_RESULTS");
                this.K.addAction("android.intent.action.SCREEN_ON");
                this.K.addAction("android.intent.action.SCREEN_OFF");
                this.K.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.a.registerReceiver(this.l, this.K);
        } catch (Throwable th) {
            fq.a(th, "APS", "initBroadcastListener");
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String m() {
        /*
            r10 = this;
            r3 = 1
            r9 = 2121(0x849, float:2.972E-42)
            r8 = 12
            r2 = 0
            r7 = 0
            java.lang.String r4 = ""
            java.lang.String r5 = "network"
            com.amap.api.col.sl.fb r0 = r10.d
            int r0 = r0.e()
            com.amap.api.col.sl.fb r1 = r10.d
            com.amap.api.col.sl.fa r1 = r1.c()
            if (r1 != 0) goto L_0x0129
            java.util.ArrayList<android.net.wifi.ScanResult> r6 = r10.k
            if (r6 == 0) goto L_0x0025
            java.util.ArrayList<android.net.wifi.ScanResult> r6 = r10.k
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L_0x0129
        L_0x0025:
            android.net.ConnectivityManager r0 = r10.b
            if (r0 != 0) goto L_0x0035
            android.content.Context r0 = r10.a
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r10.b = r0
        L_0x0035:
            android.content.Context r0 = r10.a
            boolean r0 = com.amap.api.col.sl.fy.f(r0)
            if (r0 != 0) goto L_0x004a
            r10.D = r8
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "定位权限被禁用,请授予应用定位权限#1201"
            r0.append(r1)
            com.amap.api.col.sl.fv.a(r7, r9)
        L_0x0049:
            return r4
        L_0x004a:
            int r0 = com.amap.api.col.sl.fy.c()
            r1 = 24
            if (r0 < r1) goto L_0x006d
            android.content.Context r0 = r10.a
            android.content.ContentResolver r0 = r0.getContentResolver()
            java.lang.String r1 = "location_mode"
            int r0 = android.provider.Settings.Secure.getInt(r0, r1, r2)
            if (r0 != 0) goto L_0x006d
            r10.D = r8
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "定位服务没有开启，请在设置中打开定位服务开关#1206"
            r0.append(r1)
            com.amap.api.col.sl.fv.a(r7, r9)
            goto L_0x0049
        L_0x006d:
            com.amap.api.col.sl.fb r0 = r10.d
            java.lang.String r0 = r0.i()
            com.amap.api.col.sl.fe r1 = r10.c
            java.lang.String r1 = r1.a()
            com.amap.api.col.sl.fe r2 = r10.c
            android.net.ConnectivityManager r3 = r10.b
            boolean r2 = r2.a(r3)
            if (r2 != 0) goto L_0x008d
            com.amap.api.col.sl.fe r2 = r10.c
            boolean r2 = r2.l()
            if (r2 != 0) goto L_0x008d
            if (r1 == 0) goto L_0x00a4
        L_0x008d:
            r10.D = r8
            if (r0 == 0) goto L_0x009c
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "获取基站与获取WIFI的权限都被禁用，请在安全软件中打开应用的定位权限#1202"
            r0.append(r1)
        L_0x0098:
            com.amap.api.col.sl.fv.a(r7, r9)
            goto L_0x0049
        L_0x009c:
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "获取到的基站为空，并且获取WIFI权限被禁用,请在安全软件中打开应用的定位权限#1203"
            r0.append(r1)
            goto L_0x0098
        L_0x00a4:
            if (r0 == 0) goto L_0x00c3
            r10.D = r8
            com.amap.api.col.sl.fe r0 = r10.c
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x00bb
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "WIFI开关关闭，并且获取基站权限被禁用，请在安全软件中打开应用的定位权限或者打开WIFI开关#1204"
            r0.append(r1)
        L_0x00b7:
            com.amap.api.col.sl.fv.a(r7, r9)
            goto L_0x0049
        L_0x00bb:
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "获取的WIFI列表为空，并且获取基站权限被禁用，请在安全软件中打开应用的定位权限#1205"
            r0.append(r1)
            goto L_0x00b7
        L_0x00c3:
            android.content.Context r0 = r10.a
            boolean r0 = com.amap.api.col.sl.fy.a(r0)
            if (r0 == 0) goto L_0x00e5
            com.amap.api.col.sl.fe r0 = r10.c
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x00e5
            r0 = 18
            r10.D = r0
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "飞行模式下关闭了WIFI开关，请关闭飞行模式或者打开WIFI开关#1801"
            r0.append(r1)
            r0 = 2132(0x854, float:2.988E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x00e5:
            com.amap.api.col.sl.fe r0 = r10.c
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x0107
            com.amap.api.col.sl.fb r0 = r10.d
            boolean r0 = r0.l()
            if (r0 != 0) goto L_0x0107
            r0 = 19
            r10.D = r0
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "没有检查到SIM卡，并且WIFI开关关闭，请打开WIFI开关或者插入SIM卡#1901"
            r0.append(r1)
            r0 = 2133(0x855, float:2.989E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x0107:
            com.amap.api.col.sl.fe r0 = r10.c
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x0121
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "获取到的基站为空，并且关闭了WIFI开关，请您打开WIFI开关在发起定位#1301"
            r0.append(r1)
        L_0x0116:
            r0 = 13
            r10.D = r0
            r0 = 2131(0x853, float:2.986E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x0121:
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "获取到的基站与WIFI为空，请移动到有WIFI的区域，若确定当前区域有WIFI，请检查是否授予APP定位权限#1302"
            r0.append(r1)
            goto L_0x0116
        L_0x0129:
            com.amap.api.col.sl.fe r6 = r10.c
            android.net.wifi.WifiInfo r6 = r6.g()
            r10.y = r6
            com.amap.api.col.sl.fe r6 = r10.c
            android.net.wifi.WifiInfo r6 = r10.y
            boolean r6 = com.amap.api.col.sl.fe.a(r6)
            r10.z = r6
            switch(r0) {
                case 0: goto L_0x023b;
                case 1: goto L_0x0184;
                case 2: goto L_0x01da;
                default: goto L_0x013e;
            }
        L_0x013e:
            r0 = 11
            r10.D = r0
            r0 = 2111(0x83f, float:2.958E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "get cgi failure#1101"
            r0.append(r1)
        L_0x014e:
            r0 = r4
        L_0x014f:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L_0x0181
            java.lang.String r1 = "#"
            boolean r1 = r0.startsWith(r1)
            if (r1 != 0) goto L_0x016c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "#"
            r1.<init>(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
        L_0x016c:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = com.amap.api.col.sl.fy.h()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
        L_0x0181:
            r4 = r0
            goto L_0x0049
        L_0x0184:
            if (r1 == 0) goto L_0x014e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r0 = r1.a
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.b
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.c
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.d
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r1 = "#"
            r0.append(r1)
            java.lang.StringBuilder r0 = r2.append(r5)
            java.lang.String r1 = "#"
            r0.append(r1)
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x01cc
            boolean r0 = r10.z
            if (r0 == 0) goto L_0x01d7
        L_0x01cc:
            java.lang.String r0 = "cgiwifi"
        L_0x01ce:
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            goto L_0x014f
        L_0x01d7:
            java.lang.String r0 = "cgi"
            goto L_0x01ce
        L_0x01da:
            if (r1 == 0) goto L_0x014e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r0 = r1.a
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.b
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.g
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.h
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r3 = "#"
            r0.append(r3)
            int r0 = r1.i
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r1 = "#"
            r0.append(r1)
            java.lang.StringBuilder r0 = r2.append(r5)
            java.lang.String r1 = "#"
            r0.append(r1)
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x022d
            boolean r0 = r10.z
            if (r0 == 0) goto L_0x0238
        L_0x022d:
            java.lang.String r0 = "cgiwifi"
        L_0x022f:
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            goto L_0x014f
        L_0x0238:
            java.lang.String r0 = "cgi"
            goto L_0x022f
        L_0x023b:
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0247
            boolean r0 = r10.z
            if (r0 == 0) goto L_0x02f8
        L_0x0247:
            r1 = r3
        L_0x0248:
            boolean r0 = r10.z
            if (r0 == 0) goto L_0x0265
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0265
            r0 = 2
            r10.D = r0
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "当前基站为伪基站，并且WIFI权限被禁用，请在安全软件中打开应用的定位权限#0201"
            r0.append(r1)
            r0 = 2021(0x7e5, float:2.832E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x0265:
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            int r0 = r0.size()
            if (r0 != r3) goto L_0x02aa
            r0 = 2
            r10.D = r0
            boolean r0 = r10.z
            if (r0 != 0) goto L_0x0282
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "当前基站为伪基站，并且搜到的WIFI数量不足，请移动到WIFI比较丰富的区域#0202"
            r0.append(r1)
            r0 = 2022(0x7e6, float:2.833E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x0282:
            java.util.ArrayList<android.net.wifi.ScanResult> r0 = r10.k
            java.lang.Object r0 = r0.get(r2)
            android.net.wifi.ScanResult r0 = (android.net.wifi.ScanResult) r0
            java.lang.String r0 = r0.BSSID
            com.amap.api.col.sl.fe r6 = r10.c
            android.net.wifi.WifiInfo r6 = r6.g()
            java.lang.String r6 = r6.getBSSID()
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x02aa
            java.lang.StringBuilder r0 = r10.s
            java.lang.String r1 = "当前基站为伪基站，并且搜到的WIFI数量不足，请移动到WIFI比较丰富的区域#0202"
            r0.append(r1)
            r0 = 2021(0x7e5, float:2.832E-42)
            com.amap.api.col.sl.fv.a(r7, r0)
            goto L_0x0049
        L_0x02aa:
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r4 = "#%s#"
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r5
            java.lang.String r0 = java.lang.String.format(r0, r4, r3)
            if (r1 == 0) goto L_0x02cd
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = "wifi"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L_0x014f
        L_0x02cd:
            java.lang.String r1 = "network"
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L_0x014f
            java.lang.String r0 = ""
            r1 = 2
            r10.D = r1
            com.amap.api.col.sl.fe r1 = r10.c
            boolean r1 = r1.f()
            if (r1 != 0) goto L_0x02f0
            java.lang.StringBuilder r1 = r10.s
            java.lang.String r2 = "当前基站为伪基站,并且关闭了WIFI开关，请在设置中打开WIFI开关#0203"
            r1.append(r2)
        L_0x02e9:
            r1 = 2022(0x7e6, float:2.833E-42)
            com.amap.api.col.sl.fv.a(r7, r1)
            goto L_0x014f
        L_0x02f0:
            java.lang.StringBuilder r1 = r10.s
            java.lang.String r2 = "当前基站为伪基站,并且没有搜索到WIFI，请移动到WIFI比较丰富的区域#0204"
            r1.append(r2)
            goto L_0x02e9
        L_0x02f8:
            r1 = r2
            goto L_0x0248
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.er.m():java.lang.String");
    }

    private StringBuilder a(StringBuilder sb) {
        if (sb == null) {
            sb = new StringBuilder(700);
        } else {
            sb.delete(0, sb.length());
        }
        sb.append(this.d.k());
        sb.append(this.c.i());
        return sb;
    }

    private ev a(ev evVar, du duVar) {
        if (duVar != null) {
            try {
                if (!(duVar.a == null || duVar.a.length == 0)) {
                    fn fnVar = new fn();
                    String str = new String(duVar.a, "UTF-8");
                    if (str.contains("\"status\":\"0\"")) {
                        ev a2 = fnVar.a(str, this.a, duVar);
                        a2.h(this.A.toString());
                        return a2;
                    } else if (!str.contains("</body></html>")) {
                        return null;
                    } else {
                        evVar.setErrorCode(5);
                        if (this.c == null || !this.c.a(this.b)) {
                            this.s.append("请求可能被劫持了#0502");
                            fv.a((String) null, (int) GLMapStaticValue.AM_PARAMETERNAME_MAP_TEXTSCALE);
                        } else {
                            this.s.append("您连接的是一个需要登录的网络，请确认已经登入网络#0501");
                            fv.a((String) null, (int) GLMapStaticValue.AM_PARAMETERNAME_MAP_VALUE);
                        }
                        evVar.setLocationDetail(this.s.toString());
                        return evVar;
                    }
                }
            } catch (Throwable th) {
                evVar.setErrorCode(4);
                fq.a(th, "APS", "checkResponseEntity");
                this.s.append("check response exception ex is" + th.getMessage() + "#0403");
                evVar.setLocationDetail(this.s.toString());
                return evVar;
            }
        }
        evVar.setErrorCode(4);
        this.s.append("网络异常,请求异常#0403");
        evVar.h(this.A.toString());
        evVar.setLocationDetail(this.s.toString());
        if (duVar == null) {
            return evVar;
        }
        fv.a(duVar.d, 2041);
        return evVar;
    }

    @SuppressLint({"NewApi"})
    private ev a(boolean z2, boolean z3) {
        ev evVar;
        ev evVar2 = new ev("");
        try {
            if (this.p == null) {
                this.p = new fo();
            }
            if (this.m == null) {
                this.m = new AMapLocationClientOption();
            }
            this.p.a(this.a, this.m.isNeedAddress(), this.m.isOffset(), this.d, this.c, this.b, this.i, this.f.f(), this.I);
            this.e.a(this.d);
            byte[] a2 = this.p.a();
            this.o = fy.b();
            try {
                fq.d(this.a);
                fm a3 = this.r.a(this.a, a2, fq.a(), z3);
                fj.a(this.a).a(a3);
                du a4 = this.r.a(a3);
                String str = "";
                if (a4 != null) {
                    fj.a(this.a).a();
                    evVar2.a((long) this.r.b());
                    if (!TextUtils.isEmpty(a4.c)) {
                        this.s.append("#csid:" + a4.c);
                    }
                    str = a4.d;
                    evVar2.h(this.A.toString());
                }
                if (!z2) {
                    ev a5 = a(evVar2, a4);
                    if (a5 != null) {
                        return a5;
                    }
                    byte[] a6 = ff.a(a4.a);
                    if (a6 == null) {
                        evVar2.setErrorCode(5);
                        this.s.append("解密数据失败#0503");
                        evVar2.setLocationDetail(this.s.toString());
                        fv.a(str, (int) GLMapStaticValue.AM_PARAMETERNAME_RESTORED_MAPMODESTATE);
                        return evVar2;
                    }
                    ev a7 = this.j.a(evVar2, a6);
                    if (!fy.a(a7)) {
                        this.M = a7.b();
                        if (!TextUtils.isEmpty(this.M)) {
                            fv.a(str, 2062);
                        } else {
                            fv.a(str, 2061);
                        }
                        a7.setErrorCode(6);
                        this.s.append("location faile retype:" + a7.d() + " rdesc:" + (TextUtils.isEmpty(this.M) ? "" : this.M) + "#0601");
                        a7.h(this.A.toString());
                        a7.setLocationDetail(this.s.toString());
                        return a7;
                    }
                    if (this.i != null) {
                        ey eyVar = this.i;
                        String d2 = a7.d();
                        float accuracy = a7.getAccuracy();
                        try {
                            if (!"-1".equals(d2) || accuracy > 5.0f) {
                                eyVar.a();
                            } else {
                                eyVar.b();
                            }
                        } catch (Throwable th) {
                            fq.a(th, "BeaconManager", "checkLocationType");
                        }
                    }
                    if (a7.getErrorCode() == 0 && a7.getLocationType() == 0) {
                        if ("-5".equals(a7.d()) || "1".equals(a7.d()) || "2".equals(a7.d()) || Constants.VIA_REPORT_TYPE_MAKE_FRIEND.equals(a7.d()) || "24".equals(a7.d()) || "-1".equals(a7.d())) {
                            a7.setLocationType(5);
                        } else {
                            a7.setLocationType(6);
                        }
                    }
                    a7.setOffset(this.u);
                    a7.a(this.t);
                    a7.f(String.valueOf(this.v));
                    evVar = a7;
                } else {
                    evVar = evVar2;
                }
                evVar.e("new");
                evVar.setLocationDetail(this.s.toString());
                this.I = evVar.a();
                return evVar;
            } catch (Throwable th2) {
                fj.a(this.a).b();
                fq.a(th2, "APS", "getApsLoc req");
                fv.a("/mobile/binary", th2);
                if (!fy.d(this.a)) {
                    this.s.append("网络异常，未连接到网络，请连接网络#0401");
                } else if (!(th2 instanceof bo)) {
                    this.s.append("网络异常,请求异常#0403");
                } else if (((bo) th2).a().contains("网络异常状态码")) {
                    this.s.append("网络异常，状态码错误#0404").append(((bo) th2).e());
                } else if (((bo) th2).e() == 23 || Math.abs((fy.b() - this.o) - this.m.getHttpTimeOut()) < 500) {
                    this.s.append("网络异常，连接超时#0402");
                } else {
                    this.s.append("网络异常,请求异常#0403");
                }
                ev a8 = a(4, this.s.toString());
                a8.h(this.A.toString());
                return a8;
            }
        } catch (Throwable th3) {
            this.s.append("get parames error:" + th3.getMessage() + "#0301");
            fv.a((String) null, 2031);
            ev a9 = a(3, this.s.toString());
            a9.h(this.A.toString());
            return a9;
        }
    }

    public final void g() {
        try {
            if (this.h != null) {
                this.h.c();
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "bindAMapService");
        }
    }

    public final void h() {
        try {
            if (this.h != null) {
                this.h.d();
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "bindOtherService");
        }
    }

    public static void b(Context context) {
        try {
            if (P == -1 || fp.h(context)) {
                P = 1;
                fp.a(context);
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "initAuth");
        }
    }

    public final void i() {
        try {
            if (!this.B) {
                if (this.O != null) {
                    this.O = null;
                }
                if (this.A != null) {
                    this.A.delete(0, this.A.length());
                }
                if (this.x) {
                    l();
                }
                this.c.b(this.x);
                this.k = this.c.b();
                this.d.a(true, n());
                this.O = m();
                if (!TextUtils.isEmpty(this.O)) {
                    this.A = a(this.A);
                }
                this.B = true;
            }
        } catch (Throwable th) {
            fq.a(th, "APS", "initFirstLocateParam");
        }
    }

    private boolean n() {
        this.k = this.c.b();
        if (this.k == null || this.k.size() <= 0) {
            return true;
        }
        return false;
    }

    public final ev j() {
        if (this.c.h()) {
            return a(15, "networkLocation has been mocked!#1502");
        }
        if (TextUtils.isEmpty(this.O)) {
            return a(this.D, this.s.toString());
        }
        ev a2 = this.g.a(this.a, this.O, this.A, true);
        if (!fy.a(a2)) {
            return a2;
        }
        b(a2);
        return a2;
    }

    private void b(ev evVar) {
        if (evVar != null) {
            this.n = evVar;
        }
        if (this.e != null) {
            if (evVar != null) {
                this.e.a(evVar.toJson(1));
            }
            this.e.c();
        }
    }

    public final ev a(boolean z2) {
        if (this.a == null) {
            this.s.append("context is null#0101");
            fv.a((String) null, 2011);
            return a(1, this.s.toString());
        } else if (this.c.h()) {
            return a(15, "networkLocation has been mocked!#1502");
        } else {
            a();
            if (TextUtils.isEmpty(this.O)) {
                return a(this.D, this.s.toString());
            }
            ev a2 = a(false, z2);
            if (fy.a(a2)) {
                this.g.a(this.A.toString());
                this.g.a(this.d.c());
                b(a2);
                return a2;
            }
            String sb = this.A.toString();
            this.e.a(this.a);
            fd fdVar = this.e;
            fg fgVar = this.g;
            String str = this.O;
            AMapLocationClientOption aMapLocationClientOption = this.m;
            Context context = this.a;
            return fdVar.a(fgVar, str, sb, aMapLocationClientOption, m(), a2);
        }
    }

    public final void a(ev evVar) {
        if (fy.a(evVar)) {
            this.g.a(this.O, this.A, evVar, this.a, true);
        }
    }

    public final void k() {
        this.f.a(this.a, this.r, this.c, this.m, this.b);
    }

    public final ev a(double d2, double d3) {
        try {
            String a2 = this.r.a(this.a, d2, d3);
            if (a2.contains("\"status\":\"1\"")) {
                ev a3 = this.j.a(a2);
                a3.setLatitude(d2);
                a3.setLongitude(d3);
                return a3;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    private static ev a(int i2, String str) {
        ev evVar = new ev("");
        evVar.setErrorCode(i2);
        evVar.setLocationDetail(str);
        if (i2 == 15) {
            fv.a((String) null, 2151);
        }
        return evVar;
    }
}
