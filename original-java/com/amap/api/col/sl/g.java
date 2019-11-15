package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import com.amap.api.location.DPoint;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: GPSLocation */
public final class g {
    static AMapLocation j = null;
    static long k = 0;
    static Object l = new Object();
    static long p = 0;
    public static boolean s = false;
    public static boolean t = false;
    /* access modifiers changed from: private */
    public Context A;
    /* access modifiers changed from: private */
    public long B = 0;
    private int C = 0;
    private Listener D = new Listener() {
        public final void onGpsStatusChanged(int i) {
            int i2;
            int i3 = 0;
            try {
                g.this.y = g.this.b.getGpsStatus(g.this.y);
                switch (i) {
                    case 2:
                        g.this.x = 0;
                        return;
                    case 4:
                        Iterator it = g.this.y.getSatellites().iterator();
                        int maxSatellites = g.this.y.getMaxSatellites();
                        while (it.hasNext() && i3 < maxSatellites) {
                            if (((GpsSatellite) it.next()).usedInFix()) {
                                i2 = i3 + 1;
                            } else {
                                i2 = i3;
                            }
                            i3 = i2;
                        }
                        g.this.x = i3;
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                fq.a(th, "GPSLocation", "onGpsStatusChanged");
            }
            fq.a(th, "GPSLocation", "onGpsStatusChanged");
        }
    };
    /* access modifiers changed from: private */
    public String E = null;
    /* access modifiers changed from: private */
    public boolean F = false;
    /* access modifiers changed from: private */
    public int G = 0;
    Handler a;
    LocationManager b;
    AMapLocationClientOption c;
    long d = 0;
    boolean e = false;
    eu f = null;
    int g = 240;
    int h = 80;
    AMapLocation i = null;
    long m = 0;
    float n = 0.0f;
    Object o = new Object();
    GeoLanguage q = GeoLanguage.DEFAULT;
    boolean r = true;
    long u = 0;
    int v = 0;
    LocationListener w = new LocationListener() {
        public final void onLocationChanged(Location location) {
            if (g.this.a != null) {
                g.this.a.removeMessages(8);
            }
            if (location != null) {
                try {
                    AMapLocation aMapLocation = new AMapLocation(location);
                    if (fy.a(aMapLocation)) {
                        aMapLocation.setLocationType(1);
                        location.getExtras();
                        if (!g.this.e && fy.a(aMapLocation)) {
                            fv.a(g.this.A, fy.b() - g.this.B, fq.a(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
                            g.this.e = true;
                        }
                        if (fy.a(location, g.this.x)) {
                            aMapLocation.setMock(true);
                            if (!g.this.c.isMockEnable()) {
                                if (g.this.v > 3) {
                                    fv.a((String) null, 2152);
                                    aMapLocation.setErrorCode(15);
                                    aMapLocation.setLocationDetail("GPSLocation has been mocked!#1501");
                                    aMapLocation.setLatitude(0.0d);
                                    aMapLocation.setLongitude(0.0d);
                                    aMapLocation.setAltitude(0.0d);
                                    aMapLocation.setSpeed(0.0f);
                                    aMapLocation.setAccuracy(0.0f);
                                    aMapLocation.setBearing(0.0f);
                                    aMapLocation.setExtras(null);
                                    g.this.b(aMapLocation);
                                    return;
                                }
                                g.this.v++;
                                return;
                            }
                        } else {
                            g.this.v = 0;
                        }
                        aMapLocation.setSatellites(g.this.x);
                        g.b(g.this, aMapLocation);
                        g.c(g.this, aMapLocation);
                        AMapLocation d = g.d(g.this, aMapLocation);
                        g.e(g.this, d);
                        g.this.a(d);
                        synchronized (g.this.o) {
                            g.a(g.this, d, g.this.z);
                        }
                        try {
                            if (fy.a(d)) {
                                if (g.this.i != null) {
                                    g.this.m = location.getTime() - g.this.i.getTime();
                                    g.this.n = fy.a(g.this.i, d);
                                }
                                g.this.i = d.clone();
                                g.this.E = null;
                                g.this.F = false;
                                g.this.G = 0;
                            }
                        } catch (Throwable th) {
                            fq.a(th, "GPSLocation", "onLocationChangedLast");
                        }
                        g.this.b(d);
                        g.f(g.this, d);
                    }
                } catch (Throwable th2) {
                    fq.a(th2, "GPSLocation", "onLocationChanged");
                }
            }
        }

        public final void onProviderDisabled(String str) {
            try {
                if (GeocodeSearch.GPS.equalsIgnoreCase(str)) {
                    g.this.d = 0;
                    g.this.x = 0;
                }
            } catch (Throwable th) {
            }
        }

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
            if (i == 0) {
                try {
                    g.this.d = 0;
                    g.this.x = 0;
                } catch (Throwable th) {
                }
            }
        }
    };
    int x = 0;
    GpsStatus y = null;
    public AMapLocation z = null;

    static /* synthetic */ void a(g gVar, AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        if (aMapLocation2 != null && gVar.c.isNeedAddress() && fy.a(aMapLocation, aMapLocation2) < ((float) gVar.g)) {
            fq.a(aMapLocation, aMapLocation2);
        }
    }

    static /* synthetic */ void b(g gVar, AMapLocation aMapLocation) {
        try {
            if (fq.a(aMapLocation.getLatitude(), aMapLocation.getLongitude()) && gVar.c.isOffset()) {
                DPoint a2 = fr.a(gVar.A, new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
                aMapLocation.setLatitude(a2.getLatitude());
                aMapLocation.setLongitude(a2.getLongitude());
            }
        } catch (Throwable th) {
        }
    }

    static /* synthetic */ void c(g gVar, AMapLocation aMapLocation) {
        try {
            if (gVar.x >= 4) {
                aMapLocation.setGpsAccuracyStatus(1);
            } else if (gVar.x == 0) {
                aMapLocation.setGpsAccuracyStatus(-1);
            } else {
                aMapLocation.setGpsAccuracyStatus(0);
            }
        } catch (Throwable th) {
        }
    }

    static /* synthetic */ AMapLocation d(g gVar, AMapLocation aMapLocation) {
        if (!fy.a(aMapLocation) || gVar.C < 3) {
            return aMapLocation;
        }
        if (aMapLocation.getAccuracy() < 0.0f || aMapLocation.getAccuracy() == Float.MAX_VALUE) {
            aMapLocation.setAccuracy(0.0f);
        }
        if (aMapLocation.getSpeed() < 0.0f || aMapLocation.getSpeed() == Float.MAX_VALUE) {
            aMapLocation.setSpeed(0.0f);
        }
        return gVar.f.a(aMapLocation);
    }

    static /* synthetic */ void e(g gVar, AMapLocation aMapLocation) {
        if (fy.a(aMapLocation)) {
            gVar.d = fy.b();
            synchronized (l) {
                k = fy.b();
                j = aMapLocation.clone();
            }
            gVar.C++;
        }
    }

    static /* synthetic */ void f(g gVar, AMapLocation aMapLocation) {
        try {
            if (aMapLocation.getErrorCode() == 0 && !fq.l && !fx.b(gVar.A, "pref", "colde", false)) {
                fq.l = true;
                fx.a(gVar.A, "pref", "colde", true);
            }
        } catch (Throwable th) {
        }
    }

    public g(Context context, Handler handler) {
        this.A = context;
        this.a = handler;
        this.b = (LocationManager) this.A.getSystemService("location");
        this.f = new eu();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00e7, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00e8, code lost:
        r12.r = false;
        com.amap.api.col.sl.fv.a((java.lang.String) null, 2121);
        a(2, 12, r0.getMessage() + "#1201", 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00e7 A[ExcHandler: SecurityException (r0v3 'e' java.lang.SecurityException A[CUSTOM_DECLARE]), Splitter:B:5:0x001f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.amap.api.location.AMapLocationClientOption r13) {
        /*
            r12 = this;
            r10 = 0
            r8 = 0
            r7 = 0
            r12.c = r13
            com.amap.api.location.AMapLocationClientOption r0 = r12.c
            if (r0 != 0) goto L_0x0011
            com.amap.api.location.AMapLocationClientOption r0 = new com.amap.api.location.AMapLocationClientOption
            r0.<init>()
            r12.c = r0
        L_0x0011:
            android.content.Context r0 = r12.A     // Catch:{ Throwable -> 0x0129 }
            java.lang.String r1 = "pref"
            java.lang.String r2 = "lagt"
            long r4 = p     // Catch:{ Throwable -> 0x0129 }
            long r0 = com.amap.api.col.sl.fx.b(r0, r1, r2, r4)     // Catch:{ Throwable -> 0x0129 }
            p = r0     // Catch:{ Throwable -> 0x0129 }
        L_0x001f:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            long r2 = k     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            long r0 = r0 - r2
            r2 = 5000(0x1388, double:2.4703E-320)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto L_0x004f
            com.amap.api.location.AMapLocation r0 = j     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            boolean r0 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r0 == 0) goto L_0x004f
            com.amap.api.location.AMapLocationClientOption r0 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            boolean r0 = r0.isMockEnable()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r0 != 0) goto L_0x0044
            com.amap.api.location.AMapLocation r0 = j     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            boolean r0 = r0.isMock()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r0 != 0) goto L_0x004f
        L_0x0044:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r12.d = r0     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            com.amap.api.location.AMapLocation r0 = j     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r12.b(r0)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
        L_0x004f:
            r0 = 1
            r12.r = r0     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            android.os.Looper r6 = android.os.Looper.myLooper()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r6 != 0) goto L_0x005e
            android.content.Context r0 = r12.A     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            android.os.Looper r6 = r0.getMainLooper()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
        L_0x005e:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r12.B = r0     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            android.location.LocationManager r0 = r12.b     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            boolean r0 = a(r0)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r0 == 0) goto L_0x0110
            long r0 = com.amap.api.col.sl.fy.a()     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            long r2 = p     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            long r0 = r0 - r2
            r2 = 259200000(0xf731400, double:1.280618154E-315)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0095
            android.location.LocationManager r0 = r12.b     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            java.lang.String r1 = "gps"
            java.lang.String r2 = "force_xtra_injection"
            r3 = 0
            r0.sendExtraCommand(r1, r2, r3)     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            long r0 = com.amap.api.col.sl.fy.a()     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            p = r0     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            android.content.Context r0 = r12.A     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            java.lang.String r1 = "pref"
            java.lang.String r2 = "lagt"
            long r4 = p     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
            com.amap.api.col.sl.fx.a(r0, r1, r2, r4)     // Catch:{ Throwable -> 0x0126, SecurityException -> 0x00e7 }
        L_0x0095:
            com.amap.api.location.AMapLocationClientOption r0 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r0 = r0.getLocationMode()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r1 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Device_Sensors     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            boolean r0 = r0.equals(r1)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            if (r0 == 0) goto L_0x00da
            com.amap.api.location.AMapLocationClientOption r0 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            float r0 = r0.getDeviceModeDistanceFilter()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            int r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r0 <= 0) goto L_0x00da
            android.location.LocationManager r0 = r12.b     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            java.lang.String r1 = "gps"
            com.amap.api.location.AMapLocationClientOption r2 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            long r2 = r2.getInterval()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            com.amap.api.location.AMapLocationClientOption r4 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            float r4 = r4.getDeviceModeDistanceFilter()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            android.location.LocationListener r5 = r12.w     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r0.requestLocationUpdates(r1, r2, r4, r5, r6)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
        L_0x00c2:
            android.location.LocationManager r0 = r12.b     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            android.location.GpsStatus$Listener r1 = r12.D     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r0.addGpsStatusListener(r1)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r1 = 8
            r2 = 14
            java.lang.String r3 = "no enough satellites#1401"
            com.amap.api.location.AMapLocationClientOption r0 = r12.c     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            long r4 = r0.getHttpTimeOut()     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r0 = r12
            r0.a(r1, r2, r3, r4)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
        L_0x00d9:
            return
        L_0x00da:
            android.location.LocationManager r0 = r12.b     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            java.lang.String r1 = "gps"
            r2 = 900(0x384, double:4.447E-321)
            r4 = 0
            android.location.LocationListener r5 = r12.w     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            r0.requestLocationUpdates(r1, r2, r4, r5, r6)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            goto L_0x00c2
        L_0x00e7:
            r0 = move-exception
            r1 = 0
            r12.r = r1
            r1 = 2121(0x849, float:2.972E-42)
            com.amap.api.col.sl.fv.a(r8, r1)
            r1 = 2
            r2 = 12
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = "#1201"
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r3 = r0.toString()
            r0 = r12
            r4 = r10
            r0.a(r1, r2, r3, r4)
            goto L_0x00d9
        L_0x0110:
            r1 = 8
            r2 = 14
            java.lang.String r3 = "no gps provider#1402"
            r4 = 0
            r0 = r12
            r0.a(r1, r2, r3, r4)     // Catch:{ SecurityException -> 0x00e7, Throwable -> 0x011d }
            goto L_0x00d9
        L_0x011d:
            r0 = move-exception
            java.lang.String r1 = "GPSLocation"
            java.lang.String r2 = "requestLocationUpdates part2"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x00d9
        L_0x0126:
            r0 = move-exception
            goto L_0x0095
        L_0x0129:
            r0 = move-exception
            goto L_0x001f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.g.a(com.amap.api.location.AMapLocationClientOption):void");
    }

    public final void b(AMapLocationClientOption aMapLocationClientOption) {
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        this.c = aMapLocationClientOption;
        if (!(this.c.getLocationMode() == AMapLocationMode.Device_Sensors || this.a == null)) {
            this.a.removeMessages(8);
        }
        if (this.q != this.c.getGeoLanguage()) {
            synchronized (this.o) {
                this.z = null;
            }
        }
        this.q = this.c.getGeoLanguage();
    }

    public final void a() {
        if (this.b != null) {
            try {
                if (this.w != null) {
                    this.b.removeUpdates(this.w);
                }
            } catch (Throwable th) {
            }
            try {
                if (this.D != null) {
                    this.b.removeGpsStatusListener(this.D);
                }
            } catch (Throwable th2) {
            }
            try {
                if (this.a != null) {
                    this.a.removeMessages(8);
                }
            } catch (Throwable th3) {
            }
            this.x = 0;
            this.B = 0;
            this.u = 0;
            this.d = 0;
            this.C = 0;
            this.v = 0;
            this.f.a();
            this.i = null;
            this.m = 0;
            this.n = 0.0f;
            this.E = null;
        }
    }

    private static boolean a(LocationManager locationManager) {
        try {
            if (s) {
                return t;
            }
            List allProviders = locationManager.getAllProviders();
            if (allProviders != null && allProviders.size() > 0) {
                t = allProviders.contains(GeocodeSearch.GPS);
            }
            s = true;
            return t;
        } catch (Throwable th) {
            return t;
        }
    }

    private void a(int i2, int i3, String str, long j2) {
        if (this.a != null && this.c.getLocationMode() == AMapLocationMode.Device_Sensors) {
            Message obtain = Message.obtain();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setProvider(GeocodeSearch.GPS);
            aMapLocation.setErrorCode(i3);
            aMapLocation.setLocationDetail(str);
            aMapLocation.setLocationType(1);
            obtain.obj = aMapLocation;
            obtain.what = i2;
            this.a.sendMessageDelayed(obtain, j2);
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(AMapLocation aMapLocation) {
        if (fy.a(aMapLocation) && this.a != null && this.c.isNeedAddress()) {
            long b2 = fy.b();
            if (this.c.getInterval() <= 8000 || b2 - this.u > this.c.getInterval() - 8000) {
                Bundle bundle = new Bundle();
                bundle.putDouble("lat", aMapLocation.getLatitude());
                bundle.putDouble("lon", aMapLocation.getLongitude());
                Message obtain = Message.obtain();
                obtain.setData(bundle);
                obtain.what = 5;
                synchronized (this.o) {
                    if (this.z == null) {
                        this.a.sendMessage(obtain);
                    } else if (fy.a(aMapLocation, this.z) > ((float) this.h)) {
                        this.a.sendMessage(obtain);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(AMapLocation aMapLocation) {
        if (aMapLocation.getErrorCode() == 15 && !AMapLocationMode.Device_Sensors.equals(this.c.getLocationMode())) {
            return;
        }
        if (this.c.getLocationMode().equals(AMapLocationMode.Device_Sensors) && this.c.getDeviceModeDistanceFilter() > 0.0f) {
            c(aMapLocation);
        } else if (fy.b() - this.u >= this.c.getInterval() - 200) {
            this.u = fy.b();
            c(aMapLocation);
        }
    }

    private void c(AMapLocation aMapLocation) {
        if (this.a != null) {
            Message obtain = Message.obtain();
            obtain.obj = aMapLocation;
            obtain.what = 2;
            this.a.sendMessage(obtain);
        }
    }

    public final boolean b() {
        if (fy.b() - this.d > 2800) {
            return false;
        }
        return true;
    }

    public final void a(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                this.g = bundle.getInt("lMaxGeoDis");
                this.h = bundle.getInt("lMinGeoDis");
                AMapLocation aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                if (!TextUtils.isEmpty(aMapLocation.getAdCode())) {
                    synchronized (this.o) {
                        this.z = aMapLocation;
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "GPSLocation", "setLastGeoLocation");
            }
        }
    }

    public final void c() {
        this.v = 0;
    }

    public final AMapLocation a(AMapLocation aMapLocation, String str) {
        long j2 = 30000;
        if (this.i == null) {
            return aMapLocation;
        }
        if (!this.c.isMockEnable() && this.i.isMock()) {
            return aMapLocation;
        }
        float speed = this.i.getSpeed();
        if (this.m > 0 && this.m < 8 && speed == 0.0f) {
            speed = this.n / ((float) this.m);
        }
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
            if (aMapLocation.getAccuracy() < 200.0f) {
                this.G++;
                if (this.E == null && this.G >= 2) {
                    this.F = true;
                }
                j2 = speed > 5.0f ? FileTracerConfig.DEF_FLUSH_INTERVAL : IPC.LogoutAsyncTimeout;
            } else {
                if (!TextUtils.isEmpty(this.E)) {
                    this.F = false;
                    this.G = 0;
                }
                j2 = speed > 5.0f ? IPC.LogoutAsyncTellServerTimeout : 30000;
            }
        }
        if (fy.b() - this.d < j2) {
            if (this.E == null && this.G >= 2) {
                this.E = str;
            }
            return this.i.clone();
        } else if (this.F && a(str)) {
            return this.i.clone();
        } else {
            this.E = null;
            this.G = 0;
            this.i = null;
            this.m = 0;
            this.n = 0.0f;
            return aMapLocation;
        }
    }

    private boolean a(String str) {
        try {
            ArrayList e2 = fy.e(str);
            ArrayList e3 = fy.e(this.E);
            if (e2 == null || e2.size() < 8 || e3 == null || e3.size() < 8) {
                return false;
            }
            return fy.a(this.E, str);
        } catch (Throwable th) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    public final int d() {
        if (this.b == null || !a(this.b)) {
            return 1;
        }
        if (VERSION.SDK_INT >= 19) {
            int i2 = Secure.getInt(this.A.getContentResolver(), "location_mode", 0);
            if (i2 == 0) {
                return 2;
            }
            if (i2 == 2) {
                return 3;
            }
        } else if (!this.b.isProviderEnabled(GeocodeSearch.GPS)) {
            return 2;
        }
        return !this.r ? 4 : 0;
    }

    public final int e() {
        return this.x;
    }
}
