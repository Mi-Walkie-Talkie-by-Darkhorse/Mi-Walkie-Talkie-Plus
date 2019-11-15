package com.amap.api.maps;

import android.graphics.Point;
import android.graphics.PointF;
import com.amap.api.maps.model.AMapCameraInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.TileProjection;
import com.amap.api.maps.model.VisibleRegion;
import com.autonavi.amap.mapcore.interfaces.IProjection;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class Projection {
    private final IProjection a;

    public Projection(IProjection iProjection) {
        this.a = iProjection;
    }

    public LatLng fromScreenLocation(Point point) {
        try {
            return this.a.fromScreenLocation(point);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public Point toScreenLocation(LatLng latLng) {
        try {
            return this.a.toScreenLocation(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    @Deprecated
    public PointF toMapLocation(LatLng latLng) {
        try {
            return this.a.toMapLocation(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public PointF toOpenGLLocation(LatLng latLng) {
        try {
            return this.a.toMapLocation(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public float toOpenGLWidth(int i) {
        try {
            return this.a.toMapLenWithWin(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public VisibleRegion getVisibleRegion() {
        try {
            return this.a.getVisibleRegion();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public TileProjection fromBoundsToTile(LatLngBounds latLngBounds, int i, int i2) {
        try {
            return this.a.fromBoundsToTile(latLngBounds, i, i2);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public LatLngBounds getMapBounds(LatLng latLng, float f) {
        try {
            return this.a.getMapBounds(latLng, f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public AMapCameraInfo getCameraInfo() {
        try {
            return this.a.getCameraInfo();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }
}
