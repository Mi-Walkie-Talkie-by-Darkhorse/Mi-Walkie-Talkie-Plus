package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IRouteSearch;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.RideRouteResult;
import com.amap.api.services.route.RouteSearch.BusRouteQuery;
import com.amap.api.services.route.RouteSearch.DriveRouteQuery;
import com.amap.api.services.route.RouteSearch.FromAndTo;
import com.amap.api.services.route.RouteSearch.OnRouteSearchListener;
import com.amap.api.services.route.RouteSearch.OnTruckRouteSearchListener;
import com.amap.api.services.route.RouteSearch.RideRouteQuery;
import com.amap.api.services.route.RouteSearch.TruckRouteQuery;
import com.amap.api.services.route.RouteSearch.WalkRouteQuery;
import com.amap.api.services.route.TruckRouteRestult;
import com.amap.api.services.route.WalkRouteResult;

/* compiled from: RouteSearchCore */
public class bj implements IRouteSearch {
    /* access modifiers changed from: private */
    public OnRouteSearchListener a;
    /* access modifiers changed from: private */
    public OnTruckRouteSearchListener b;
    private Context c;
    /* access modifiers changed from: private */
    public Handler d = ac.a();

    public bj(Context context) {
        this.c = context.getApplicationContext();
    }

    public void setRouteSearchListener(OnRouteSearchListener onRouteSearchListener) {
        this.a = onRouteSearchListener;
    }

    public void setOnTruckRouteSearchListener(OnTruckRouteSearchListener onTruckRouteSearchListener) {
        this.b = onTruckRouteSearchListener;
    }

    public WalkRouteResult calculateWalkRoute(WalkRouteQuery walkRouteQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (walkRouteQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (!a(walkRouteQuery.getFromAndTo())) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else {
                WalkRouteQuery clone = walkRouteQuery.clone();
                WalkRouteResult walkRouteResult = (WalkRouteResult) new au(this.c, clone).a();
                if (walkRouteResult != null) {
                    walkRouteResult.setWalkQuery(clone);
                }
                return walkRouteResult;
            }
        } catch (AMapException e) {
            t.a(e, "RouteSearch", "calculateWalkRoute");
            throw e;
        }
    }

    public void calculateWalkRouteAsyn(final WalkRouteQuery walkRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 102;
                    obtainMessage.arg1 = 1;
                    Bundle bundle = new Bundle();
                    WalkRouteResult walkRouteResult = null;
                    try {
                        walkRouteResult = bj.this.calculateWalkRoute(walkRouteQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bj.this.a;
                        bundle.putParcelable("result", walkRouteResult);
                        obtainMessage.setData(bundle);
                        bj.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "RouteSearch", "calculateWalkRouteAsyn");
        }
    }

    public BusRouteResult calculateBusRoute(BusRouteQuery busRouteQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (busRouteQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (!a(busRouteQuery.getFromAndTo())) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else {
                BusRouteQuery clone = busRouteQuery.clone();
                BusRouteResult busRouteResult = (BusRouteResult) new m(this.c, clone).a();
                if (busRouteResult != null) {
                    busRouteResult.setBusQuery(clone);
                }
                return busRouteResult;
            }
        } catch (AMapException e) {
            t.a(e, "RouteSearch", "calculateBusRoute");
            throw e;
        }
    }

    public void calculateBusRouteAsyn(final BusRouteQuery busRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 100;
                    obtainMessage.arg1 = 1;
                    Bundle bundle = new Bundle();
                    BusRouteResult busRouteResult = null;
                    try {
                        busRouteResult = bj.this.calculateBusRoute(busRouteQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bj.this.a;
                        bundle.putParcelable("result", busRouteResult);
                        obtainMessage.setData(bundle);
                        bj.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "RouteSearch", "calculateBusRouteAsyn");
        }
    }

    public DriveRouteResult calculateDriveRoute(DriveRouteQuery driveRouteQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (driveRouteQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (!a(driveRouteQuery.getFromAndTo())) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else {
                DriveRouteQuery clone = driveRouteQuery.clone();
                DriveRouteResult driveRouteResult = (DriveRouteResult) new w(this.c, clone).a();
                if (driveRouteResult != null) {
                    driveRouteResult.setDriveQuery(clone);
                }
                return driveRouteResult;
            }
        } catch (AMapException e) {
            t.a(e, "RouteSearch", "calculateDriveRoute");
            throw e;
        }
    }

    public void calculateDriveRouteAsyn(final DriveRouteQuery driveRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 101;
                    obtainMessage.arg1 = 1;
                    Bundle bundle = new Bundle();
                    DriveRouteResult driveRouteResult = null;
                    try {
                        driveRouteResult = bj.this.calculateDriveRoute(driveRouteQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bj.this.a;
                        bundle.putParcelable("result", driveRouteResult);
                        obtainMessage.setData(bundle);
                        bj.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "RouteSearch", "calculateDriveRouteAsyn");
        }
    }

    private static boolean a(FromAndTo fromAndTo) {
        if (fromAndTo == null || fromAndTo.getFrom() == null || fromAndTo.getTo() == null) {
            return false;
        }
        return true;
    }

    public void calculateRideRouteAsyn(final RideRouteQuery rideRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 103;
                    obtainMessage.arg1 = 1;
                    Bundle bundle = new Bundle();
                    RideRouteResult rideRouteResult = null;
                    try {
                        rideRouteResult = bj.this.calculateRideRoute(rideRouteQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bj.this.a;
                        bundle.putParcelable("result", rideRouteResult);
                        obtainMessage.setData(bundle);
                        bj.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "RouteSearch", "calculateRideRouteAsyn");
        }
    }

    public RideRouteResult calculateRideRoute(RideRouteQuery rideRouteQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (rideRouteQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (!a(rideRouteQuery.getFromAndTo())) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else {
                RideRouteQuery clone = rideRouteQuery.clone();
                RideRouteResult rideRouteResult = (RideRouteResult) new an(this.c, clone).a();
                if (rideRouteResult != null) {
                    rideRouteResult.setRideQuery(clone);
                }
                return rideRouteResult;
            }
        } catch (AMapException e) {
            t.a(e, "RouteSearch", "calculaterideRoute");
            throw e;
        }
    }

    public TruckRouteRestult calculateTruckRoute(TruckRouteQuery truckRouteQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (truckRouteQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (!a(truckRouteQuery.getFromAndTo())) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else {
                TruckRouteQuery clone = truckRouteQuery.clone();
                TruckRouteRestult truckRouteRestult = (TruckRouteRestult) new at(this.c, clone).a();
                if (truckRouteRestult != null) {
                    truckRouteRestult.setTruckQuery(clone);
                }
                return truckRouteRestult;
            }
        } catch (AMapException e) {
            t.a(e, "RouteSearch", "calculateDriveRoute");
            throw e;
        }
    }

    public void calculateTruckRouteAsyn(final TruckRouteQuery truckRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 104;
                    obtainMessage.arg1 = 17;
                    Bundle bundle = new Bundle();
                    TruckRouteRestult truckRouteRestult = null;
                    try {
                        truckRouteRestult = bj.this.calculateTruckRoute(truckRouteQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bj.this.b;
                        bundle.putParcelable("result", truckRouteRestult);
                        obtainMessage.setData(bundle);
                        bj.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "RouteSearch", "calculateTruckRouteAsyn");
        }
    }
}
