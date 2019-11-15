package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonSharePoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.share.ShareSearch.OnShareSearchListener;
import com.amap.api.services.share.ShareSearch.ShareBusRouteQuery;
import com.amap.api.services.share.ShareSearch.ShareDrivingRouteQuery;
import com.amap.api.services.share.ShareSearch.ShareNaviQuery;
import com.amap.api.services.share.ShareSearch.ShareWalkRouteQuery;

public interface IShareSearch {
    String searchBusRouteShareUrl(ShareBusRouteQuery shareBusRouteQuery) throws AMapException;

    void searchBusRouteShareUrlAsyn(ShareBusRouteQuery shareBusRouteQuery);

    String searchDrivingRouteShareUrl(ShareDrivingRouteQuery shareDrivingRouteQuery) throws AMapException;

    void searchDrivingRouteShareUrlAsyn(ShareDrivingRouteQuery shareDrivingRouteQuery);

    String searchLocationShareUrl(LatLonSharePoint latLonSharePoint) throws AMapException;

    void searchLocationShareUrlAsyn(LatLonSharePoint latLonSharePoint);

    String searchNaviShareUrl(ShareNaviQuery shareNaviQuery) throws AMapException;

    void searchNaviShareUrlAsyn(ShareNaviQuery shareNaviQuery);

    String searchPoiShareUrl(PoiItem poiItem) throws AMapException;

    void searchPoiShareUrlAsyn(PoiItem poiItem);

    String searchWalkRouteShareUrl(ShareWalkRouteQuery shareWalkRouteQuery) throws AMapException;

    void searchWalkRouteShareUrlAsyn(ShareWalkRouteQuery shareWalkRouteQuery);

    void setOnShareSearchListener(OnShareSearchListener onShareSearchListener);
}
