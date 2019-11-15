package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.INavigateArrow;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

public class NavigateArrow {
    private final INavigateArrow a;

    public NavigateArrow(INavigateArrow iNavigateArrow) {
        this.a = iNavigateArrow;
    }

    public void remove() {
        try {
            this.a.remove();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            this.a.setPoints(list);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public List<LatLng> getPoints() {
        try {
            return this.a.getPoints();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setWidth(float f) {
        try {
            this.a.setWidth(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public float getWidth() {
        try {
            return this.a.getWidth();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void setTopColor(int i) {
        try {
            this.a.setTopColor(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public int getTopColor() {
        try {
            return this.a.getTopColor();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0;
        }
    }

    @Deprecated
    public void setSideColor(int i) {
        try {
            this.a.setSideColor(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    @Deprecated
    public int getSideColor() {
        try {
            return this.a.getSideColor();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0;
        }
    }

    public void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null || !(obj instanceof NavigateArrow)) {
            return z;
        }
        try {
            return this.a.equalsRemote(((NavigateArrow) obj).a);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    public int hashCode() {
        try {
            return this.a.hashCodeRemote();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0;
        }
    }
}
