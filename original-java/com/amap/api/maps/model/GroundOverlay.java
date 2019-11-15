package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.IGroundOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public final class GroundOverlay {
    private IGroundOverlay a;

    public GroundOverlay(IGroundOverlay iGroundOverlay) {
        this.a = iGroundOverlay;
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

    public void setPosition(LatLng latLng) {
        try {
            this.a.setPosition(latLng);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public LatLng getPosition() {
        try {
            return this.a.getPosition();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setDimensions(float f) {
        try {
            this.a.setDimensions(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) {
        try {
            this.a.setImage(bitmapDescriptor);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setDimensions(float f, float f2) {
        try {
            this.a.setDimensions(f, f2);
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

    public float getHeight() {
        try {
            return this.a.getHeight();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) {
        try {
            this.a.setPositionFromBounds(latLngBounds);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public LatLngBounds getBounds() {
        try {
            return this.a.getBounds();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setBearing(float f) {
        try {
            this.a.setBearing(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public float getBearing() {
        try {
            return this.a.getBearing();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
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

    public void setTransparency(float f) {
        try {
            this.a.setTransparency(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public float getTransparency() {
        try {
            return this.a.getTransparency();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null || !(obj instanceof GroundOverlay)) {
            return z;
        }
        try {
            return this.a.equalsRemote(((GroundOverlay) obj).a);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
