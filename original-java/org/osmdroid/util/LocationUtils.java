package org.osmdroid.util;

import android.location.Location;
import android.location.LocationManager;
import com.amap.api.services.geocoder.GeocodeSearch;
import org.osmdroid.config.Configuration;
import org.osmdroid.util.constants.UtilConstants;

public class LocationUtils implements UtilConstants {
    private LocationUtils() {
    }

    public static Location getLastKnownLocation(LocationManager locationManager) {
        if (locationManager == null) {
            return null;
        }
        Location lastKnownLocation = getLastKnownLocation(locationManager, GeocodeSearch.GPS);
        Location lastKnownLocation2 = getLastKnownLocation(locationManager, "network");
        if (lastKnownLocation == null) {
            return lastKnownLocation2;
        }
        if (lastKnownLocation2 == null) {
            return lastKnownLocation;
        }
        if (lastKnownLocation2.getTime() <= lastKnownLocation.getTime() + Configuration.getInstance().getGpsWaitTime()) {
            return lastKnownLocation;
        }
        return lastKnownLocation2;
    }

    private static Location getLastKnownLocation(LocationManager locationManager, String str) {
        try {
            if (!locationManager.isProviderEnabled(str)) {
                return null;
            }
            return locationManager.getLastKnownLocation(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
