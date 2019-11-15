package org.osmdroid.events;

public interface MapListener {
    boolean onScroll(ScrollEvent scrollEvent);

    boolean onZoom(ZoomEvent zoomEvent);
}
