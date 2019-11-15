package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* compiled from: AMapLocationClient */
public class ev {
    Context a;
    Inner_3dMap_locationManagerBase b = null;
    Object c = null;
    boolean d = false;
    Object e = null;
    fx f = null;

    public ev(Context context) {
        try {
            this.f = it.a();
        } catch (Throwable th) {
        }
        a(context);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004b, code lost:
        r5.d = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:0x000a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x000b, code lost:
        com.amap.api.mapcore.util.jd.a(r0, "AMapLocationClient", "AMapLocationClient 1");
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:1:0x0002, B:9:0x001b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(android.content.Context r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L_0x0013
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ Throwable -> 0x000a }
            java.lang.String r1 = "Context参数不能为null"
            r0.<init>(r1)     // Catch:{ Throwable -> 0x000a }
            throw r0     // Catch:{ Throwable -> 0x000a }
        L_0x000a:
            r0 = move-exception
            java.lang.String r1 = "AMapLocationClient"
            java.lang.String r2 = "AMapLocationClient 1"
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
        L_0x0012:
            return
        L_0x0013:
            android.content.Context r0 = r6.getApplicationContext()     // Catch:{ Throwable -> 0x000a }
            r5.a = r0     // Catch:{ Throwable -> 0x000a }
            java.lang.String r0 = "com.amap.api.location.AMapLocationClient"
            java.lang.Class r1 = java.lang.Class.forName(r0)     // Catch:{ Throwable -> 0x004a }
            android.content.ComponentName r2 = new android.content.ComponentName     // Catch:{ Throwable -> 0x004a }
            android.content.Context r0 = r5.a     // Catch:{ Throwable -> 0x004a }
            java.lang.String r3 = "com.amap.api.location.APSService"
            r2.<init>(r0, r3)     // Catch:{ Throwable -> 0x004a }
            r0 = 0
            android.content.Context r3 = r5.a     // Catch:{ Throwable -> 0x0058 }
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch:{ Throwable -> 0x0058 }
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.ServiceInfo r0 = r3.getServiceInfo(r2, r4)     // Catch:{ Throwable -> 0x0058 }
        L_0x0035:
            if (r1 == 0) goto L_0x003c
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r5.d = r0     // Catch:{ Throwable -> 0x004a }
        L_0x003c:
            boolean r0 = r5.d     // Catch:{ Throwable -> 0x000a }
            if (r0 == 0) goto L_0x004f
            com.amap.api.location.AMapLocationClient r0 = new com.amap.api.location.AMapLocationClient     // Catch:{ Throwable -> 0x000a }
            android.content.Context r1 = r5.a     // Catch:{ Throwable -> 0x000a }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x000a }
            r5.c = r0     // Catch:{ Throwable -> 0x000a }
            goto L_0x0012
        L_0x004a:
            r0 = move-exception
            r0 = 0
            r5.d = r0     // Catch:{ Throwable -> 0x000a }
            goto L_0x003c
        L_0x004f:
            android.content.Context r0 = r5.a     // Catch:{ Throwable -> 0x000a }
            com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase r0 = r5.b(r0)     // Catch:{ Throwable -> 0x000a }
            r5.b = r0     // Catch:{ Throwable -> 0x000a }
            goto L_0x0012
        L_0x0058:
            r2 = move-exception
            goto L_0x0035
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ev.a(android.content.Context):void");
    }

    private Inner_3dMap_locationManagerBase b(Context context) {
        Inner_3dMap_locationManagerBase inVar;
        try {
            inVar = (Inner_3dMap_locationManagerBase) ha.a(context, this.f, fy.c("YY29tLmFtYXAuYXBpLndyYXBwZXIuSW5uZXJfM2RNYXBfbG9jYXRpb25NYW5hZ2VyV3JhcHBlcg=="), in.class, new Class[]{Context.class}, new Object[]{context});
        } catch (Throwable th) {
            inVar = new in(context);
        }
        return inVar == null ? new in(context) : inVar;
    }

    public void a() {
        try {
            if (this.d) {
                ((AMapLocationClient) this.c).startLocation();
            } else {
                this.b.startLocation();
            }
        } catch (Throwable th) {
            jd.a(th, "AMapLocationClient", "startLocation");
        }
    }

    public void a(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        if (inner_3dMap_locationListener == null) {
            try {
                throw new IllegalArgumentException("listener参数不能为null");
            } catch (Throwable th) {
                jd.a(th, "AMapLocationClient", "setLocationListener");
            }
        } else if (this.d) {
            ii.a(this.c, inner_3dMap_locationListener);
        } else {
            this.b.setLocationListener(inner_3dMap_locationListener);
        }
    }

    public void a(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        if (inner_3dMap_locationOption == null) {
            try {
                throw new IllegalArgumentException("LocationManagerOption参数不能为null");
            } catch (Throwable th) {
                jd.a(th, "AMapLocationClient", "setLocationOption");
            }
        } else if (this.d) {
            AMapLocationClientOption a2 = ii.a();
            ii.a(a2, inner_3dMap_locationOption);
            ((AMapLocationClient) this.c).setLocationOption(a2);
        } else {
            this.b.setLocationOption(inner_3dMap_locationOption);
        }
    }

    public void b() {
        try {
            if (this.d) {
                ((AMapLocationClient) this.c).stopLocation();
            } else {
                this.b.stopLocation();
            }
        } catch (Throwable th) {
            jd.a(th, "AMapLocationClient", "stopLocation");
        }
    }

    public void c() {
        try {
            if (this.d) {
                ((AMapLocationClient) this.c).onDestroy();
            } else {
                this.b.destroy();
            }
        } catch (Throwable th) {
            jd.a(th, "AMapLocationClient", "onDestroy");
        }
    }
}
