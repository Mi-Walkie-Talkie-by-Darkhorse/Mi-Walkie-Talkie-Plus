package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MapLocationManager */
public class in implements Inner_3dMap_locationManagerBase {
    Context a = null;
    ArrayList<Inner_3dMap_locationListener> b = new ArrayList<>();
    Object c = new Object();
    Handler d = null;
    a e = null;
    Handler f = null;
    Inner_3dMap_locationOption g = new Inner_3dMap_locationOption();
    iq h = null;
    Inner_3dMap_Enum_LocationMode i = Inner_3dMap_Enum_LocationMode.Hight_Accuracy;
    boolean j = false;

    /* compiled from: MapLocationManager */
    static class a extends HandlerThread {
        in a;

        public a(String str, in inVar) {
            super(str);
            this.a = inVar;
        }

        /* access modifiers changed from: protected */
        public final void onLooperPrepared() {
            try {
                this.a.h = new iq(this.a.a, this.a.d);
                super.onLooperPrepared();
            } catch (Throwable th) {
            }
        }
    }

    public in(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context参数不能为null");
        }
        this.a = context.getApplicationContext();
        e();
    }

    private Handler a(Looper looper) {
        Handler handler;
        synchronized (this.c) {
            this.f = new io(looper, this);
            handler = this.f;
        }
        return handler;
    }

    private void a(int i2) {
        synchronized (this.c) {
            if (this.f != null) {
                this.f.removeMessages(i2);
            }
        }
    }

    private void a(int i2, Object obj, long j2) {
        synchronized (this.c) {
            if (this.f != null) {
                Message obtain = Message.obtain();
                obtain.what = i2;
                obtain.obj = obj;
                this.f.sendMessageDelayed(obtain, j2);
            }
        }
    }

    private void e() {
        try {
            if (Looper.myLooper() == null) {
                this.d = new ip(this.a.getMainLooper(), this);
            } else {
                this.d = new ip(this);
            }
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "initResultHandler");
        }
        try {
            this.e = new a("locaitonClientActionThread", this);
            this.e.setPriority(5);
            this.e.start();
            this.f = a(this.e.getLooper());
        } catch (Throwable th2) {
            jd.a(th2, "LocationClientManager", "initActionThreadAndActionHandler");
        }
    }

    private void f() {
        synchronized (this.c) {
            if (this.f != null) {
                this.f.removeCallbacksAndMessages(null);
            }
            this.f = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a() {
        try {
            if (!this.j) {
                this.j = true;
                a(1005, null, 0);
            }
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "doStartLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(Inner_3dMap_location inner_3dMap_location) {
        try {
            if (this.j) {
                if (!GeocodeSearch.GPS.equalsIgnoreCase(inner_3dMap_location.getProvider())) {
                    inner_3dMap_location.setProvider("lbs");
                }
                inner_3dMap_location.setAltitude(jg.b(inner_3dMap_location.getAltitude()));
                inner_3dMap_location.setBearing(jg.a(inner_3dMap_location.getBearing()));
                inner_3dMap_location.setSpeed(jg.a(inner_3dMap_location.getSpeed()));
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    try {
                        ((Inner_3dMap_locationListener) it.next()).onLocationChanged(inner_3dMap_location);
                    } catch (Throwable th) {
                    }
                }
            }
            if (this.g.isOnceLocation()) {
                c();
            }
        } catch (Throwable th2) {
            jd.a(th2, "LocationClientManger", "callBackLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        if (inner_3dMap_locationListener == null) {
            try {
                throw new IllegalArgumentException("listener参数不能为null");
            } catch (Throwable th) {
                jd.a(th, "LocationClientManager", "doSetLocationListener");
            }
        } else {
            if (this.b == null) {
                this.b = new ArrayList<>();
            }
            if (!this.b.contains(inner_3dMap_locationListener)) {
                this.b.add(inner_3dMap_locationListener);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.g = inner_3dMap_locationOption;
        if (this.g == null) {
            this.g = new Inner_3dMap_locationOption();
        }
        if (this.h != null) {
            this.h.a(this.g);
        }
        if (this.j && !this.i.equals(inner_3dMap_locationOption.getLocationMode())) {
            c();
            a();
        }
        this.i = this.g.getLocationMode();
    }

    /* access modifiers changed from: 0000 */
    public final void b() {
        long j2 = 1000;
        try {
            if (this.h != null) {
                this.h.a();
            }
            if (!this.g.isOnceLocation()) {
                if (this.g.getInterval() >= 1000) {
                    j2 = this.g.getInterval();
                }
                a(1005, null, j2);
            }
        } catch (Throwable th) {
            if (!this.g.isOnceLocation()) {
                if (this.g.getInterval() >= 1000) {
                    j2 = this.g.getInterval();
                }
                a(1005, null, j2);
            }
            throw th;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void b(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        if (inner_3dMap_locationListener != null) {
            try {
                if (!this.b.isEmpty() && this.b.contains(inner_3dMap_locationListener)) {
                    this.b.remove(inner_3dMap_locationListener);
                }
            } catch (Throwable th) {
                jd.a(th, "LocationClientManager", "doUnregisterListener");
                return;
            }
        }
        if (this.b.isEmpty()) {
            c();
        }
    }

    /* access modifiers changed from: 0000 */
    public final void c() {
        try {
            this.j = false;
            a(1004);
            a(1005);
            if (this.h != null) {
                this.h.c();
            }
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "doStopLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void d() {
        c();
        if (this.h != null) {
            this.h.d();
        }
        f();
        if (this.e != null) {
            if (VERSION.SDK_INT >= 18) {
                try {
                    je.a((Object) this.e, HandlerThread.class, "quitSafely", new Object[0]);
                } catch (Throwable th) {
                    this.e.quit();
                }
            } else {
                this.e.quit();
            }
        }
        this.e = null;
    }

    public void destroy() {
        try {
            a(1007, null, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "stopLocation");
        }
    }

    public void setLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            a(1002, inner_3dMap_locationListener, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "setLocationListener");
        }
    }

    public void setLocationOption(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        try {
            a(1001, inner_3dMap_locationOption, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "setLocationOption");
        }
    }

    public void startLocation() {
        try {
            a(1004, null, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "startLocation");
        }
    }

    public void stopLocation() {
        try {
            a(1006, null, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "stopLocation");
        }
    }

    public void unRegisterLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            a(1006, inner_3dMap_locationListener, 0);
        } catch (Throwable th) {
            jd.a(th, "LocationClientManager", "stopLocation");
        }
    }
}
