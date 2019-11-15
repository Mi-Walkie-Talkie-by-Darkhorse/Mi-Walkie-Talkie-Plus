package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.ICircle;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

public final class Circle {
    private final ICircle a;

    public Circle(ICircle iCircle) {
        this.a = iCircle;
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

    public void setCenter(LatLng latLng) {
        try {
            this.a.setCenter(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public LatLng getCenter() {
        try {
            return this.a.getCenter();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setRadius(double d) {
        try {
            this.a.setRadius(d);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public double getRadius() {
        try {
            return this.a.getRadius();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0d;
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.a.setStrokeWidth(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public float getStrokeWidth() {
        try {
            return this.a.getStrokeWidth();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void setStrokeColor(int i) {
        try {
            this.a.setStrokeColor(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public int getStrokeColor() {
        try {
            return this.a.getStrokeColor();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0;
        }
    }

    public void setFillColor(int i) {
        try {
            this.a.setFillColor(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public int getFillColor() {
        try {
            return this.a.getFillColor();
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
        if (obj == null || !(obj instanceof Circle)) {
            return z;
        }
        try {
            return this.a.equalsRemote(((Circle) obj).a);
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

    public boolean contains(LatLng latLng) {
        try {
            return this.a.contains(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            this.a.setHoleOptions(list);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public List<BaseHoleOptions> getHoleOptions() {
        try {
            return this.a.getHoleOptions();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }
}
