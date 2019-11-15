package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MapLocationService */
public final class iq {
    private static int k = 200;
    private static boolean l = true;
    Context a = null;
    il b = null;
    ir c = null;
    b d = null;
    Handler e = null;
    Handler f = null;
    boolean g = false;
    boolean h = false;
    Inner_3dMap_locationOption i = null;
    Object j = new Object();
    private JSONArray m = null;

    /* compiled from: MapLocationService */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    iq.this.b();
                    return;
                default:
                    return;
            }
        }
    }

    /* compiled from: MapLocationService */
    class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        /* access modifiers changed from: protected */
        public final void onLooperPrepared() {
            super.onLooperPrepared();
        }
    }

    public iq(Context context, Handler handler) {
        if (context == null) {
            try {
                throw new IllegalArgumentException("Context参数不能为null");
            } catch (Throwable th) {
                jd.a(th, "LocationService", "<init>");
            }
        } else {
            this.a = context.getApplicationContext();
            this.f = handler;
            this.i = new Inner_3dMap_locationOption();
            e();
            this.d = new b("locServiceAction");
            this.d.setPriority(5);
            this.d.start();
            this.e = new a(this.d.getLooper());
        }
    }

    private void a(Inner_3dMap_location inner_3dMap_location) {
        try {
            if (l && inner_3dMap_location != null && inner_3dMap_location.getErrorCode() == 0 && inner_3dMap_location.getLocationType() == 1) {
                if (this.m == null) {
                    this.m = new JSONArray();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lon", inner_3dMap_location.getLongitude());
                jSONObject.put("lat", inner_3dMap_location.getLatitude());
                jSONObject.put("type", 0);
                jSONObject.put("timestamp", jg.a());
                this.m = this.m.put(jSONObject);
                if (this.m.length() >= k) {
                    g();
                }
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "recordOfflineLocLog");
        }
    }

    private void e() {
        try {
            if (this.i == null) {
                this.i = new Inner_3dMap_locationOption();
            }
            if (!this.h) {
                this.b = new il(this.a);
                this.c = new ir(this.a);
                this.c.a(this.i);
                f();
                this.h = true;
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "init");
        }
    }

    private void f() {
        try {
            l = jf.b(this.a, "maploc", "ue");
            int a2 = jf.a(this.a, "maploc", "opn");
            k = a2;
            if (a2 > 500) {
                k = 500;
            }
            if (k < 30) {
                k = 30;
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "getSPConfig");
        }
    }

    private synchronized void g() {
        try {
            if (this.m != null && this.m.length() > 0) {
                ia.a(new hz(this.a, jd.b(), this.m.toString()), this.a);
                this.m = null;
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "writeOfflineLog");
        }
        return;
    }

    private void h() {
        synchronized (this.j) {
            if (this.e != null) {
                this.e.removeCallbacksAndMessages(null);
            }
            this.e = null;
        }
    }

    private void i() {
        synchronized (this.j) {
            if (this.e != null) {
                this.e.removeMessages(1);
            }
        }
    }

    public final void a() {
        try {
            e();
            if (!this.i.getLocationMode().equals(Inner_3dMap_Enum_LocationMode.Battery_Saving) && !this.g) {
                this.g = true;
                this.b.a();
            }
            if (this.e != null) {
                this.e.sendEmptyMessage(1);
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "getLocation");
        }
    }

    public final void a(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.i = inner_3dMap_locationOption;
        if (this.i == null) {
            this.i = new Inner_3dMap_locationOption();
        }
        if (this.c != null) {
            this.c.a(inner_3dMap_locationOption);
        }
    }

    /* access modifiers changed from: 0000 */
    public final void b() {
        Inner_3dMap_location inner_3dMap_location = null;
        try {
            if (this.i.getLocationMode().equals(Inner_3dMap_Enum_LocationMode.Battery_Saving) && this.g) {
                this.b.b();
                this.g = false;
            }
            if (this.b.c()) {
                inner_3dMap_location = this.b.d();
            } else if (!this.i.getLocationMode().equals(Inner_3dMap_Enum_LocationMode.Device_Sensors)) {
                inner_3dMap_location = this.c.a();
            }
            if (!(this.f == null || inner_3dMap_location == null)) {
                Message obtain = Message.obtain();
                obtain.obj = inner_3dMap_location;
                obtain.what = 1;
                this.f.sendMessage(obtain);
            }
            a(inner_3dMap_location);
        } catch (Throwable th) {
            jd.a(th, "LocationService", "doGetLocation");
        }
    }

    public final void c() {
        this.g = false;
        try {
            i();
            if (this.b != null) {
                this.b.b();
            }
        } catch (Throwable th) {
            jd.a(th, "LocationService", "stopLocation");
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d() {
        /*
            r4 = this;
            r4.c()     // Catch:{ Throwable -> 0x002f }
            r4.h()     // Catch:{ Throwable -> 0x002f }
            com.amap.api.mapcore.util.iq$b r0 = r4.d     // Catch:{ Throwable -> 0x002f }
            if (r0 == 0) goto L_0x001c
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ Throwable -> 0x002f }
            r1 = 18
            if (r0 < r1) goto L_0x0038
            com.amap.api.mapcore.util.iq$b r0 = r4.d     // Catch:{ Throwable -> 0x0028 }
            java.lang.Class<android.os.HandlerThread> r1 = android.os.HandlerThread.class
            java.lang.String r2 = "quitSafely"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0028 }
            com.amap.api.mapcore.util.je.a(r0, r1, r2, r3)     // Catch:{ Throwable -> 0x0028 }
        L_0x001c:
            r0 = 0
            r4.d = r0     // Catch:{ Throwable -> 0x002f }
            com.amap.api.mapcore.util.ir r0 = r4.c     // Catch:{ Throwable -> 0x002f }
            r0.b()     // Catch:{ Throwable -> 0x002f }
            r4.g()     // Catch:{ Throwable -> 0x002f }
        L_0x0027:
            return
        L_0x0028:
            r0 = move-exception
            com.amap.api.mapcore.util.iq$b r0 = r4.d     // Catch:{ Throwable -> 0x002f }
            r0.quit()     // Catch:{ Throwable -> 0x002f }
            goto L_0x001c
        L_0x002f:
            r0 = move-exception
            java.lang.String r1 = "LocationService"
            java.lang.String r2 = "destroy"
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
            goto L_0x0027
        L_0x0038:
            com.amap.api.mapcore.util.iq$b r0 = r4.d     // Catch:{ Throwable -> 0x002f }
            r0.quit()     // Catch:{ Throwable -> 0x002f }
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.iq.d():void");
    }
}
