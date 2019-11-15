package com.autonavi.ae.gmap.glinterface;

import android.graphics.Point;

public interface IProjection {
    GLGeoPoint fromPixels(int i, int i2, int i3);

    Point toPixels(int i, GLGeoPoint gLGeoPoint, Point point);
}
