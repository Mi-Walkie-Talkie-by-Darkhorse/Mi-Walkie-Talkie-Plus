package org.osmdroid.events;

import org.osmdroid.util.GeoPoint;

public interface MapEventsReceiver {
    boolean longPressHelper(GeoPoint geoPoint);

    boolean singleTapConfirmedHelper(GeoPoint geoPoint);
}
