package com.autonavi.amap.mapcore;

public interface Inner_3dMap_locationManagerBase {
    void destroy();

    void setLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener);

    void setLocationOption(Inner_3dMap_locationOption inner_3dMap_locationOption);

    void startLocation();

    void stopLocation();

    void unRegisterLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener);
}
