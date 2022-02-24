package com.ifengyu.intercom.ui.map.f.a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.u;
import com.umeng.analytics.pro.ai;
import org.osmdroid.views.overlay.mylocation.IMyLocationConsumer;
import org.osmdroid.views.overlay.mylocation.IMyLocationProvider;

/* compiled from: MyLocationProvider.java */
/* loaded from: classes2.dex */
public class d implements IMyLocationProvider, SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final SensorManager f6552a;

    /* renamed from: b  reason: collision with root package name */
    private final Sensor f6553b;

    /* renamed from: c  reason: collision with root package name */
    private AMapLocationClient f6554c;
    private IMyLocationConsumer d;
    private AMapLocation e;
    private float f;
    private boolean g;
    private long h;
    private long i;
    AMapLocationListener j = new a();

    /* compiled from: MyLocationProvider.java */
    /* loaded from: classes2.dex */
    class a implements AMapLocationListener {
        a() {
        }

        @Override // com.amap.api.location.AMapLocationListener
        public void onLocationChanged(AMapLocation aMapLocation) {
            if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
                if (d.this.d != null) {
                    d.this.g = true;
                    if (aMapLocation.getCity() == null || (!aMapLocation.getCity().contains("香港") && !aMapLocation.getCity().contains("澳门") && !aMapLocation.getCity().contains("澳門"))) {
                        d.this.e = aMapLocation;
                    } else {
                        double[] a2 = u.a(aMapLocation.getLatitude(), aMapLocation.getLongitude());
                        d.this.e = new AMapLocation("");
                        d.this.e.setLatitude(a2[0]);
                        d.this.e.setLongitude(a2[1]);
                        if (aMapLocation.hasAltitude()) {
                            d.this.e.setAltitude(aMapLocation.getAltitude());
                        }
                    }
                    d.this.e.setBearing(d.this.f);
                    d.this.d.onLocationChanged(d.this.e, d.this);
                    d.this.g = false;
                }
                if (d.this.e.hasAltitude()) {
                    d0.a(d.this.e.getLatitude(), d.this.e.getLongitude(), (int) d.this.e.getAltitude());
                } else {
                    d0.a(d.this.e.getLatitude(), d.this.e.getLongitude());
                }
            }
        }
    }

    public d(Context context) {
        this.f6554c = new AMapLocationClient(context);
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
        aMapLocationClientOption.setInterval(2000L);
        aMapLocationClientOption.setNeedAddress(true);
        aMapLocationClientOption.setGpsFirst(false);
        aMapLocationClientOption.setOnceLocation(false);
        aMapLocationClientOption.setOnceLocationLatest(false);
        aMapLocationClientOption.setHttpTimeOut(10000L);
        AMapLocationClientOption.setLocationProtocol(AMapLocationClientOption.AMapLocationProtocol.HTTP);
        aMapLocationClientOption.setSensorEnable(false);
        aMapLocationClientOption.setWifiScan(true);
        aMapLocationClientOption.setLocationCacheEnable(true);
        this.f6554c.setLocationOption(aMapLocationClientOption);
        this.f6554c.setLocationListener(this.j);
        SensorManager sensorManager = (SensorManager) MiTalkiApp.b().getSystemService(ai.ac);
        this.f6552a = sensorManager;
        this.f6553b = sensorManager.getDefaultSensor(3);
    }

    @Override // org.osmdroid.views.overlay.mylocation.IMyLocationProvider
    public void destroy() {
        AMapLocationClient aMapLocationClient = this.f6554c;
        if (aMapLocationClient != null) {
            aMapLocationClient.onDestroy();
        }
        this.f6554c = null;
        this.e = null;
        this.d = null;
    }

    @Override // org.osmdroid.views.overlay.mylocation.IMyLocationProvider
    public Location getLastKnownLocation() {
        return this.e;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long currentTimeMillis = System.currentTimeMillis();
        this.h = currentTimeMillis;
        if (currentTimeMillis - this.i > 300) {
            float f = sensorEvent.values[0];
            this.f = f;
            AMapLocation aMapLocation = this.e;
            if (aMapLocation != null) {
                aMapLocation.setBearing(f);
                this.d.onLocationChanged(this.e, this);
            }
            this.i = this.h;
        }
    }

    @Override // org.osmdroid.views.overlay.mylocation.IMyLocationProvider
    public boolean startLocationProvider(IMyLocationConsumer iMyLocationConsumer) {
        this.d = iMyLocationConsumer;
        this.f6554c.startLocation();
        this.f6552a.registerListener(this, this.f6553b, 3);
        return true;
    }

    @Override // org.osmdroid.views.overlay.mylocation.IMyLocationProvider
    public void stopLocationProvider() {
        this.d = null;
        this.f6554c.stopLocation();
        this.f6552a.unregisterListener(this);
    }

    public boolean a() {
        return this.g;
    }
}
