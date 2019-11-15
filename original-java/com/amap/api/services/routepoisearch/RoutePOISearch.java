package com.amap.api.services.routepoisearch;

import android.content.Context;
import com.amap.api.col.sl.bi;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IRoutePOISearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class RoutePOISearch {
    public static final int DrivingAvoidCongestion = 4;
    public static final int DrivingDefault = 0;
    public static final int DrivingNoExpressways = 3;
    public static final int DrivingNoHighAvoidCongestionSaveMoney = 9;
    public static final int DrivingNoHighWay = 6;
    public static final int DrivingNoHighWaySaveMoney = 7;
    public static final int DrivingSaveMoney = 1;
    public static final int DrivingSaveMoneyAvoidCongestion = 8;
    public static final int DrivingShortDistance = 2;
    private IRoutePOISearch a;

    public interface OnRoutePOISearchListener {
        void onRoutePoiSearched(RoutePOISearchResult routePOISearchResult, int i);
    }

    public enum RoutePOISearchType {
        TypeGasStation,
        TypeMaintenanceStation,
        TypeATM,
        TypeToilet,
        TypeFillingStation,
        TypeServiceArea
    }

    public RoutePOISearch(Context context, RoutePOISearchQuery routePOISearchQuery) {
        try {
            Context context2 = context;
            this.a = (IRoutePOISearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.RoutePOISearchWrapper", bi.class, new Class[]{Context.class, RoutePOISearchQuery.class}, new Object[]{context, routePOISearchQuery});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bi(context, routePOISearchQuery);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setPoiSearchListener(OnRoutePOISearchListener onRoutePOISearchListener) {
        if (this.a != null) {
            this.a.setRoutePOISearchListener(onRoutePOISearchListener);
        }
    }

    public void setQuery(RoutePOISearchQuery routePOISearchQuery) {
        if (this.a != null) {
            this.a.setQuery(routePOISearchQuery);
        }
    }

    public void searchRoutePOIAsyn() {
        if (this.a != null) {
            this.a.searchRoutePOIAsyn();
        }
    }

    public RoutePOISearchResult searchRoutePOI() throws AMapException {
        if (this.a != null) {
            return this.a.searchRoutePOI();
        }
        return null;
    }
}
