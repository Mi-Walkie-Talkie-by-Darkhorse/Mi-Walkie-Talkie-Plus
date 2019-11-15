package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.ITileOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public final class TileOverlay {
    private ITileOverlay a;

    public TileOverlay(ITileOverlay iTileOverlay) {
        this.a = iTileOverlay;
    }

    public void remove() {
        this.a.remove();
    }

    public void clearTileCache() {
        this.a.clearTileCache();
    }

    public String getId() {
        return this.a.getId();
    }

    public void setZIndex(float f) {
        this.a.setZIndex(f);
    }

    public float getZIndex() {
        return this.a.getZIndex();
    }

    public void setVisible(boolean z) {
        this.a.setVisible(z);
    }

    public boolean isVisible() {
        return this.a.isVisible();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null || !(obj instanceof TileOverlay)) {
            return z;
        }
        try {
            return this.a.equalsRemote(((TileOverlay) obj).a);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    public int hashCode() {
        return this.a.hashCodeRemote();
    }
}
