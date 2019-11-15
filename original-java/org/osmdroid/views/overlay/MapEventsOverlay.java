package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import org.osmdroid.events.MapEventsReceiver;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;

public class MapEventsOverlay extends Overlay {
    private MapEventsReceiver mReceiver;

    @Deprecated
    public MapEventsOverlay(Context context, MapEventsReceiver mapEventsReceiver) {
        this(mapEventsReceiver);
    }

    public MapEventsOverlay(MapEventsReceiver mapEventsReceiver) {
        this.mReceiver = mapEventsReceiver;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        return this.mReceiver.singleTapConfirmedHelper((GeoPoint) mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY()));
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        return this.mReceiver.longPressHelper((GeoPoint) mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY()));
    }
}
