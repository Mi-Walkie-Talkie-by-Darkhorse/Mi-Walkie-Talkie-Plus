package com.amap.api.services.interfaces;

import com.amap.api.services.busline.BusStationQuery;
import com.amap.api.services.busline.BusStationResult;
import com.amap.api.services.busline.BusStationSearch.OnBusStationSearchListener;
import com.amap.api.services.core.AMapException;

public interface IBusStationSearch {
    BusStationQuery getQuery();

    BusStationResult searchBusStation() throws AMapException;

    void searchBusStationAsyn();

    void setOnBusStationSearchListener(OnBusStationSearchListener onBusStationSearchListener);

    void setQuery(BusStationQuery busStationQuery);
}
