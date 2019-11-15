package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.traffic.CircleTrafficQuery;
import com.amap.api.services.traffic.RoadTrafficQuery;
import com.amap.api.services.traffic.TrafficSearch.OnTrafficSearchListener;
import com.amap.api.services.traffic.TrafficStatusResult;

public interface ITrafficSearch {
    TrafficStatusResult loadTrafficByCircle(CircleTrafficQuery circleTrafficQuery) throws AMapException;

    void loadTrafficByCircleAsyn(CircleTrafficQuery circleTrafficQuery);

    TrafficStatusResult loadTrafficByRoad(RoadTrafficQuery roadTrafficQuery) throws AMapException;

    void loadTrafficByRoadAsyn(RoadTrafficQuery roadTrafficQuery);

    void setTrafficSearchListener(OnTrafficSearchListener onTrafficSearchListener);
}
