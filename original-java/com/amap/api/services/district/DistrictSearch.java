package com.amap.api.services.district;

import android.content.Context;
import com.amap.api.col.sl.bd;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IDistrictSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class DistrictSearch {
    private IDistrictSearch a;

    public interface OnDistrictSearchListener {
        void onDistrictSearched(DistrictResult districtResult);
    }

    public DistrictSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (IDistrictSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.DistrictSearchWrapper", bd.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bd(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public DistrictSearchQuery getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }

    public void setQuery(DistrictSearchQuery districtSearchQuery) {
        if (this.a != null) {
            this.a.setQuery(districtSearchQuery);
        }
    }

    public DistrictResult searchDistrict() throws AMapException {
        if (this.a != null) {
            return this.a.searchDistrict();
        }
        return null;
    }

    public void searchDistrictAsyn() {
        if (this.a != null) {
            this.a.searchDistrictAsyn();
        }
    }

    public void searchDistrictAnsy() {
        if (this.a != null) {
            this.a.searchDistrictAnsy();
        }
    }

    public void setOnDistrictSearchListener(OnDistrictSearchListener onDistrictSearchListener) {
        if (this.a != null) {
            this.a.setOnDistrictSearchListener(onDistrictSearchListener);
        }
    }
}
