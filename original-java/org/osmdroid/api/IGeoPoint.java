package org.osmdroid.api;

public interface IGeoPoint {
    double getLatitude();

    @Deprecated
    int getLatitudeE6();

    double getLongitude();

    @Deprecated
    int getLongitudeE6();
}
