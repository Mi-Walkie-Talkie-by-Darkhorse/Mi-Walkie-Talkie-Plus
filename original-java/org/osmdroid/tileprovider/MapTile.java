package org.osmdroid.tileprovider;

import java.util.Date;

public class MapTile {
    public static final int MAPTILE_FAIL_ID = 1;
    public static final int MAPTILE_SUCCESS_ID = 0;
    private Date expires;
    private final int x;
    private final int y;
    private final int zoomLevel;

    public MapTile(int i, int i2, int i3) {
        this.zoomLevel = i;
        this.x = i2;
        this.y = i3;
    }

    public Date getExpires() {
        return this.expires;
    }

    public void setExpires(Date date) {
        this.expires = date;
    }

    public int getZoomLevel() {
        return this.zoomLevel;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public String toString() {
        return "/" + this.zoomLevel + "/" + this.x + "/" + this.y;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MapTile)) {
            return false;
        }
        MapTile mapTile = (MapTile) obj;
        if (!(this.zoomLevel == mapTile.zoomLevel && this.x == mapTile.x && this.y == mapTile.y)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return 17 * (this.zoomLevel + 37) * (this.x + 37) * (this.y + 37);
    }
}
