package com.amap.api.trace;

import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;

public class TraceOverlay {
    public static final int TRACE_STATUS_FAILURE = 3;
    public static final int TRACE_STATUS_FINISH = 2;
    public static final int TRACE_STATUS_PREPARE = 4;
    public static final int TRACE_STATUS_PROCESSING = 1;
    private Polyline a;
    private PolylineOptions b;
    private AMap c;
    private List<LatLng> d = new ArrayList();
    private int e = 4;
    private int f;
    private int g;

    public TraceOverlay(AMap aMap, List<LatLng> list) {
        this.c = aMap;
        a();
        this.b.addAll(list);
        this.a = aMap.addPolyline(this.b);
    }

    public TraceOverlay(AMap aMap) {
        this.c = aMap;
        a();
    }

    public void add(List<LatLng> list) {
        if (list != null && list.size() != 0) {
            this.d.addAll(list);
            a();
            if (this.a == null) {
                this.a = this.c.addPolyline(this.b);
            }
            this.a.setPoints(this.d);
        }
    }

    public void remove() {
        if (this.a != null) {
            this.a.remove();
        }
    }

    public void setProperCamera(List<LatLng> list) {
        Builder builder = LatLngBounds.builder();
        if (list != null && list.size() != 0) {
            for (LatLng include : list) {
                builder.include(include);
            }
            try {
                this.c.moveCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), 20));
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void zoopToSpan() {
        setProperCamera(this.b.getPoints());
    }

    private PolylineOptions a() {
        if (this.b == null) {
            this.b = new PolylineOptions();
            this.b.setCustomTexture(BitmapDescriptorFactory.fromAsset("tracelinetexture.png"));
            this.b.width(40.0f);
        }
        return this.b;
    }

    public int getTraceStatus() {
        return this.e;
    }

    public void setTraceStatus(int i) {
        this.e = i;
    }

    public int getDistance() {
        return this.f;
    }

    public void setDistance(int i) {
        this.f = i;
    }

    public int getWaitTime() {
        return this.g;
    }

    public void setWaitTime(int i) {
        this.g = i;
    }
}
