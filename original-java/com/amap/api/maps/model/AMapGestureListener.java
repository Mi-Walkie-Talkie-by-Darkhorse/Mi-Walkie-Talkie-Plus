package com.amap.api.maps.model;

public interface AMapGestureListener {
    void onDoubleTap(float f, float f2);

    void onDown(float f, float f2);

    void onFling(float f, float f2);

    void onLongPress(float f, float f2);

    void onMapStable();

    void onScroll(float f, float f2);

    void onSingleTap(float f, float f2);

    void onUp(float f, float f2);
}
