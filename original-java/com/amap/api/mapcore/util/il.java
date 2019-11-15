package com.amap.api.mapcore.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;

/* compiled from: MapGPSLocation */
public final class il {
    Context a;
    LocationManager b;
    volatile long c = 0;
    volatile boolean d = false;
    boolean e = false;
    volatile Inner_3dMap_location f = null;
    Object g = null;
    boolean h = false;
    LocationListener i = new LocationListener() {
        public final void onLocationChanged(Location location) {
            if (location != null) {
                try {
                    Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location(location);
                    inner_3dMap_location.setLocationType(1);
                    Bundle extras = location.getExtras();
                    int i = 0;
                    if (extras != null) {
                        i = extras.getInt("satellites");
                    }
                    inner_3dMap_location.setSatellites(i);
                    il.this.f = inner_3dMap_location;
                    il.this.c = jg.b();
                    il.this.d = true;
                } catch (Throwable th) {
                    jd.a(th, "MAPGPSLocation", "onLocationChanged");
                }
            }
        }

        public final void onProviderDisabled(String str) {
            try {
                if (GeocodeSearch.GPS.equals(str)) {
                    il.this.d = false;
                }
            } catch (Throwable th) {
                jd.a(th, "MAPGPSLocation", "onProviderDisabled");
            }
        }

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    public il(Context context) {
        if (context != null) {
            this.a = context;
            e();
            try {
                if (this.g == null) {
                    if (this.h) {
                        this.g = Class.forName("com.amap.api.maps.CoordinateConverter").getConstructor(new Class[]{Context.class}).newInstance(new Object[]{context});
                    } else {
                        this.g = Class.forName("com.amap.api.maps2d.CoordinateConverter").getConstructor(new Class[0]).newInstance(new Object[0]);
                    }
                }
            } catch (Throwable th) {
            }
            if (this.b == null) {
                this.b = (LocationManager) this.a.getSystemService("location");
            }
        }
    }

    private void e() {
        try {
            if (Class.forName("com.amap.api.maps.CoordinateConverter") != null) {
                this.h = true;
            }
        } catch (Throwable th) {
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0030 A[ExcHandler: SecurityException (e java.lang.SecurityException), Splitter:B:0:0x0000] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f() {
        /*
            r7 = this;
            android.os.Looper r6 = android.os.Looper.myLooper()     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            if (r6 != 0) goto L_0x000c
            android.content.Context r0 = r7.a     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            android.os.Looper r6 = r0.getMainLooper()     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
        L_0x000c:
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            r0.<init>()     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            android.location.LocationManager r1 = r7.b     // Catch:{ Throwable -> 0x0032, SecurityException -> 0x0030 }
            java.lang.String r2 = "gps"
            java.lang.String r3 = "force_xtra_injection"
            r1.sendExtraCommand(r2, r3, r0)     // Catch:{ Throwable -> 0x0032, SecurityException -> 0x0030 }
        L_0x001a:
            android.location.LocationManager r0 = r7.b     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            java.lang.String r1 = "gps"
            r2 = 800(0x320, double:3.953E-321)
            r4 = 0
            android.location.LocationListener r5 = r7.i     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
            r0.requestLocationUpdates(r1, r2, r4, r5, r6)     // Catch:{ SecurityException -> 0x0030, Throwable -> 0x0027 }
        L_0x0026:
            return
        L_0x0027:
            r0 = move-exception
            java.lang.String r1 = "MAPGPSLocation"
            java.lang.String r2 = "requestLocationUpdates"
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
            goto L_0x0026
        L_0x0030:
            r0 = move-exception
            goto L_0x0026
        L_0x0032:
            r0 = move-exception
            goto L_0x001a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.il.f():void");
    }

    private void g() {
        this.d = false;
        this.c = 0;
        this.f = null;
    }

    public final void a() {
        if (!this.e) {
            f();
            this.e = true;
        }
    }

    public final void b() {
        this.e = false;
        g();
        if (this.b != null && this.i != null) {
            this.b.removeUpdates(this.i);
        }
    }

    public final boolean c() {
        if (this.d) {
            if (jg.b() - this.c <= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                return true;
            }
            this.f = null;
        }
        return false;
    }

    public final Inner_3dMap_location d() {
        Object a2;
        Object newInstance;
        if (this.f == null) {
            return null;
        }
        Inner_3dMap_location clone = this.f.clone();
        if (clone != null && clone.getErrorCode() == 0) {
            try {
                if (this.g != null && jd.a(clone.getLatitude(), clone.getLongitude())) {
                    Long.valueOf(System.currentTimeMillis());
                    Object[] objArr = {"GPS"};
                    Class[] clsArr = {String.class};
                    if (this.h) {
                        a2 = je.a("com.amap.api.maps.CoordinateConverter$CoordType", "valueOf", objArr, (Class<?>[]) clsArr);
                        newInstance = Class.forName("com.amap.api.maps.model.LatLng").getConstructor(new Class[]{Double.TYPE, Double.TYPE}).newInstance(new Object[]{Double.valueOf(clone.getLatitude()), Double.valueOf(clone.getLongitude())});
                    } else {
                        a2 = je.a("com.amap.api.maps2d.CoordinateConverter$CoordType", "valueOf", objArr, (Class<?>[]) clsArr);
                        newInstance = Class.forName("com.amap.api.maps2d.model.LatLng").getConstructor(new Class[]{Double.TYPE, Double.TYPE}).newInstance(new Object[]{Double.valueOf(clone.getLatitude()), Double.valueOf(clone.getLongitude())});
                    }
                    je.a(this.g, "coord", newInstance);
                    je.a(this.g, "from", a2);
                    Object a3 = je.a(this.g, "convert", new Object[0]);
                    double doubleValue = ((Double) a3.getClass().getDeclaredField("latitude").get(a3)).doubleValue();
                    double doubleValue2 = ((Double) a3.getClass().getDeclaredField("longitude").get(a3)).doubleValue();
                    clone.setLatitude(doubleValue);
                    clone.setLongitude(doubleValue2);
                }
            } catch (Throwable th) {
            }
        }
        return clone;
    }
}
