package com.amap.api.mapcore.util;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.maps.model.AMapCameraInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.TileProjection;
import com.amap.api.maps.model.VisibleRegion;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;

/* compiled from: ProjectionDelegateImp */
class t implements n {
    private l a;

    public t(l lVar) {
        this.a = lVar;
    }

    public LatLng fromScreenLocation(Point point) throws RemoteException {
        if (point == null) {
            return null;
        }
        DPoint obtain = DPoint.obtain();
        this.a.b(point.x, point.y, obtain);
        LatLng latLng = new LatLng(obtain.y, obtain.x);
        obtain.recycle();
        return latLng;
    }

    public Point toScreenLocation(LatLng latLng) throws RemoteException {
        if (latLng == null) {
            return null;
        }
        IPoint obtain = IPoint.obtain();
        this.a.b(latLng.latitude, latLng.longitude, obtain);
        Point point = new Point(obtain.x, obtain.y);
        obtain.recycle();
        return point;
    }

    public VisibleRegion getVisibleRegion() throws RemoteException {
        int mapWidth = this.a.getMapWidth();
        int mapHeight = this.a.getMapHeight();
        LatLng fromScreenLocation = fromScreenLocation(new Point(0, 0));
        LatLng fromScreenLocation2 = fromScreenLocation(new Point(mapWidth, 0));
        LatLng fromScreenLocation3 = fromScreenLocation(new Point(0, mapHeight));
        LatLng fromScreenLocation4 = fromScreenLocation(new Point(mapWidth, mapHeight));
        return new VisibleRegion(fromScreenLocation3, fromScreenLocation4, fromScreenLocation, fromScreenLocation2, LatLngBounds.builder().include(fromScreenLocation3).include(fromScreenLocation4).include(fromScreenLocation).include(fromScreenLocation2).build());
    }

    public PointF toMapLocation(LatLng latLng) throws RemoteException {
        if (latLng == null) {
            return null;
        }
        FPoint obtain = FPoint.obtain();
        this.a.a(latLng.latitude, latLng.longitude, obtain);
        PointF pointF = new PointF(obtain.x, obtain.y);
        obtain.recycle();
        return pointF;
    }

    public float toMapLenWithWin(int i) {
        if (i <= 0) {
            return 0.0f;
        }
        return this.a.h(i);
    }

    public TileProjection fromBoundsToTile(LatLngBounds latLngBounds, int i, int i2) throws RemoteException {
        if (latLngBounds == null || i < 0 || i > 20 || i2 <= 0) {
            return null;
        }
        IPoint obtain = IPoint.obtain();
        IPoint obtain2 = IPoint.obtain();
        this.a.a(latLngBounds.southwest.latitude, latLngBounds.southwest.longitude, obtain);
        this.a.a(latLngBounds.northeast.latitude, latLngBounds.northeast.longitude, obtain2);
        int i3 = (obtain.x >> (20 - i)) / i2;
        int i4 = (obtain.y >> (20 - i)) / i2;
        int i5 = (obtain2.x >> (20 - i)) / i2;
        int i6 = (obtain2.y >> (20 - i)) / i2;
        int i7 = (obtain.x - ((i3 << (20 - i)) * i2)) >> (20 - i);
        int i8 = (obtain2.y - ((i6 << (20 - i)) * i2)) >> (20 - i);
        obtain.recycle();
        obtain2.recycle();
        return new TileProjection(i7, i8, i3, i5, i6, i4);
    }

    public LatLngBounds getMapBounds(LatLng latLng, float f) throws RemoteException {
        if (this.a == null || latLng == null) {
            return null;
        }
        return this.a.a(latLng, f, 0.0f, 0.0f);
    }

    public AMapCameraInfo getCameraInfo() {
        return this.a.getCamerInfo();
    }
}
