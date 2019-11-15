package com.amap.api.services.busline;

import android.content.Context;
import com.amap.api.col.sl.az;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IBusLineSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BusLineSearch {
    private IBusLineSearch a = null;

    public interface OnBusLineSearchListener {
        void onBusLineSearched(BusLineResult busLineResult, int i);
    }

    public BusLineSearch(Context context, BusLineQuery busLineQuery) {
        try {
            Context context2 = context;
            this.a = (IBusLineSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.BusLineSearchWrapper", az.class, new Class[]{Context.class, BusLineQuery.class}, new Object[]{context, busLineQuery});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new az(context, busLineQuery);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public BusLineResult searchBusLine() throws AMapException {
        if (this.a != null) {
            return this.a.searchBusLine();
        }
        return null;
    }

    public void setOnBusLineSearchListener(OnBusLineSearchListener onBusLineSearchListener) {
        if (this.a != null) {
            this.a.setOnBusLineSearchListener(onBusLineSearchListener);
        }
    }

    public void searchBusLineAsyn() {
        if (this.a != null) {
            this.a.searchBusLineAsyn();
        }
    }

    public void setQuery(BusLineQuery busLineQuery) {
        if (this.a != null) {
            this.a.setQuery(busLineQuery);
        }
    }

    public BusLineQuery getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }
}
