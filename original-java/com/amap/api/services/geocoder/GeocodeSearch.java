package com.amap.api.services.geocoder;

import android.content.Context;
import com.amap.api.col.sl.be;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IGeocodeSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

public final class GeocodeSearch {
    public static final String AMAP = "autonavi";
    public static final String GPS = "gps";
    private IGeocodeSearch a;

    public interface OnGeocodeSearchListener {
        void onGeocodeSearched(GeocodeResult geocodeResult, int i);

        void onRegeocodeSearched(RegeocodeResult regeocodeResult, int i);
    }

    public GeocodeSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (IGeocodeSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.GeocodeSearchWrapper", be.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new be(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public final RegeocodeAddress getFromLocation(RegeocodeQuery regeocodeQuery) throws AMapException {
        if (this.a != null) {
            return this.a.getFromLocation(regeocodeQuery);
        }
        return null;
    }

    public final List<GeocodeAddress> getFromLocationName(GeocodeQuery geocodeQuery) throws AMapException {
        if (this.a != null) {
            return this.a.getFromLocationName(geocodeQuery);
        }
        return null;
    }

    public final void setOnGeocodeSearchListener(OnGeocodeSearchListener onGeocodeSearchListener) {
        if (this.a != null) {
            this.a.setOnGeocodeSearchListener(onGeocodeSearchListener);
        }
    }

    public final void getFromLocationAsyn(RegeocodeQuery regeocodeQuery) {
        if (this.a != null) {
            this.a.getFromLocationAsyn(regeocodeQuery);
        }
    }

    public final void getFromLocationNameAsyn(GeocodeQuery geocodeQuery) {
        if (this.a != null) {
            this.a.getFromLocationNameAsyn(geocodeQuery);
        }
    }
}
