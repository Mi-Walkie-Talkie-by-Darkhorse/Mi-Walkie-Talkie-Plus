package com.amap.api.services.interfaces;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.RideRouteResult;
import com.amap.api.services.route.RouteSearch.BusRouteQuery;
import com.amap.api.services.route.RouteSearch.DriveRouteQuery;
import com.amap.api.services.route.RouteSearch.OnRouteSearchListener;
import com.amap.api.services.route.RouteSearch.OnTruckRouteSearchListener;
import com.amap.api.services.route.RouteSearch.RideRouteQuery;
import com.amap.api.services.route.RouteSearch.TruckRouteQuery;
import com.amap.api.services.route.RouteSearch.WalkRouteQuery;
import com.amap.api.services.route.TruckRouteRestult;
import com.amap.api.services.route.WalkRouteResult;

public interface IRouteSearch {
    BusRouteResult calculateBusRoute(BusRouteQuery busRouteQuery) throws AMapException;

    void calculateBusRouteAsyn(BusRouteQuery busRouteQuery);

    DriveRouteResult calculateDriveRoute(DriveRouteQuery driveRouteQuery) throws AMapException;

    void calculateDriveRouteAsyn(DriveRouteQuery driveRouteQuery);

    RideRouteResult calculateRideRoute(RideRouteQuery rideRouteQuery) throws AMapException;

    void calculateRideRouteAsyn(RideRouteQuery rideRouteQuery);

    TruckRouteRestult calculateTruckRoute(TruckRouteQuery truckRouteQuery) throws AMapException;

    void calculateTruckRouteAsyn(TruckRouteQuery truckRouteQuery);

    WalkRouteResult calculateWalkRoute(WalkRouteQuery walkRouteQuery) throws AMapException;

    void calculateWalkRouteAsyn(WalkRouteQuery walkRouteQuery);

    void setOnTruckRouteSearchListener(OnTruckRouteSearchListener onTruckRouteSearchListener);

    void setRouteSearchListener(OnRouteSearchListener onRouteSearchListener);
}
