package com.amap.api.fence;

import android.app.PendingIntent;
import com.amap.api.location.DPoint;
import java.util.List;

public interface GeoFenceManagerBase {
    void addDistrictGeoFence(String str, String str2);

    void addKeywordGeoFence(String str, String str2, String str3, int i, String str4);

    void addNearbyGeoFence(String str, String str2, DPoint dPoint, float f, int i, String str3);

    void addPolygonGeoFence(List<DPoint> list, String str);

    void addRoundGeoFence(DPoint dPoint, float f, String str);

    PendingIntent createPendingIntent(String str);

    List<GeoFence> getAllGeoFence();

    boolean isPause();

    void pauseGeoFence();

    void removeGeoFence();

    boolean removeGeoFence(GeoFence geoFence);

    void resumeGeoFence();

    void setActivateAction(int i);

    void setGeoFenceAble(String str, boolean z);

    void setGeoFenceListener(GeoFenceListener geoFenceListener);
}
