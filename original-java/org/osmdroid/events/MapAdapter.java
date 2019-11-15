package org.osmdroid.events;

public abstract class MapAdapter implements MapListener {
    public boolean onScroll(ScrollEvent scrollEvent) {
        return false;
    }

    public boolean onZoom(ZoomEvent zoomEvent) {
        return false;
    }
}
