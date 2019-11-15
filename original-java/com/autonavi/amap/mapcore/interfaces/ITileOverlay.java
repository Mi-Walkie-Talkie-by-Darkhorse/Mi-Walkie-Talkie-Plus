package com.autonavi.amap.mapcore.interfaces;

public interface ITileOverlay {
    void clearTileCache();

    void destroy(boolean z);

    boolean equalsRemote(ITileOverlay iTileOverlay);

    String getId();

    float getZIndex();

    int hashCodeRemote();

    boolean isVisible();

    void remove();

    void setVisible(boolean z);

    void setZIndex(float f);
}
