package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.util.AttributeSet;

/* compiled from: VectorDrawableCommon */
abstract class e extends Drawable implements TintAwareDrawable {
    Drawable b;

    e() {
    }

    protected static TypedArray a(Resources resources, Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public void setColorFilter(int i, Mode mode) {
        if (this.b != null) {
            this.b.setColorFilter(i, mode);
        } else {
            super.setColorFilter(i, mode);
        }
    }

    public ColorFilter getColorFilter() {
        if (this.b != null) {
            return DrawableCompat.getColorFilter(this.b);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        if (this.b != null) {
            return this.b.setLevel(i);
        }
        return super.onLevelChange(i);
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        if (this.b != null) {
            this.b.setBounds(rect);
        } else {
            super.onBoundsChange(rect);
        }
    }

    public void setHotspot(float f, float f2) {
        if (this.b != null) {
            DrawableCompat.setHotspot(this.b, f, f2);
        }
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.b != null) {
            DrawableCompat.setHotspotBounds(this.b, i, i2, i3, i4);
        }
    }

    public void setFilterBitmap(boolean z) {
        if (this.b != null) {
            this.b.setFilterBitmap(z);
        }
    }

    public void jumpToCurrentState() {
        if (this.b != null) {
            DrawableCompat.jumpToCurrentState(this.b);
        }
    }

    public void applyTheme(Theme theme) {
        if (this.b != null) {
            DrawableCompat.applyTheme(this.b, theme);
        }
    }

    public void clearColorFilter() {
        if (this.b != null) {
            this.b.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    public Drawable getCurrent() {
        if (this.b != null) {
            return this.b.getCurrent();
        }
        return super.getCurrent();
    }

    public int getMinimumWidth() {
        if (this.b != null) {
            return this.b.getMinimumWidth();
        }
        return super.getMinimumWidth();
    }

    public int getMinimumHeight() {
        if (this.b != null) {
            return this.b.getMinimumHeight();
        }
        return super.getMinimumHeight();
    }

    public boolean getPadding(Rect rect) {
        if (this.b != null) {
            return this.b.getPadding(rect);
        }
        return super.getPadding(rect);
    }

    public int[] getState() {
        if (this.b != null) {
            return this.b.getState();
        }
        return super.getState();
    }

    public Region getTransparentRegion() {
        if (this.b != null) {
            return this.b.getTransparentRegion();
        }
        return super.getTransparentRegion();
    }

    public void setChangingConfigurations(int i) {
        if (this.b != null) {
            this.b.setChangingConfigurations(i);
        } else {
            super.setChangingConfigurations(i);
        }
    }

    public boolean setState(int[] iArr) {
        if (this.b != null) {
            return this.b.setState(iArr);
        }
        return super.setState(iArr);
    }
}
