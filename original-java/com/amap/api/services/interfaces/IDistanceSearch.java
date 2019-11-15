package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.DistanceResult;
import com.amap.api.services.route.DistanceSearch.DistanceQuery;
import com.amap.api.services.route.DistanceSearch.OnDistanceSearchListener;

public interface IDistanceSearch {
    DistanceResult calculateRouteDistance(DistanceQuery distanceQuery) throws AMapException;

    void calculateRouteDistanceAsyn(DistanceQuery distanceQuery);

    void setDistanceSearchListener(OnDistanceSearchListener onDistanceSearchListener);
}
