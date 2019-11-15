package org.osmdroid.events;

import org.osmdroid.views.MapView;

public class ZoomEvent implements MapEvent {
    protected MapView source;
    protected int zoomLevel;

    public ZoomEvent(MapView mapView, int i) {
        this.source = mapView;
        this.zoomLevel = i;
    }

    public MapView getSource() {
        return this.source;
    }

    public int getZoomLevel() {
        return this.zoomLevel;
    }

    public String toString() {
        return "ZoomEvent [source=" + this.source + ", zoomLevel=" + this.zoomLevel + "]";
    }
}
