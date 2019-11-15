package me.zhanghai.android.materialprogressbar;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

abstract class BaseDrawable extends Drawable implements TintableDrawable {
    protected int mAlpha = 255;
    protected ColorFilter mColorFilter;
    private DummyConstantState mConstantState = new DummyConstantState();
    protected PorterDuffColorFilter mTintFilter;
    protected ColorStateList mTintList;
    protected Mode mTintMode = Mode.SRC_IN;

    private class DummyConstantState extends ConstantState {
        private DummyConstantState() {
        }

        public int getChangingConfigurations() {
            return 0;
        }

        @NonNull
        public Drawable newDrawable() {
            return BaseDrawable.this;
        }
    }

    /* access modifiers changed from: protected */
    public abstract void onDraw(Canvas canvas, int i, int i2);

    BaseDrawable() {
    }

    public int getAlpha() {
        return this.mAlpha;
    }

    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            invalidateSelf();
        }
    }

    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.mColorFilter = colorFilter;
        invalidateSelf();
    }

    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.mTintList = colorStateList;
        if (updateTintFilter()) {
            invalidateSelf();
        }
    }

    public void setTintMode(@NonNull Mode mode) {
        this.mTintMode = mode;
        if (updateTintFilter()) {
            invalidateSelf();
        }
    }

    public boolean isStateful() {
        return this.mTintList != null && this.mTintList.isStateful();
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        return updateTintFilter();
    }

    private boolean updateTintFilter() {
        boolean z = true;
        if (this.mTintList == null || this.mTintMode == null) {
            if (this.mTintFilter == null) {
                z = false;
            }
            this.mTintFilter = null;
        } else {
            this.mTintFilter = new PorterDuffColorFilter(this.mTintList.getColorForState(getState(), 0), this.mTintMode);
        }
        return z;
    }

    public int getOpacity() {
        return -3;
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.width() != 0 && bounds.height() != 0) {
            int save = canvas.save();
            canvas.translate((float) bounds.left, (float) bounds.top);
            onDraw(canvas, bounds.width(), bounds.height());
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public ColorFilter getColorFilterForDrawing() {
        return this.mColorFilter != null ? this.mColorFilter : this.mTintFilter;
    }

    public ConstantState getConstantState() {
        return this.mConstantState;
    }
}
