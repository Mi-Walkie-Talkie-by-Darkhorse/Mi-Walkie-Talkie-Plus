package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

class FloatingActionButtonGingerbread extends FloatingActionButtonImpl {
    ShadowDrawableWrapper mShadowDrawable;
    private final StateListAnimator mStateListAnimator = new StateListAnimator();

    private class DisabledElevationAnimation extends ShadowAnimatorImpl {
        DisabledElevationAnimation() {
            super();
        }

        /* access modifiers changed from: protected */
        public float getTargetShadowSize() {
            return 0.0f;
        }
    }

    private class ElevateToTranslationZAnimation extends ShadowAnimatorImpl {
        ElevateToTranslationZAnimation() {
            super();
        }

        /* access modifiers changed from: protected */
        public float getTargetShadowSize() {
            return FloatingActionButtonGingerbread.this.mElevation + FloatingActionButtonGingerbread.this.mPressedTranslationZ;
        }
    }

    private class ResetElevationAnimation extends ShadowAnimatorImpl {
        ResetElevationAnimation() {
            super();
        }

        /* access modifiers changed from: protected */
        public float getTargetShadowSize() {
            return FloatingActionButtonGingerbread.this.mElevation;
        }
    }

    private abstract class ShadowAnimatorImpl extends AnimatorListenerAdapter implements AnimatorUpdateListener {
        private float mShadowSizeEnd;
        private float mShadowSizeStart;
        private boolean mValidValues;

        /* access modifiers changed from: protected */
        public abstract float getTargetShadowSize();

        private ShadowAnimatorImpl() {
        }

        public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
            if (!this.mValidValues) {
                this.mShadowSizeStart = FloatingActionButtonGingerbread.this.mShadowDrawable.getShadowSize();
                this.mShadowSizeEnd = getTargetShadowSize();
                this.mValidValues = true;
            }
            FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeStart + ((this.mShadowSizeEnd - this.mShadowSizeStart) * valueAnimatorCompat.getAnimatedFraction()));
        }

        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
            FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeEnd);
            this.mValidValues = false;
        }
    }

    FloatingActionButtonGingerbread(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate, Creator creator) {
        super(visibilityAwareImageButton, shadowViewDelegate, creator);
        this.mStateListAnimator.addState(PRESSED_ENABLED_STATE_SET, createAnimator(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, createAnimator(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(ENABLED_STATE_SET, createAnimator(new ResetElevationAnimation()));
        this.mStateListAnimator.addState(EMPTY_STATE_SET, createAnimator(new DisabledElevationAnimation()));
    }

    /* access modifiers changed from: 0000 */
    public void setBackgroundDrawable(ColorStateList colorStateList, Mode mode, int i, int i2) {
        Drawable[] drawableArr;
        this.mShapeDrawable = DrawableCompat.wrap(createShapeDrawable());
        DrawableCompat.setTintList(this.mShapeDrawable, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.mShapeDrawable, mode);
        }
        this.mRippleDrawable = DrawableCompat.wrap(createShapeDrawable());
        DrawableCompat.setTintList(this.mRippleDrawable, createColorStateList(i));
        if (i2 > 0) {
            this.mBorderDrawable = createBorderDrawable(i2, colorStateList);
            drawableArr = new Drawable[]{this.mBorderDrawable, this.mShapeDrawable, this.mRippleDrawable};
        } else {
            this.mBorderDrawable = null;
            drawableArr = new Drawable[]{this.mShapeDrawable, this.mRippleDrawable};
        }
        this.mContentBackground = new LayerDrawable(drawableArr);
        this.mShadowDrawable = new ShadowDrawableWrapper(this.mView.getContext(), this.mContentBackground, this.mShadowViewDelegate.getRadius(), this.mElevation, this.mElevation + this.mPressedTranslationZ);
        this.mShadowDrawable.setAddPaddingForCorners(false);
        this.mShadowViewDelegate.setBackgroundDrawable(this.mShadowDrawable);
    }

    /* access modifiers changed from: 0000 */
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.mShapeDrawable != null) {
            DrawableCompat.setTintList(this.mShapeDrawable, colorStateList);
        }
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setBorderTint(colorStateList);
        }
    }

    /* access modifiers changed from: 0000 */
    public void setBackgroundTintMode(Mode mode) {
        if (this.mShapeDrawable != null) {
            DrawableCompat.setTintMode(this.mShapeDrawable, mode);
        }
    }

    /* access modifiers changed from: 0000 */
    public void setRippleColor(int i) {
        if (this.mRippleDrawable != null) {
            DrawableCompat.setTintList(this.mRippleDrawable, createColorStateList(i));
        }
    }

    /* access modifiers changed from: 0000 */
    public float getElevation() {
        return this.mElevation;
    }

    /* access modifiers changed from: 0000 */
    public void onElevationsChanged(float f, float f2) {
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setShadowSize(f, this.mPressedTranslationZ + f);
            updatePadding();
        }
    }

    /* access modifiers changed from: 0000 */
    public void onDrawableStateChanged(int[] iArr) {
        this.mStateListAnimator.setState(iArr);
    }

    /* access modifiers changed from: 0000 */
    public void jumpDrawableToCurrentState() {
        this.mStateListAnimator.jumpToCurrentState();
    }

    /* access modifiers changed from: 0000 */
    public void hide(@Nullable final InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean z) {
        if (!isOrWillBeHidden()) {
            this.mAnimState = 1;
            Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_fab_out);
            loadAnimation.setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
            loadAnimation.setDuration(200);
            loadAnimation.setAnimationListener(new AnimationListenerAdapter() {
                public void onAnimationEnd(Animation animation) {
                    FloatingActionButtonGingerbread.this.mAnimState = 0;
                    FloatingActionButtonGingerbread.this.mView.internalSetVisibility(z ? 8 : 4, z);
                    if (internalVisibilityChangedListener != null) {
                        internalVisibilityChangedListener.onHidden();
                    }
                }
            });
            this.mView.startAnimation(loadAnimation);
        }
    }

    /* access modifiers changed from: 0000 */
    public void show(@Nullable final InternalVisibilityChangedListener internalVisibilityChangedListener, boolean z) {
        if (!isOrWillBeShown()) {
            this.mAnimState = 2;
            this.mView.internalSetVisibility(0, z);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_fab_in);
            loadAnimation.setDuration(200);
            loadAnimation.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
            loadAnimation.setAnimationListener(new AnimationListenerAdapter() {
                public void onAnimationEnd(Animation animation) {
                    FloatingActionButtonGingerbread.this.mAnimState = 0;
                    if (internalVisibilityChangedListener != null) {
                        internalVisibilityChangedListener.onShown();
                    }
                }
            });
            this.mView.startAnimation(loadAnimation);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onCompatShadowChanged() {
    }

    /* access modifiers changed from: 0000 */
    public void getPadding(Rect rect) {
        this.mShadowDrawable.getPadding(rect);
    }

    private ValueAnimatorCompat createAnimator(@NonNull ShadowAnimatorImpl shadowAnimatorImpl) {
        ValueAnimatorCompat createAnimator = this.mAnimatorCreator.createAnimator();
        createAnimator.setInterpolator(ANIM_INTERPOLATOR);
        createAnimator.setDuration(100);
        createAnimator.addListener(shadowAnimatorImpl);
        createAnimator.addUpdateListener(shadowAnimatorImpl);
        createAnimator.setFloatValues(0.0f, 1.0f);
        return createAnimator;
    }

    private static ColorStateList createColorStateList(int i) {
        return new ColorStateList(new int[][]{FOCUSED_ENABLED_STATE_SET, PRESSED_ENABLED_STATE_SET, new int[0]}, new int[]{i, i, 0});
    }
}
