package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.poisearch.PoiResult;
import com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener;
import com.amap.api.services.poisearch.PoiSearch.Query;
import com.amap.api.services.poisearch.PoiSearch.SearchBound;

public interface IPoiSearch {
    SearchBound getBound();

    String getLanguage();

    Query getQuery();

    PoiResult searchPOI() throws AMapException;

    void searchPOIAsyn();

    PoiItem searchPOIId(String str) throws AMapException;

    void searchPOIIdAsyn(String str);

    void setBound(SearchBound searchBound);

    void setLanguage(String str);

    void setOnPoiSearchListener(OnPoiSearchListener onPoiSearchListener);

    void setQuery(Query query);
}
