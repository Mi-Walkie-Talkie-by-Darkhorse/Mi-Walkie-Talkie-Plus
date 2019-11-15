package org.osmdroid;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.amap.api.services.geocoder.GeocodeSearch;

public class LocationListenerProxy implements LocationListener {
    private LocationListener mListener = null;
    private final LocationManager mLocationManager;

    public LocationListenerProxy(LocationManager locationManager) {
        this.mLocationManager = locationManager;
    }

    public boolean startListening(LocationListener locationListener, long j, float f) {
        boolean z = false;
        this.mListener = locationListener;
        for (String str : this.mLocationManager.getProviders(true)) {
            if (GeocodeSearch.GPS.equals(str) || "network".equals(str)) {
                this.mLocationManager.requestLocationUpdates(str, j, f, this);
                z = true;
            }
        }
        return z;
    }

    public void stopListening() {
        this.mListener = null;
        this.mLocationManager.removeUpdates(this);
    }

    public void onLocationChanged(Location location) {
        if (this.mListener != null) {
            this.mListener.onLocationChanged(location);
        }
    }

    public void onProviderDisabled(String str) {
        if (this.mListener != null) {
            this.mListener.onProviderDisabled(str);
        }
    }

    public void onProviderEnabled(String str) {
        if (this.mListener != null) {
            this.mListener.onProviderEnabled(str);
        }
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
        if (this.mListener != null) {
            this.mListener.onStatusChanged(str, i, bundle);
        }
    }
}
