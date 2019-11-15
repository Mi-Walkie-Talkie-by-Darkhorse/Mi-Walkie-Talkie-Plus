package com.amap.api.col.sl;

import android.os.Handler;
import android.os.Looper;
import com.amap.api.services.busline.BusLineResult;
import com.amap.api.services.busline.BusLineSearch.OnBusLineSearchListener;
import com.amap.api.services.busline.BusStationResult;
import com.amap.api.services.busline.BusStationSearch.OnBusStationSearchListener;
import com.amap.api.services.cloud.CloudItemDetail;
import com.amap.api.services.cloud.CloudResult;
import com.amap.api.services.cloud.CloudSearch.OnCloudSearchListener;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.geocoder.GeocodeResult;
import com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener;
import com.amap.api.services.geocoder.RegeocodeResult;
import com.amap.api.services.nearby.NearbySearch.NearbyListener;
import com.amap.api.services.nearby.NearbySearchResult;
import com.amap.api.services.poisearch.PoiResult;
import com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener;
import com.amap.api.services.routepoisearch.RoutePOISearch.OnRoutePOISearchListener;
import com.amap.api.services.routepoisearch.RoutePOISearchResult;
import com.amap.api.services.weather.LocalWeatherForecastResult;
import com.amap.api.services.weather.LocalWeatherLiveResult;
import com.amap.api.services.weather.WeatherSearch.OnWeatherSearchListener;
import java.util.List;

/* compiled from: MessageHandler */
public final class ac extends Handler {
    private static ac a;

    /* compiled from: MessageHandler */
    public static class a {
        public BusLineResult a;
        public OnBusLineSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class b {
        public BusStationResult a;
        public OnBusStationSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class c {
        public CloudItemDetail a;
        public OnCloudSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class d {
        public CloudResult a;
        public OnCloudSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class e {
        public GeocodeResult a;
        public OnGeocodeSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class f {
        public List<NearbyListener> a;
        public NearbySearchResult b;
    }

    /* compiled from: MessageHandler */
    public static class g {
        public PoiItem a;
        public OnPoiSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class h {
        public PoiResult a;
        public OnPoiSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class i {
        public RegeocodeResult a;
        public OnGeocodeSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class j {
        public RoutePOISearchResult a;
        public OnRoutePOISearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class k {
        public LocalWeatherForecastResult a;
        public OnWeatherSearchListener b;
    }

    /* compiled from: MessageHandler */
    public static class l {
        public LocalWeatherLiveResult a;
        public OnWeatherSearchListener b;
    }

    public static synchronized ac a() {
        ac acVar;
        synchronized (ac.class) {
            if (a == null) {
                if (Looper.myLooper() == null || Looper.myLooper() != Looper.getMainLooper()) {
                    a = new ac(Looper.getMainLooper());
                } else {
                    a = new ac();
                }
            }
            acVar = a;
        }
        return acVar;
    }

    ac() {
    }

    private ac(Looper looper) {
        super(looper);
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v30, types: [com.amap.api.services.nearby.NearbySearchResult] */
    /* JADX WARNING: type inference failed for: r0v38, types: [com.amap.api.services.nearby.NearbySearchResult] */
    /* JADX WARNING: type inference failed for: r1v31 */
    /* JADX WARNING: type inference failed for: r1v34, types: [com.amap.api.services.busline.BusStationResult] */
    /* JADX WARNING: type inference failed for: r1v35, types: [com.amap.api.services.busline.BusStationResult] */
    /* JADX WARNING: type inference failed for: r1v40, types: [java.util.List] */
    /* JADX WARNING: type inference failed for: r1v42, types: [java.util.ArrayList] */
    /* JADX WARNING: type inference failed for: r1v50, types: [com.amap.api.services.busline.BusLineResult] */
    /* JADX WARNING: type inference failed for: r1v51, types: [com.amap.api.services.busline.BusLineResult] */
    /* JADX WARNING: type inference failed for: r1v82 */
    /* JADX WARNING: type inference failed for: r1v83 */
    /* JADX WARNING: type inference failed for: r1v84 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r1v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], ?[OBJECT, ARRAY], com.amap.api.services.busline.BusStationResult, java.util.ArrayList, com.amap.api.services.busline.BusLineResult]
  uses: [com.amap.api.services.nearby.NearbySearchResult, com.amap.api.services.busline.BusStationResult, java.util.List, com.amap.api.services.busline.BusLineResult]
  mth insns count: 440
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void handleMessage(android.os.Message r6) {
        /*
            r5 = this;
            r3 = 104(0x68, float:1.46E-43)
            r1 = 0
            r4 = 1000(0x3e8, float:1.401E-42)
            int r0 = r6.arg1     // Catch:{ Throwable -> 0x0033 }
            switch(r0) {
                case 1: goto L_0x000b;
                case 2: goto L_0x0119;
                case 3: goto L_0x00eb;
                case 4: goto L_0x0102;
                case 5: goto L_0x014b;
                case 6: goto L_0x0166;
                case 7: goto L_0x01aa;
                case 8: goto L_0x01c1;
                case 9: goto L_0x01e3;
                case 10: goto L_0x0210;
                case 11: goto L_0x0232;
                case 12: goto L_0x0269;
                case 13: goto L_0x0297;
                case 14: goto L_0x02dd;
                case 15: goto L_0x02fa;
                case 16: goto L_0x0351;
                case 17: goto L_0x00c4;
                default: goto L_0x000a;
            }     // Catch:{ Throwable -> 0x0033 }
        L_0x000a:
            return
        L_0x000b:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.RouteSearch$OnRouteSearchListener r0 = (com.amap.api.services.route.RouteSearch.OnRouteSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 100
            if (r1 != r2) goto L_0x003c
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.BusRouteResult r1 = (com.amap.api.services.route.BusRouteResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onBusRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0033:
            r0 = move-exception
            java.lang.String r1 = "MessageHandler"
            java.lang.String r2 = "handleMessage"
            com.amap.api.col.sl.t.a(r0, r1, r2)
            goto L_0x000a
        L_0x003c:
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 101(0x65, float:1.42E-43)
            if (r1 != r2) goto L_0x005e
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.DriveRouteResult r1 = (com.amap.api.services.route.DriveRouteResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onDriveRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x005e:
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 102(0x66, float:1.43E-43)
            if (r1 != r2) goto L_0x0080
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.WalkRouteResult r1 = (com.amap.api.services.route.WalkRouteResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onWalkRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0080:
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 103(0x67, float:1.44E-43)
            if (r1 != r2) goto L_0x00a3
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.RideRouteResult r1 = (com.amap.api.services.route.RideRouteResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onRideRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x00a3:
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r1 != r3) goto L_0x000a
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.RideRouteResult r1 = (com.amap.api.services.route.RideRouteResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onRideRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x00c4:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.RouteSearch$OnTruckRouteSearchListener r0 = (com.amap.api.services.route.RouteSearch.OnTruckRouteSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r1 != r3) goto L_0x000a
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.TruckRouteRestult r1 = (com.amap.api.services.route.TruckRouteRestult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onTruckRouteSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x00eb:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$a r0 = (com.amap.api.col.sl.ac.a) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.busline.BusLineSearch$OnBusLineSearchListener r2 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            int r3 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r3 != r4) goto L_0x00fb
            com.amap.api.services.busline.BusLineResult r1 = r0.a     // Catch:{ Throwable -> 0x0033 }
        L_0x00fb:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2.onBusLineSearched(r1, r0)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0102:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.district.DistrictSearch$OnDistrictSearchListener r0 = (com.amap.api.services.district.DistrictSearch.OnDistrictSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r2 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r2)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.district.DistrictResult r1 = (com.amap.api.services.district.DistrictResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onDistrictSearched(r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0119:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 201(0xc9, float:2.82E-43)
            if (r0 != r1) goto L_0x0132
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$i r0 = (com.amap.api.col.sl.ac.i) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.geocoder.GeocodeSearch$OnGeocodeSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            com.amap.api.services.geocoder.RegeocodeResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.arg2     // Catch:{ Throwable -> 0x0033 }
            r1.onRegeocodeSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0132:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L_0x000a
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$e r0 = (com.amap.api.col.sl.ac.e) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.geocoder.GeocodeSearch$OnGeocodeSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            com.amap.api.services.geocoder.GeocodeResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.arg2     // Catch:{ Throwable -> 0x0033 }
            r1.onGeocodeSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x014b:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.help.Inputtips$InputtipsListener r0 = (com.amap.api.services.help.Inputtips.InputtipsListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r2 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r2 != r4) goto L_0x015f
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r2 = "result"
            java.util.ArrayList r1 = r1.getParcelableArrayList(r2)     // Catch:{ Throwable -> 0x0033 }
        L_0x015f:
            int r2 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r0.onGetInputtips(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0166:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 600(0x258, float:8.41E-43)
            if (r0 != r1) goto L_0x0189
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$h r0 = (com.amap.api.col.sl.ac.h) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.poisearch.PoiSearch$OnPoiSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            java.lang.String r3 = "errorCode"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.poisearch.PoiResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            r1.onPoiSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0189:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 602(0x25a, float:8.44E-43)
            if (r0 != r1) goto L_0x000a
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$g r0 = (com.amap.api.col.sl.ac.g) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.poisearch.PoiSearch$OnPoiSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            java.lang.String r3 = "errorCode"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.core.PoiItem r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            r1.onPoiItemSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x01aa:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$b r0 = (com.amap.api.col.sl.ac.b) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.busline.BusStationSearch$OnBusStationSearchListener r2 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            int r3 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r3 != r4) goto L_0x01ba
            com.amap.api.services.busline.BusStationResult r1 = r0.a     // Catch:{ Throwable -> 0x0033 }
        L_0x01ba:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2.onBusStationSearched(r1, r0)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x01c1:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r0.size()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x0033 }
        L_0x01d1:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.nearby.NearbySearch$NearbyListener r0 = (com.amap.api.services.nearby.NearbySearch.NearbyListener) r0     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r0.onUserInfoCleared(r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x01d1
        L_0x01e3:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$f r0 = (com.amap.api.col.sl.ac.f) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            java.util.List<com.amap.api.services.nearby.NearbySearch$NearbyListener> r2 = r0.a     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            int r3 = r2.size()     // Catch:{ Throwable -> 0x0033 }
            if (r3 == 0) goto L_0x000a
            int r3 = r6.what     // Catch:{ Throwable -> 0x0033 }
            if (r3 != r4) goto L_0x01fa
            com.amap.api.services.nearby.NearbySearchResult r0 = r0.b     // Catch:{ Throwable -> 0x0033 }
            r1 = r0
        L_0x01fa:
            java.util.Iterator r2 = r2.iterator()     // Catch:{ Throwable -> 0x0033 }
        L_0x01fe:
            boolean r0 = r2.hasNext()     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            java.lang.Object r0 = r2.next()     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.nearby.NearbySearch$NearbyListener r0 = (com.amap.api.services.nearby.NearbySearch.NearbyListener) r0     // Catch:{ Throwable -> 0x0033 }
            int r3 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r0.onNearbyInfoSearched(r1, r3)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x01fe
        L_0x0210:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r0.size()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x0033 }
        L_0x0220:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.nearby.NearbySearch$NearbyListener r0 = (com.amap.api.services.nearby.NearbySearch.NearbyListener) r0     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r0.onNearbyInfoUploaded(r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x0220
        L_0x0232:
            int r1 = r6.arg2     // Catch:{ Throwable -> 0x0033 }
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.share.ShareSearch$OnShareSearchListener r0 = (com.amap.api.services.share.ShareSearch.OnShareSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "shareurlkey"
            java.lang.String r2 = r2.getString(r3)     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r3 = r6.what     // Catch:{ Throwable -> 0x0033 }
            switch(r3) {
                case 1100: goto L_0x024b;
                case 1101: goto L_0x025f;
                case 1102: goto L_0x0264;
                case 1103: goto L_0x0250;
                case 1104: goto L_0x0255;
                case 1105: goto L_0x025a;
                default: goto L_0x0249;
            }     // Catch:{ Throwable -> 0x0033 }
        L_0x0249:
            goto L_0x000a
        L_0x024b:
            r0.onPoiShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0250:
            r0.onBusRouteShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0255:
            r0.onDrivingRouteShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x025a:
            r0.onWalkRouteShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x025f:
            r0.onLocationShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0264:
            r0.onNaviShareUrlSearched(r2, r1)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0269:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 700(0x2bc, float:9.81E-43)
            if (r0 != r1) goto L_0x0280
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$d r0 = (com.amap.api.col.sl.ac.d) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.cloud.CloudSearch$OnCloudSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.cloud.CloudResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.arg2     // Catch:{ Throwable -> 0x0033 }
            r1.onCloudSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0280:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 701(0x2bd, float:9.82E-43)
            if (r0 != r1) goto L_0x000a
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$c r0 = (com.amap.api.col.sl.ac.c) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.cloud.CloudSearch$OnCloudSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.cloud.CloudItemDetail r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            int r2 = r6.arg2     // Catch:{ Throwable -> 0x0033 }
            r1.onCloudItemDetailSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0297:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 1301(0x515, float:1.823E-42)
            if (r0 != r1) goto L_0x02ba
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$l r0 = (com.amap.api.col.sl.ac.l) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.weather.WeatherSearch$OnWeatherSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            java.lang.String r3 = "errorCode"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.weather.LocalWeatherLiveResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            r1.onWeatherLiveSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x02ba:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 1302(0x516, float:1.824E-42)
            if (r0 != r1) goto L_0x000a
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$k r0 = (com.amap.api.col.sl.ac.k) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.weather.WeatherSearch$OnWeatherSearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            java.lang.String r3 = "errorCode"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.weather.LocalWeatherForecastResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            r1.onWeatherForecastSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x02dd:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.col.sl.ac$j r0 = (com.amap.api.col.sl.ac.j) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            com.amap.api.services.routepoisearch.RoutePOISearch$OnRoutePOISearchListener r1 = r0.b     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            android.os.Bundle r2 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r2 == 0) goto L_0x000a
            java.lang.String r3 = "errorCode"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.routepoisearch.RoutePOISearchResult r0 = r0.a     // Catch:{ Throwable -> 0x0033 }
            r1.onRoutePoiSearched(r0, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x02fa:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.traffic.TrafficSearch$OnTrafficSearchListener r0 = (com.amap.api.services.traffic.TrafficSearch.OnTrafficSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 300(0x12c, float:4.2E-43)
            if (r1 != r2) goto L_0x0323
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.traffic.TrafficStatusResult r1 = (com.amap.api.services.traffic.TrafficStatusResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onRoadTrafficSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0323:
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 301(0x12d, float:4.22E-43)
            if (r1 != r2) goto L_0x0346
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.traffic.TrafficStatusResult r1 = (com.amap.api.services.traffic.TrafficStatusResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onRoadTrafficSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0346:
            int r0 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r1 = 302(0x12e, float:4.23E-43)
            if (r0 != r1) goto L_0x000a
            r6.getData()     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        L_0x0351:
            java.lang.Object r0 = r6.obj     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.DistanceSearch$OnDistanceSearchListener r0 = (com.amap.api.services.route.DistanceSearch.OnDistanceSearchListener) r0     // Catch:{ Throwable -> 0x0033 }
            if (r0 == 0) goto L_0x000a
            int r1 = r6.what     // Catch:{ Throwable -> 0x0033 }
            r2 = 400(0x190, float:5.6E-43)
            if (r1 != r2) goto L_0x000a
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            if (r1 == 0) goto L_0x000a
            java.lang.String r2 = "errorCode"
            int r2 = r1.getInt(r2)     // Catch:{ Throwable -> 0x0033 }
            android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r3 = "result"
            android.os.Parcelable r1 = r1.getParcelable(r3)     // Catch:{ Throwable -> 0x0033 }
            com.amap.api.services.route.DistanceResult r1 = (com.amap.api.services.route.DistanceResult) r1     // Catch:{ Throwable -> 0x0033 }
            r0.onDistanceSearched(r1, r2)     // Catch:{ Throwable -> 0x0033 }
            goto L_0x000a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.ac.handleMessage(android.os.Message):void");
    }
}
