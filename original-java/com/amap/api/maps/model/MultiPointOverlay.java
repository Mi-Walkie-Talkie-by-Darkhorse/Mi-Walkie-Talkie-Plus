package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import java.util.List;

public class MultiPointOverlay {
    IMultiPointOverlay a;

    public MultiPointOverlay(IMultiPointOverlay iMultiPointOverlay) {
        this.a = iMultiPointOverlay;
    }

    public void setItems(List<MultiPointItem> list) {
        if (this.a != null) {
            this.a.addItems(list);
        }
    }

    public void setAnchor(float f, float f2) {
        if (this.a != null) {
            this.a.setAnchor(f, f2);
        }
    }

    public void setEnable(boolean z) {
        if (this.a != null) {
            this.a.setVisible(z);
        }
    }

    public void remove() {
        if (this.a != null) {
            this.a.remove(true);
        }
    }

    public void destroy() {
        if (this.a != null) {
            this.a.destroy(true);
        }
    }
}
