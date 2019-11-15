package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.interfaces.IArc;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public final class Arc {
    private final IArc a;

    public Arc(IArc iArc) {
        this.a = iArc;
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
        if (obj == null || !(obj instanceof Arc)) {
            return z;
        }
        try {
            return this.a.equalsRemote(((Arc) obj).a);
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
