package com.amap.api.mapcore.util;

import android.location.Location;
import com.amap.api.maps.LocationSource.OnLocationChangedListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: AMapOnLocationChangedListener */
class e implements OnLocationChangedListener {
    Location a;
    private l b;

    e(l lVar) {
        this.b = lVar;
    }

    public void onLocationChanged(Location location) {
        this.a = location;
        try {
            if (this.b.isMyLocationEnabled()) {
                this.b.a(location);
            }
        } catch (Throwable th) {
            gf.b(th, "AMapOnLocationChangedListener", "onLocationChanged");
            ThrowableExtension.printStackTrace(th);
        }
    }
}
