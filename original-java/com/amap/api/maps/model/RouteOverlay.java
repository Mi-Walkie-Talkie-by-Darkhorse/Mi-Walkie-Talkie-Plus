package com.amap.api.maps.model;

import com.autonavi.ae.gmap.gloverlay.BaseRouteOverlay;
import com.autonavi.ae.gmap.gloverlay.GLRouteProperty;

public class RouteOverlay {
    BaseRouteOverlay a = null;

    public RouteOverlay(BaseRouteOverlay baseRouteOverlay) {
        this.a = baseRouteOverlay;
    }

    public void addRouteItem(int i, GLRouteProperty[] gLRoutePropertyArr, boolean z, long j, int i2) {
        if (this.a != null) {
            this.a.addRouteItem(i, gLRoutePropertyArr, z, j, i2);
        }
    }

    public void removeRouteName() {
        if (this.a != null) {
            this.a.removeRouteName();
        }
    }

    public void remove() {
        if (this.a != null) {
            this.a.remove();
        }
    }
}
