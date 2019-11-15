package org.osmdroid.events;

import org.osmdroid.views.MapView;

public class ScrollEvent implements MapEvent {
    protected MapView source;
    protected int x;
    protected int y;

    public ScrollEvent(MapView mapView, int i, int i2) {
        this.source = mapView;
        this.x = i;
        this.y = i2;
    }

    public MapView getSource() {
        return this.source;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public String toString() {
        return "ScrollEvent [source=" + this.source + ", x=" + this.x + ", y=" + this.y + "]";
    }
}
