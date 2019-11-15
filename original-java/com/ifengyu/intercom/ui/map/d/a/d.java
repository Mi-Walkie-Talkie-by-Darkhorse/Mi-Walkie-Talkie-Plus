package com.ifengyu.intercom.ui.map.d.a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationClientOption.AMapLocationProtocol;
import com.amap.api.location.AMapLocationListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.b.q;
import com.ifengyu.intercom.b.w;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import org.osmdroid.views.overlay.mylocation.IMyLocationConsumer;
import org.osmdroid.views.overlay.mylocation.IMyLocationProvider;

/* compiled from: MyLocationProvider */
public class d implements SensorEventListener, IMyLocationProvider {
    AMapLocationListener a = new AMapLocationListener() {
        public void onLocationChanged(AMapLocation aMapLocation) {
            if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
                if (d.this.e != null) {
                    d.this.h = true;
                    if (aMapLocation.getCity() == null || (!aMapLocation.getCity().contains("香港") && !aMapLocation.getCity().contains("澳门") && !aMapLocation.getCity().contains("澳門"))) {
                        d.this.f = aMapLocation;
                    } else {
                        double[] a2 = q.a(aMapLocation.getLatitude(), aMapLocation.getLongitude());
                        d.this.f = new AMapLocation("");
                        d.this.f.setLatitude(a2[0]);
                        d.this.f.setLongitude(a2[1]);
                        if (aMapLocation.hasAltitude()) {
                            d.this.f.setAltitude(aMapLocation.getAltitude());
                        }
                    }
                    d.this.f.setBearing(d.this.g);
                    d.this.e.onLocationChanged(d.this.f, d.this);
                    d.this.h = false;
                }
                if (d.this.f.hasAltitude()) {
                    w.a(d.this.f.getLatitude(), d.this.f.getLongitude(), (int) d.this.f.getAltitude());
                } else {
                    w.a(d.this.f.getLatitude(), d.this.f.getLongitude());
                }
            }
        }
    };
    private final SensorManager b;
    private final Sensor c;
    private AMapLocationClient d;
    /* access modifiers changed from: private */
    public IMyLocationConsumer e;
    /* access modifiers changed from: private */
    public AMapLocation f;
    /* access modifiers changed from: private */
    public float g;
    /* access modifiers changed from: private */
    public boolean h;
    private long i;
    private long j;

    public d(Context context) {
        this.d = new AMapLocationClient(context);
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.setLocationMode(AMapLocationMode.Hight_Accuracy);
        aMapLocationClientOption.setInterval(2000);
        aMapLocationClientOption.setNeedAddress(true);
        aMapLocationClientOption.setGpsFirst(false);
        aMapLocationClientOption.setOnceLocation(false);
        aMapLocationClientOption.setOnceLocationLatest(false);
        aMapLocationClientOption.setHttpTimeOut(FileTracerConfig.DEF_FLUSH_INTERVAL);
        AMapLocationClientOption.setLocationProtocol(AMapLocationProtocol.HTTP);
        aMapLocationClientOption.setSensorEnable(false);
        aMapLocationClientOption.setWifiScan(true);
        aMapLocationClientOption.setLocationCacheEnable(true);
        this.d.setLocationOption(aMapLocationClientOption);
        this.d.setLocationListener(this.a);
        this.b = (SensorManager) MiTalkiApp.a().getSystemService("sensor");
        this.c = this.b.getDefaultSensor(3);
    }

    public boolean startLocationProvider(IMyLocationConsumer iMyLocationConsumer) {
        this.e = iMyLocationConsumer;
        this.d.startLocation();
        this.b.registerListener(this, this.c, 3);
        return true;
    }

    public void stopLocationProvider() {
        this.e = null;
        this.d.stopLocation();
        this.b.unregisterListener(this);
    }

    public Location getLastKnownLocation() {
        return this.f;
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        this.i = System.currentTimeMillis();
        if (this.i - this.j > 300) {
            this.g = sensorEvent.values[0];
            if (this.f != null) {
                this.f.setBearing(this.g);
                this.e.onLocationChanged(this.f, this);
            }
            this.j = this.i;
        }
    }

    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    public boolean a() {
        return this.h;
    }

    public void destroy() {
        if (this.d != null) {
            this.d.onDestroy();
        }
        this.d = null;
        this.f = null;
        this.e = null;
    }
}
