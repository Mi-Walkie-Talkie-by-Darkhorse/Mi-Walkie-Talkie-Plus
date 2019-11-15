package com.amap.api.services.busline;

import android.content.Context;
import com.amap.api.col.sl.ba;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IBusStationSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BusStationSearch {
    private IBusStationSearch a;

    public interface OnBusStationSearchListener {
        void onBusStationSearched(BusStationResult busStationResult, int i);
    }

    public BusStationSearch(Context context, BusStationQuery busStationQuery) {
        try {
            Context context2 = context;
            this.a = (IBusStationSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.BusStationSearchWrapper", ba.class, new Class[]{Context.class, BusStationQuery.class}, new Object[]{context, busStationQuery});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new ba(context, busStationQuery);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public BusStationResult searchBusStation() throws AMapException {
        if (this.a != null) {
            return this.a.searchBusStation();
        }
        return null;
    }

    public void setOnBusStationSearchListener(OnBusStationSearchListener onBusStationSearchListener) {
        if (this.a != null) {
            this.a.setOnBusStationSearchListener(onBusStationSearchListener);
        }
    }

    public void searchBusStationAsyn() {
        if (this.a != null) {
            this.a.searchBusStationAsyn();
        }
    }

    public void setQuery(BusStationQuery busStationQuery) {
        if (this.a != null) {
            this.a.setQuery(busStationQuery);
        }
    }

    public BusStationQuery getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }
}
