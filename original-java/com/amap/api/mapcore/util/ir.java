package com.amap.api.mapcore.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationProtocol;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.mimsgsdk.utils.Network;
import com.tencent.connect.common.Constants;

/* compiled from: MapNetLocation */
public final class ir {
    Context a = null;
    boolean b = false;
    String c = null;
    long d = 0;
    WifiInfo e = null;
    boolean f = true;
    int g = 12;
    /* access modifiers changed from: private */
    public iy h = null;
    private ix i = null;
    private a j = null;
    private ja k = null;
    private ConnectivityManager l = null;
    private jc m = null;
    private StringBuilder n = new StringBuilder();
    private Inner_3dMap_locationOption o = null;
    private ij p = null;
    private String q = "00:00:00:00:00:00";

    /* compiled from: MapNetLocation */
    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(ir irVar, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (context != null && intent != null) {
                try {
                    String action = intent.getAction();
                    if (TextUtils.isEmpty(action)) {
                        return;
                    }
                    if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                        if (ir.this.h != null) {
                            ir.this.h.c();
                        }
                    } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED") && ir.this.h != null) {
                        ir.this.h.d();
                    }
                } catch (Throwable th) {
                    jd.a(th, "NetLocation", "onReceive");
                }
            }
        }
    }

    public ir(Context context) {
        try {
            this.a = context.getApplicationContext();
            jg.b(this.a);
            a(this.a);
            this.o = new Inner_3dMap_locationOption();
            if (this.h == null) {
                this.h = new iy(this.a, (WifiManager) jg.a(this.a, Network.NETWORK_TYPE_WIFI));
                this.h.a(this.b);
            }
            if (this.i == null) {
                this.i = new ix(this.a);
            }
            if (this.k == null) {
                this.k = ja.a(this.a);
            }
            if (this.l == null) {
                this.l = (ConnectivityManager) jg.a(this.a, "connectivity");
            }
            this.m = new jc();
            c();
        } catch (Throwable th) {
            jd.a(th, "NetLocation", "<init>");
        }
    }

    private static ij a(ij ijVar, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return im.a().a(ijVar);
        }
        if (strArr[0].equals("shake")) {
            return im.a().a(ijVar);
        }
        if (!strArr[0].equals("fusion")) {
            return ijVar;
        }
        im.a();
        return im.b(ijVar);
    }

    private void a(Context context) {
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") == 0) {
                this.b = true;
            }
        } catch (Throwable th) {
        }
    }

    private boolean a(long j2) {
        if (jg.b() - j2 >= 800) {
            return false;
        }
        long j3 = 0;
        if (it.a(this.p)) {
            j3 = jg.a() - this.p.getTime();
        }
        return j3 <= FileTracerConfig.DEF_FLUSH_INTERVAL;
    }

    private void c() {
        try {
            if (this.j == null) {
                this.j = new a(this, 0);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.a.registerReceiver(this.j, intentFilter);
            this.h.b(false);
            this.i.f();
        } catch (Throwable th) {
            jd.a(th, "NetLocation", "initBroadcastListener");
        }
    }

    private ij d() throws Exception {
        ij ijVar = new ij("");
        if (this.h.g()) {
            ijVar.setErrorCode(15);
            return ijVar;
        }
        try {
            if (this.m == null) {
                this.m = new jc();
            }
            this.m.a(this.a, this.o.isNeedAddress(), this.o.isOffset(), this.i, this.h, this.l, this.q, this.c);
            is isVar = new is();
            byte[] bArr = null;
            String str = "";
            try {
                try {
                    hx a2 = this.k.a(this.k.a(this.a, this.m.a(), jd.a()));
                    if (a2 != null) {
                        bArr = a2.a;
                        str = a2.c;
                    }
                    if (bArr == null || bArr.length == 0) {
                        ijVar.setErrorCode(4);
                        this.n.append("please check the network");
                        if (!TextUtils.isEmpty(str)) {
                            this.n.append(" #csid:" + str);
                        }
                        ijVar.setLocationDetail(this.n.toString());
                        return ijVar;
                    }
                    String str2 = new String(bArr, "UTF-8");
                    if (str2.contains("\"status\":\"0\"")) {
                        return isVar.a(str2, this.a, a2);
                    }
                    if (str2.contains("</body></html>")) {
                        ijVar.setErrorCode(5);
                        if (this.h == null || !this.h.a(this.l)) {
                            this.n.append("request may be intercepted");
                        } else {
                            this.n.append("make sure you are logged in to the network");
                        }
                        if (!TextUtils.isEmpty(str)) {
                            this.n.append(" #csid:" + str);
                        }
                        ijVar.setLocationDetail(this.n.toString());
                        return ijVar;
                    }
                    byte[] a3 = iz.a(bArr);
                    if (a3 == null) {
                        ijVar.setErrorCode(5);
                        this.n.append("decrypt response data error");
                        if (!TextUtils.isEmpty(str)) {
                            this.n.append(" #csid:" + str);
                        }
                        ijVar.setLocationDetail(this.n.toString());
                        return ijVar;
                    }
                    ij a4 = isVar.a(a3);
                    if (a4 == null) {
                        ij ijVar2 = new ij("");
                        ijVar2.setErrorCode(5);
                        this.n.append("location is null");
                        if (!TextUtils.isEmpty(str)) {
                            this.n.append(" #csid:" + str);
                        }
                        ijVar2.setLocationDetail(this.n.toString());
                        return ijVar2;
                    }
                    this.c = a4.a();
                    if (a4.getErrorCode() != 0) {
                        if (!TextUtils.isEmpty(str)) {
                            a4.setLocationDetail(a4.getLocationDetail() + " #csid:" + str);
                        }
                        return a4;
                    } else if (it.a(a4)) {
                        if (a4.e() != null) {
                        }
                        if (a4.getErrorCode() == 0 && a4.getLocationType() == 0) {
                            if ("-5".equals(a4.d()) || "1".equals(a4.d()) || "2".equals(a4.d()) || Constants.VIA_REPORT_TYPE_MAKE_FRIEND.equals(a4.d()) || "24".equals(a4.d()) || "-1".equals(a4.d())) {
                                a4.setLocationType(5);
                            } else {
                                a4.setLocationType(6);
                            }
                            this.n.append(a4.d());
                            if (!TextUtils.isEmpty(str)) {
                                this.n.append(" #csid:" + str);
                            }
                            a4.setLocationDetail(this.n.toString());
                        }
                        return a4;
                    } else {
                        String b2 = a4.b();
                        a4.setErrorCode(6);
                        StringBuilder sb = this.n;
                        StringBuilder append = new StringBuilder("location faile retype:").append(a4.d()).append(" rdesc:");
                        if (b2 == null) {
                            b2 = "null";
                        }
                        sb.append(append.append(b2).toString());
                        if (!TextUtils.isEmpty(str)) {
                            this.n.append(" #csid:" + str);
                        }
                        a4.setLocationDetail(this.n.toString());
                        return a4;
                    }
                } catch (Throwable th) {
                    jd.a(th, "NetLocation", "getApsLoc req");
                    ijVar.setErrorCode(4);
                    this.n.append("please check the network");
                    ijVar.setLocationDetail(this.n.toString());
                    return ijVar;
                }
            } catch (Throwable th2) {
                jd.a(th2, "NetLocation", "getApsLoc buildV4Dot2");
                ijVar.setErrorCode(3);
                this.n.append("buildV4Dot2 error " + th2.getMessage());
                ijVar.setLocationDetail(this.n.toString());
                return ijVar;
            }
        } catch (Throwable th3) {
            jd.a(th3, "NetLocation", "getApsLoc");
            this.n.append("get parames error:" + th3.getMessage());
            ijVar.setErrorCode(3);
            ijVar.setLocationDetail(this.n.toString());
            return ijVar;
        }
    }

    public final Inner_3dMap_location a() {
        if (this.n.length() > 0) {
            this.n.delete(0, this.n.length());
        }
        if (a(this.d) && it.a(this.p)) {
            return this.p;
        }
        this.d = jg.b();
        if (this.a == null) {
            this.n.append("context is null");
            Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location("");
            inner_3dMap_location.setErrorCode(1);
            inner_3dMap_location.setLocationDetail(this.n.toString());
            return inner_3dMap_location;
        }
        try {
            this.i.f();
        } catch (Throwable th) {
            jd.a(th, "NetLocation", "getLocation getCgiListParam");
        }
        try {
            this.h.b(true);
        } catch (Throwable th2) {
            jd.a(th2, "NetLocation", "getLocation getScanResultsParam");
        }
        try {
            this.p = d();
            this.p = a(this.p, new String[0]);
        } catch (Throwable th3) {
            jd.a(th3, "NetLocation", "getLocation getScanResultsParam");
        }
        return this.p;
    }

    public final void a(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.o = inner_3dMap_locationOption;
        if (this.o == null) {
            this.o = new Inner_3dMap_locationOption();
        }
        try {
            iy iyVar = this.h;
            this.o.isWifiActiveScan();
            iyVar.c(this.o.isWifiScan());
        } catch (Throwable th) {
        }
        try {
            this.k.a(this.o.getHttpTimeOut(), this.o.getLocationProtocol().equals(Inner_3dMap_Enum_LocationProtocol.HTTPS));
        } catch (Throwable th2) {
        }
    }

    public final void b() {
        this.b = false;
        this.c = null;
        try {
            if (!(this.a == null || this.j == null)) {
                this.a.unregisterReceiver(this.j);
            }
            if (this.i != null) {
                this.i.g();
            }
            if (this.h != null) {
                this.h.h();
            }
        } catch (Throwable th) {
        } finally {
            this.j = null;
        }
    }
}
