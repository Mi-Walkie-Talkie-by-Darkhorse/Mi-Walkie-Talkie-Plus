package org.osmdroid.views.overlay.mylocation;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import com.amap.api.services.geocoder.GeocodeSearch;
import java.util.HashSet;
import java.util.Set;
import org.osmdroid.api.IMapView;
import org.osmdroid.util.NetworkLocationIgnorer;

public class GpsMyLocationProvider implements LocationListener, IMyLocationProvider {
    private final Set<String> locationSources = new HashSet();
    private NetworkLocationIgnorer mIgnorer = new NetworkLocationIgnorer();
    private Location mLocation;
    private LocationManager mLocationManager;
    private float mLocationUpdateMinDistance = 0.0f;
    private long mLocationUpdateMinTime = 0;
    private IMyLocationConsumer mMyLocationConsumer;

    public GpsMyLocationProvider(Context context) {
        this.mLocationManager = (LocationManager) context.getSystemService("location");
        this.locationSources.add(GeocodeSearch.GPS);
    }

    public void clearLocationSources() {
        this.locationSources.clear();
    }

    public void addLocationSource(String str) {
        this.locationSources.add(str);
    }

    public Set<String> getLocationSources() {
        return this.locationSources;
    }

    public long getLocationUpdateMinTime() {
        return this.mLocationUpdateMinTime;
    }

    public void setLocationUpdateMinTime(long j) {
        this.mLocationUpdateMinTime = j;
    }

    public float getLocationUpdateMinDistance() {
        return this.mLocationUpdateMinDistance;
    }

    public void setLocationUpdateMinDistance(float f) {
        this.mLocationUpdateMinDistance = f;
    }

    public boolean startLocationProvider(IMyLocationConsumer iMyLocationConsumer) {
        this.mMyLocationConsumer = iMyLocationConsumer;
        boolean z = false;
        for (String str : this.mLocationManager.getProviders(true)) {
            if (this.locationSources.contains(str)) {
                this.mLocationManager.requestLocationUpdates(str, this.mLocationUpdateMinTime, this.mLocationUpdateMinDistance, this);
                z = true;
            }
        }
        return z;
    }

    public void stopLocationProvider() {
        this.mMyLocationConsumer = null;
        if (this.mLocationManager != null) {
            this.mLocationManager.removeUpdates(this);
        }
    }

    public Location getLastKnownLocation() {
        return this.mLocation;
    }

    public void destroy() {
        stopLocationProvider();
        this.mLocation = null;
        this.mLocationManager = null;
        this.mMyLocationConsumer = null;
        this.mIgnorer = null;
    }

    public void onLocationChanged(Location location) {
        if (this.mIgnorer == null) {
            Log.w(IMapView.LOGTAG, "GpsMyLocation proivider, mIgnore is null, unexpected. Location update will be ignored");
        } else if (location != null && location.getProvider() != null && !this.mIgnorer.shouldIgnore(location.getProvider(), System.currentTimeMillis())) {
            this.mLocation = location;
            if (this.mMyLocationConsumer != null && this.mLocation != null) {
                this.mMyLocationConsumer.onLocationChanged(this.mLocation, this);
            }
        }
    }

    public void onProviderDisabled(String str) {
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
