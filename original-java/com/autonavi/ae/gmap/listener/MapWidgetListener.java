package com.autonavi.ae.gmap.listener;

public interface MapWidgetListener {
    void invalidateCompassView();

    void invalidateScaleView();

    void invalidateZoomController(float f);

    void setFrontViewVisibility(boolean z);
}
