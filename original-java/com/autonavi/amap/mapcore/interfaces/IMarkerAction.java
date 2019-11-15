package com.autonavi.amap.mapcore.interfaces;

import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.MarkerOptions;

public interface IMarkerAction {
    float getAlpha();

    int getDisplayLevel();

    MarkerOptions getOptions();

    boolean isClickable();

    boolean isInfoWindowAutoOverturn();

    boolean isInfoWindowEnable();

    void setAlpha(float f);

    void setAutoOverturnInfoWindow(boolean z);

    void setClickable(boolean z);

    void setDisplayLevel(int i);

    void setFixingPointEnable(boolean z);

    void setInfoWindowEnable(boolean z);

    void setMarkerOptions(MarkerOptions markerOptions);

    void setPositionNotUpdate(LatLng latLng);

    void setRotateAngleNotUpdate(float f);

    void setSnippet(String str);

    void setTitle(String str);
}
