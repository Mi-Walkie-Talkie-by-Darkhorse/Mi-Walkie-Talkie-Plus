package me.zhanghai.android.materialprogressbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import me.zhanghai.android.materialprogressbar.IntrinsicPaddingDrawable;
import me.zhanghai.android.materialprogressbar.ShowBackgroundDrawable;
import me.zhanghai.android.materialprogressbar.TintableDrawable;
import me.zhanghai.android.materialprogressbar.internal.ThemeUtils;

class BaseProgressLayerDrawable<ProgressDrawableType extends IntrinsicPaddingDrawable & ShowBackgroundDrawable & TintableDrawable, BackgroundDrawableType extends IntrinsicPaddingDrawable & ShowBackgroundDrawable & TintableDrawable> extends LayerDrawable implements IntrinsicPaddingDrawable, MaterialProgressDrawable, ShowBackgroundDrawable, TintableDrawable {
    private float mBackgroundAlpha;
    private BackgroundDrawableType mBackgroundDrawable = ((IntrinsicPaddingDrawable) getDrawable(0));
    private ProgressDrawableType mProgressDrawable;
    private ProgressDrawableType mSecondaryProgressDrawable;

    public BaseProgressLayerDrawable(Drawable[] drawableArr, Context context) {
        super(drawableArr);
        this.mBackgroundAlpha = ThemeUtils.getFloatFromAttrRes(16842803, 0.0f, context);
        setId(0, 16908288);
        setId(1, 16908303);
        this.mSecondaryProgressDrawable = (IntrinsicPaddingDrawable) getDrawable(1);
        setId(2, 16908301);
        this.mProgressDrawable = (IntrinsicPaddingDrawable) getDrawable(2);
        setTint(ThemeUtils.getColorFromAttrRes(R.attr.colorControlActivated, ViewCompat.MEASURED_STATE_MASK, context));
    }

    public boolean getShowBackground() {
        return ((ShowBackgroundDrawable) this.mBackgroundDrawable).getShowBackground();
    }

    public void setShowBackground(boolean z) {
        if (((ShowBackgroundDrawable) this.mBackgroundDrawable).getShowBackground() != z) {
            ((ShowBackgroundDrawable) this.mBackgroundDrawable).setShowBackground(z);
            ((ShowBackgroundDrawable) this.mSecondaryProgressDrawable).setShowBackground(!z);
        }
    }

    public boolean getUseIntrinsicPadding() {
        return this.mBackgroundDrawable.getUseIntrinsicPadding();
    }

    public void setUseIntrinsicPadding(boolean z) {
        this.mBackgroundDrawable.setUseIntrinsicPadding(z);
        this.mSecondaryProgressDrawable.setUseIntrinsicPadding(z);
        this.mProgressDrawable.setUseIntrinsicPadding(z);
    }

    @SuppressLint({"NewApi"})
    public void setTint(@ColorInt int i) {
        int alphaComponent = ColorUtils.setAlphaComponent(i, Math.round(((float) Color.alpha(i)) * this.mBackgroundAlpha));
        ((TintableDrawable) this.mBackgroundDrawable).setTint(alphaComponent);
        ((TintableDrawable) this.mSecondaryProgressDrawable).setTint(alphaComponent);
        ((TintableDrawable) this.mProgressDrawable).setTint(i);
    }

    @SuppressLint({"NewApi"})
    public void setTintList(@Nullable ColorStateList colorStateList) {
        ColorStateList colorStateList2;
        if (colorStateList != null) {
            if (!colorStateList.isOpaque()) {
                Log.w(getClass().getSimpleName(), "setTintList() called with a non-opaque ColorStateList, its original alpha will be discarded");
            }
            colorStateList2 = colorStateList.withAlpha(Math.round(255.0f * this.mBackgroundAlpha));
        } else {
            colorStateList2 = null;
        }
        ((TintableDrawable) this.mBackgroundDrawable).setTintList(colorStateList2);
        ((TintableDrawable) this.mSecondaryProgressDrawable).setTintList(colorStateList2);
        ((TintableDrawable) this.mProgressDrawable).setTintList(colorStateList);
    }

    @SuppressLint({"NewApi"})
    public void setTintMode(@NonNull Mode mode) {
        ((TintableDrawable) this.mBackgroundDrawable).setTintMode(mode);
        ((TintableDrawable) this.mSecondaryProgressDrawable).setTintMode(mode);
        ((TintableDrawable) this.mProgressDrawable).setTintMode(mode);
    }
}
