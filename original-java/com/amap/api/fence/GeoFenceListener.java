package com.amap.api.fence;

import java.util.List;

public interface GeoFenceListener {
    void onGeoFenceCreateFinished(List<GeoFence> list, int i, String str);
}
