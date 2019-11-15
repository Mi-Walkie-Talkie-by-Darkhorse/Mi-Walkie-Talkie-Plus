package com.amap.api.services.traffic;

import android.content.Context;
import com.amap.api.col.sl.bl;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.ITrafficSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class TrafficSearch {
    public static int ROAD_LEVEL_CITY_QUICK_WAY = 2;
    public static int ROAD_LEVEL_HIGH_WAY = 1;
    public static int ROAD_LEVEL_HIGH_WAY_BYROAD = 3;
    public static int ROAD_LEVEL_MAIN_WAY = 4;
    public static int ROAD_LEVEL_NONAME_WAY = 6;
    public static int ROAD_LEVEL_NORMAL_WAY = 5;
    private ITrafficSearch a;

    public interface OnTrafficSearchListener {
        void onRoadTrafficSearched(TrafficStatusResult trafficStatusResult, int i);
    }

    public TrafficSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (ITrafficSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.TrafficSearchWrapper", bl.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bl(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setTrafficSearchListener(OnTrafficSearchListener onTrafficSearchListener) {
        if (this.a != null) {
            this.a.setTrafficSearchListener(onTrafficSearchListener);
        }
    }

    public TrafficStatusResult loadTrafficByRoad(RoadTrafficQuery roadTrafficQuery) throws AMapException {
        if (this.a != null) {
            return this.a.loadTrafficByRoad(roadTrafficQuery);
        }
        return null;
    }

    public void loadTrafficByRoadAsyn(RoadTrafficQuery roadTrafficQuery) {
        if (this.a != null) {
            this.a.loadTrafficByRoadAsyn(roadTrafficQuery);
        }
    }

    public TrafficStatusResult loadTrafficByCircle(CircleTrafficQuery circleTrafficQuery) throws AMapException {
        if (this.a != null) {
            return this.a.loadTrafficByCircle(circleTrafficQuery);
        }
        return null;
    }

    public void loadTrafficByCircleAsyn(CircleTrafficQuery circleTrafficQuery) {
        if (this.a != null) {
            this.a.loadTrafficByCircleAsyn(circleTrafficQuery);
        }
    }
}
