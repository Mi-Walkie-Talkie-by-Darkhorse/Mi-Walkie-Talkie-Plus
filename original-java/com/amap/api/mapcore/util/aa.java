package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.CameraUpdateMessage;
import com.autonavi.amap.mapcore.CameraUpdateMessage.Type;
import com.autonavi.amap.mapcore.VirtualEarthProjection;

/* compiled from: CameraUpdateFactoryDelegate */
public class aa {
    public static CameraUpdateMessage a() {
        ab abVar = new ab();
        abVar.nowType = Type.zoomBy;
        abVar.amount = 1.0f;
        return abVar;
    }

    public static CameraUpdateMessage b() {
        ab abVar = new ab();
        abVar.nowType = Type.zoomBy;
        abVar.amount = -1.0f;
        return abVar;
    }

    public static CameraUpdateMessage a(float f, float f2) {
        z zVar = new z();
        zVar.nowType = Type.scrollBy;
        zVar.xPixel = f;
        zVar.yPixel = f2;
        return zVar;
    }

    public static CameraUpdateMessage a(float f) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        yVar.zoom = f;
        return yVar;
    }

    public static CameraUpdateMessage b(float f) {
        return a(f, (Point) null);
    }

    public static CameraUpdateMessage a(float f, Point point) {
        ab abVar = new ab();
        abVar.nowType = Type.zoomBy;
        abVar.amount = f;
        abVar.focus = point;
        return abVar;
    }

    public static CameraUpdateMessage a(CameraPosition cameraPosition) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        if (!(cameraPosition == null || cameraPosition.target == null)) {
            yVar.geoPoint = VirtualEarthProjection.LatLongToPixels(cameraPosition.target.latitude, cameraPosition.target.longitude, 20);
            yVar.zoom = cameraPosition.zoom;
            yVar.bearing = cameraPosition.bearing;
            yVar.tilt = cameraPosition.tilt;
            yVar.cameraPosition = cameraPosition;
        }
        return yVar;
    }

    public static CameraUpdateMessage a(Point point) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        yVar.geoPoint = point;
        return yVar;
    }

    public static CameraUpdateMessage c(float f) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        yVar.tilt = f;
        return yVar;
    }

    public static CameraUpdateMessage d(float f) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        yVar.bearing = f;
        return yVar;
    }

    public static CameraUpdateMessage b(float f, Point point) {
        y yVar = new y();
        yVar.nowType = Type.newCameraPosition;
        yVar.geoPoint = point;
        yVar.bearing = f;
        return yVar;
    }

    public static CameraUpdateMessage a(LatLng latLng) {
        return a(CameraPosition.builder().target(latLng).zoom(Float.NaN).bearing(Float.NaN).tilt(Float.NaN).build());
    }

    public static CameraUpdateMessage a(LatLng latLng, float f) {
        return a(CameraPosition.builder().target(latLng).zoom(f).bearing(Float.NaN).tilt(Float.NaN).build());
    }

    public static CameraUpdateMessage a(LatLngBounds latLngBounds, int i) {
        x xVar = new x();
        xVar.nowType = Type.newLatLngBounds;
        xVar.bounds = latLngBounds;
        xVar.paddingLeft = i;
        xVar.paddingRight = i;
        xVar.paddingTop = i;
        xVar.paddingBottom = i;
        return xVar;
    }

    public static CameraUpdateMessage a(LatLngBounds latLngBounds, int i, int i2, int i3) {
        x xVar = new x();
        xVar.nowType = Type.newLatLngBoundsWithSize;
        xVar.bounds = latLngBounds;
        xVar.paddingLeft = i3;
        xVar.paddingRight = i3;
        xVar.paddingTop = i3;
        xVar.paddingBottom = i3;
        xVar.width = i;
        xVar.height = i2;
        return xVar;
    }

    public static CameraUpdateMessage a(LatLngBounds latLngBounds, int i, int i2, int i3, int i4) {
        x xVar = new x();
        xVar.nowType = Type.newLatLngBounds;
        xVar.bounds = latLngBounds;
        xVar.paddingLeft = i;
        xVar.paddingRight = i2;
        xVar.paddingTop = i3;
        xVar.paddingBottom = i4;
        return xVar;
    }

    public static CameraUpdateMessage c() {
        return new y();
    }
}
