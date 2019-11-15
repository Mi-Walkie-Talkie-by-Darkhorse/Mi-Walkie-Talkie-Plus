package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.routepoisearch.RoutePOISearch.OnRoutePOISearchListener;
import com.amap.api.services.routepoisearch.RoutePOISearchQuery;
import com.amap.api.services.routepoisearch.RoutePOISearchResult;

public interface IRoutePOISearch {
    RoutePOISearchQuery getQuery();

    RoutePOISearchResult searchRoutePOI() throws AMapException;

    void searchRoutePOIAsyn();

    void setQuery(RoutePOISearchQuery routePOISearchQuery);

    void setRoutePOISearchListener(OnRoutePOISearchListener onRoutePOISearchListener);
}
