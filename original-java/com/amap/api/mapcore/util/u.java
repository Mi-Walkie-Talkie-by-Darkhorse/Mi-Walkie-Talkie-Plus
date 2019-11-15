package com.amap.api.mapcore.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;
import com.amap.api.maps.model.Marker;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: SensorEventHelper */
public class u implements SensorEventListener {
    private SensorManager a;
    private Sensor b;
    private long c = 0;
    private final int d = 100;
    private float e;
    private Context f;
    private l g;
    private Marker h;
    private boolean i = true;

    public u(Context context, l lVar) {
        this.f = context.getApplicationContext();
        this.g = lVar;
        try {
            this.a = (SensorManager) context.getSystemService("sensor");
            this.b = this.a.getDefaultSensor(3);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a() {
        if (this.a != null && this.b != null) {
            this.a.registerListener(this, this.b, 3);
        }
    }

    public void b() {
        if (this.a != null && this.b != null) {
            this.a.unregisterListener(this, this.b);
        }
    }

    public void a(Marker marker) {
        this.h = marker;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onSensorChanged(android.hardware.SensorEvent r6) {
        /*
            r5 = this;
            r4 = 1135869952(0x43b40000, float:360.0)
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x007b }
            long r2 = r5.c     // Catch:{ Throwable -> 0x007b }
            long r0 = r0 - r2
            r2 = 100
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x0010
        L_0x000f:
            return
        L_0x0010:
            com.amap.api.mapcore.util.l r0 = r5.g     // Catch:{ Throwable -> 0x007b }
            com.autonavi.ae.gmap.GLMapEngine r0 = r0.a()     // Catch:{ Throwable -> 0x007b }
            if (r0 == 0) goto L_0x0024
            com.amap.api.mapcore.util.l r0 = r5.g     // Catch:{ Throwable -> 0x007b }
            com.autonavi.ae.gmap.GLMapEngine r0 = r0.a()     // Catch:{ Throwable -> 0x007b }
            int r0 = r0.getAnimateionsCount()     // Catch:{ Throwable -> 0x007b }
            if (r0 > 0) goto L_0x000f
        L_0x0024:
            android.hardware.Sensor r0 = r6.sensor     // Catch:{ Throwable -> 0x007b }
            int r0 = r0.getType()     // Catch:{ Throwable -> 0x007b }
            switch(r0) {
                case 3: goto L_0x002e;
                default: goto L_0x002d;
            }     // Catch:{ Throwable -> 0x007b }
        L_0x002d:
            goto L_0x000f
        L_0x002e:
            float[] r0 = r6.values     // Catch:{ Throwable -> 0x007b }
            r1 = 0
            r0 = r0[r1]     // Catch:{ Throwable -> 0x007b }
            android.content.Context r1 = r5.f     // Catch:{ Throwable -> 0x007b }
            int r1 = a(r1)     // Catch:{ Throwable -> 0x007b }
            float r1 = (float) r1     // Catch:{ Throwable -> 0x007b }
            float r0 = r0 + r1
            float r0 = r0 % r4
            r1 = 1127481344(0x43340000, float:180.0)
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 <= 0) goto L_0x0080
            float r0 = r0 - r4
        L_0x0043:
            float r1 = r5.e     // Catch:{ Throwable -> 0x007b }
            float r1 = r1 - r0
            float r1 = java.lang.Math.abs(r1)     // Catch:{ Throwable -> 0x007b }
            r2 = 1077936128(0x40400000, float:3.0)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 < 0) goto L_0x000f
            boolean r1 = java.lang.Float.isNaN(r0)     // Catch:{ Throwable -> 0x007b }
            if (r1 == 0) goto L_0x0057
            r0 = 0
        L_0x0057:
            r5.e = r0     // Catch:{ Throwable -> 0x007b }
            com.amap.api.maps.model.Marker r0 = r5.h     // Catch:{ Throwable -> 0x007b }
            if (r0 == 0) goto L_0x0074
            boolean r0 = r5.i     // Catch:{ Throwable -> 0x0092 }
            if (r0 == 0) goto L_0x0088
            com.amap.api.mapcore.util.l r0 = r5.g     // Catch:{ Throwable -> 0x0092 }
            float r1 = r5.e     // Catch:{ Throwable -> 0x0092 }
            com.autonavi.amap.mapcore.CameraUpdateMessage r1 = com.amap.api.mapcore.util.aa.d(r1)     // Catch:{ Throwable -> 0x0092 }
            r0.a(r1)     // Catch:{ Throwable -> 0x0092 }
            com.amap.api.maps.model.Marker r0 = r5.h     // Catch:{ Throwable -> 0x0092 }
            float r1 = r5.e     // Catch:{ Throwable -> 0x0092 }
            float r1 = -r1
            r0.setRotateAngle(r1)     // Catch:{ Throwable -> 0x0092 }
        L_0x0074:
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x007b }
            r5.c = r0     // Catch:{ Throwable -> 0x007b }
            goto L_0x000f
        L_0x007b:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000f
        L_0x0080:
            r1 = -1020002304(0xffffffffc3340000, float:-180.0)
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 >= 0) goto L_0x0043
            float r0 = r0 + r4
            goto L_0x0043
        L_0x0088:
            com.amap.api.maps.model.Marker r0 = r5.h     // Catch:{ Throwable -> 0x0092 }
            float r1 = r5.e     // Catch:{ Throwable -> 0x0092 }
            float r1 = r4 - r1
            r0.setRotateAngle(r1)     // Catch:{ Throwable -> 0x0092 }
            goto L_0x0074
        L_0x0092:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x007b }
            goto L_0x0074
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.u.onSensorChanged(android.hardware.SensorEvent):void");
    }

    public static int a(Context context) {
        switch (((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
            case 3:
                return -90;
            default:
                return 0;
        }
    }
}
