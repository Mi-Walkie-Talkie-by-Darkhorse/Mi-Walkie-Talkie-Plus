package org.osmdroid.util;

import com.amap.api.services.geocoder.GeocodeSearch;
import org.osmdroid.config.Configuration;
import org.osmdroid.util.constants.UtilConstants;

public class NetworkLocationIgnorer implements UtilConstants {
    private long mLastGps = 0;

    public boolean shouldIgnore(String str, long j) {
        if (GeocodeSearch.GPS.equals(str)) {
            this.mLastGps = j;
        } else if (j < this.mLastGps + Configuration.getInstance().getGpsWaitTime()) {
            return true;
        }
        return false;
    }
}
