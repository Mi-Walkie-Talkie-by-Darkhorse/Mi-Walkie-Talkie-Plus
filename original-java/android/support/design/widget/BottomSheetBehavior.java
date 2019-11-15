package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

public class BottomSheetBehavior<V extends View> extends Behavior<V> {
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int mActivePointerId;
    private BottomSheetCallback mCallback;
    private final Callback mDragCallback = new Callback() {
        public boolean tryCaptureView(View view, int i) {
            if (BottomSheetBehavior.this.mState == 1 || BottomSheetBehavior.this.mTouchingScrollingChild) {
                return false;
            }
            if (BottomSheetBehavior.this.mState == 3 && BottomSheetBehavior.this.mActivePointerId == i) {
                View view2 = (View) BottomSheetBehavior.this.mNestedScrollingChildRef.get();
                if (view2 != null && ViewCompat.canScrollVertically(view2, -1)) {
                    return false;
                }
            }
            return BottomSheetBehavior.this.mViewRef != null && BottomSheetBehavior.this.mViewRef.get() == view;
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.dispatchOnSlide(i2);
        }

        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.setStateInternal(1);
            }
        }

        public void onViewReleased(View view, float f, float f2) {
            int i;
            int i2 = 3;
            if (f2 < 0.0f) {
                i = BottomSheetBehavior.this.mMinOffset;
            } else if (BottomSheetBehavior.this.mHideable && BottomSheetBehavior.this.shouldHide(view, f2)) {
                i = BottomSheetBehavior.this.mParentHeight;
                i2 = 5;
            } else if (f2 == 0.0f) {
                int top = view.getTop();
                if (Math.abs(top - BottomSheetBehavior.this.mMinOffset) < Math.abs(top - BottomSheetBehavior.this.mMaxOffset)) {
                    i = BottomSheetBehavior.this.mMinOffset;
                } else {
                    i = BottomSheetBehavior.this.mMaxOffset;
                    i2 = 4;
                }
            } else {
                i = BottomSheetBehavior.this.mMaxOffset;
                i2 = 4;
            }
            if (BottomSheetBehavior.this.mViewDragHelper.settleCapturedViewAt(view.getLeft(), i)) {
                BottomSheetBehavior.this.setStateInternal(2);
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, i2));
                return;
            }
            BottomSheetBehavior.this.setStateInternal(i2);
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return MathUtils.constrain(i, BottomSheetBehavior.this.mMinOffset, BottomSheetBehavior.this.mHideable ? BottomSheetBehavior.this.mParentHeight : BottomSheetBehavior.this.mMaxOffset);
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return view.getLeft();
        }

        public int getViewVerticalDragRange(View view) {
            if (BottomSheetBehavior.this.mHideable) {
                return BottomSheetBehavior.this.mParentHeight - BottomSheetBehavior.this.mMinOffset;
            }
            return BottomSheetBehavior.this.mMaxOffset - BottomSheetBehavior.this.mMinOffset;
        }
    };
    boolean mHideable;
    private boolean mIgnoreEvents;
    private int mInitialY;
    private int mLastNestedScrollDy;
    int mMaxOffset;
    private float mMaximumVelocity;
    int mMinOffset;
    private boolean mNestedScrolled;
    WeakReference<View> mNestedScrollingChildRef;
    int mParentHeight;
    private int mPeekHeight;
    private boolean mPeekHeightAuto;
    private int mPeekHeightMin;
    private boolean mSkipCollapsed;
    int mState = 4;
    boolean mTouchingScrollingChild;
    private VelocityTracker mVelocityTracker;
    ViewDragHelper mViewDragHelper;
    WeakReference<V> mViewRef;

    public static abstract class BottomSheetCallback {
        public abstract void onSlide(@NonNull View view, float f);

        public abstract void onStateChanged(@NonNull View view, int i);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        });
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    private class SettleRunnable implements Runnable {
        private final int mTargetState;
        private final View mView;

        SettleRunnable(View view, int i) {
            this.mView = view;
            this.mTargetState = i;
        }

        public void run() {
            if (BottomSheetBehavior.this.mViewDragHelper == null || !BottomSheetBehavior.this.mViewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.setStateInternal(this.mTargetState);
            } else {
                ViewCompat.postOnAnimation(this.mView, this);
            }
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public BottomSheetBehavior() {
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            setPeekHeight(peekValue.data);
        }
        setHideable(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.mMaximumVelocity = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.mState);
    }

    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        if (savedState.state == 1 || savedState.state == 2) {
            this.mState = 4;
        } else {
            this.mState = savedState.state;
        }
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        int i2;
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            ViewCompat.setFitsSystemWindows(v, true);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.mParentHeight = coordinatorLayout.getHeight();
        if (this.mPeekHeightAuto) {
            if (this.mPeekHeightMin == 0) {
                this.mPeekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            i2 = Math.max(this.mPeekHeightMin, this.mParentHeight - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            i2 = this.mPeekHeight;
        }
        this.mMinOffset = Math.max(0, this.mParentHeight - v.getHeight());
        this.mMaxOffset = Math.max(this.mParentHeight - i2, this.mMinOffset);
        if (this.mState == 3) {
            ViewCompat.offsetTopAndBottom(v, this.mMinOffset);
        } else if (this.mHideable && this.mState == 5) {
            ViewCompat.offsetTopAndBottom(v, this.mParentHeight);
        } else if (this.mState == 4) {
            ViewCompat.offsetTopAndBottom(v, this.mMaxOffset);
        } else if (this.mState == 1 || this.mState == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        if (this.mViewDragHelper == null) {
            this.mViewDragHelper = ViewDragHelper.create(coordinatorLayout, this.mDragCallback);
        }
        this.mViewRef = new WeakReference<>(v);
        this.mNestedScrollingChildRef = new WeakReference<>(findScrollingChild(v));
        return true;
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = true;
        if (!v.isShown()) {
            this.mIgnoreEvents = true;
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                int x = (int) motionEvent.getX();
                this.mInitialY = (int) motionEvent.getY();
                View view = (View) this.mNestedScrollingChildRef.get();
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.mInitialY)) {
                    this.mActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.mTouchingScrollingChild = true;
                }
                this.mIgnoreEvents = this.mActivePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.mInitialY);
                break;
            case 1:
            case 3:
                this.mTouchingScrollingChild = false;
                this.mActivePointerId = -1;
                if (this.mIgnoreEvents) {
                    this.mIgnoreEvents = false;
                    return false;
                }
                break;
        }
        if (!this.mIgnoreEvents && this.mViewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        View view2 = (View) this.mNestedScrollingChildRef.get();
        if (actionMasked != 2 || view2 == null || this.mIgnoreEvents || this.mState == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || Math.abs(((float) this.mInitialY) - motionEvent.getY()) <= ((float) this.mViewDragHelper.getTouchSlop())) {
            z = false;
        }
        return z;
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.mState == 1 && actionMasked == 0) {
            return true;
        }
        this.mViewDragHelper.processTouchEvent(motionEvent);
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.mIgnoreEvents && Math.abs(((float) this.mInitialY) - motionEvent.getY()) > ((float) this.mViewDragHelper.getTouchSlop())) {
            this.mViewDragHelper.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        if (this.mIgnoreEvents) {
            return false;
        }
        return true;
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        this.mLastNestedScrollDy = 0;
        this.mNestedScrolled = false;
        if ((i & 2) != 0) {
            return true;
        }
        return false;
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        if (view == ((View) this.mNestedScrollingChildRef.get())) {
            int top = v.getTop();
            int i3 = top - i2;
            if (i2 > 0) {
                if (i3 < this.mMinOffset) {
                    iArr[1] = top - this.mMinOffset;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    setStateInternal(3);
                } else {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    setStateInternal(1);
                }
            } else if (i2 < 0 && !ViewCompat.canScrollVertically(view, -1)) {
                if (i3 <= this.mMaxOffset || this.mHideable) {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    setStateInternal(1);
                } else {
                    iArr[1] = top - this.mMaxOffset;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    setStateInternal(4);
                }
            }
            dispatchOnSlide(v.getTop());
            this.mLastNestedScrollDy = i2;
            this.mNestedScrolled = true;
        }
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        int i;
        int i2 = 3;
        if (v.getTop() == this.mMinOffset) {
            setStateInternal(3);
        } else if (view == this.mNestedScrollingChildRef.get() && this.mNestedScrolled) {
            if (this.mLastNestedScrollDy > 0) {
                i = this.mMinOffset;
            } else if (this.mHideable && shouldHide(v, getYVelocity())) {
                i = this.mParentHeight;
                i2 = 5;
            } else if (this.mLastNestedScrollDy == 0) {
                int top = v.getTop();
                if (Math.abs(top - this.mMinOffset) < Math.abs(top - this.mMaxOffset)) {
                    i = this.mMinOffset;
                } else {
                    i = this.mMaxOffset;
                    i2 = 4;
                }
            } else {
                i = this.mMaxOffset;
                i2 = 4;
            }
            if (this.mViewDragHelper.smoothSlideViewTo(v, v.getLeft(), i)) {
                setStateInternal(2);
                ViewCompat.postOnAnimation(v, new SettleRunnable(v, i2));
            } else {
                setStateInternal(i2);
            }
            this.mNestedScrolled = false;
        }
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return view == this.mNestedScrollingChildRef.get() && (this.mState != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2));
    }

    public final void setPeekHeight(int i) {
        boolean z = true;
        if (i == -1) {
            if (!this.mPeekHeightAuto) {
                this.mPeekHeightAuto = true;
            }
            z = false;
        } else {
            if (this.mPeekHeightAuto || this.mPeekHeight != i) {
                this.mPeekHeightAuto = false;
                this.mPeekHeight = Math.max(0, i);
                this.mMaxOffset = this.mParentHeight - i;
            }
            z = false;
        }
        if (z && this.mState == 4 && this.mViewRef != null) {
            View view = (View) this.mViewRef.get();
            if (view != null) {
                view.requestLayout();
            }
        }
    }

    public final int getPeekHeight() {
        if (this.mPeekHeightAuto) {
            return -1;
        }
        return this.mPeekHeight;
    }

    public void setHideable(boolean z) {
        this.mHideable = z;
    }

    public boolean isHideable() {
        return this.mHideable;
    }

    public void setSkipCollapsed(boolean z) {
        this.mSkipCollapsed = z;
    }

    public boolean getSkipCollapsed() {
        return this.mSkipCollapsed;
    }

    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.mCallback = bottomSheetCallback;
    }

    public final void setState(final int i) {
        if (i != this.mState) {
            if (this.mViewRef != null) {
                final View view = (View) this.mViewRef.get();
                if (view != null) {
                    ViewParent parent = view.getParent();
                    if (parent == null || !parent.isLayoutRequested() || !ViewCompat.isAttachedToWindow(view)) {
                        startSettlingAnimation(view, i);
                    } else {
                        view.post(new Runnable() {
                            public void run() {
                                BottomSheetBehavior.this.startSettlingAnimation(view, i);
                            }
                        });
                    }
                }
            } else if (i == 4 || i == 3 || (this.mHideable && i == 5)) {
                this.mState = i;
            }
        }
    }

    public final int getState() {
        return this.mState;
    }

    /* access modifiers changed from: 0000 */
    public void setStateInternal(int i) {
        if (this.mState != i) {
            this.mState = i;
            View view = (View) this.mViewRef.get();
            if (view != null && this.mCallback != null) {
                this.mCallback.onStateChanged(view, i);
            }
        }
    }

    private void reset() {
        this.mActivePointerId = -1;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean shouldHide(View view, float f) {
        if (this.mSkipCollapsed) {
            return true;
        }
        if (view.getTop() < this.mMaxOffset) {
            return false;
        }
        if (Math.abs((((float) view.getTop()) + (HIDE_FRICTION * f)) - ((float) this.mMaxOffset)) / ((float) this.mPeekHeight) <= 0.5f) {
            return false;
        }
        return true;
    }

    private View findScrollingChild(View view) {
        if (view instanceof NestedScrollingChild) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
                if (findScrollingChild != null) {
                    return findScrollingChild;
                }
            }
        }
        return null;
    }

    private float getYVelocity() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        return VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
    }

    /* access modifiers changed from: 0000 */
    public void startSettlingAnimation(View view, int i) {
        int i2;
        if (i == 4) {
            i2 = this.mMaxOffset;
        } else if (i == 3) {
            i2 = this.mMinOffset;
        } else if (!this.mHideable || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.mParentHeight;
        }
        setStateInternal(2);
        if (this.mViewDragHelper.smoothSlideViewTo(view, view.getLeft(), i2)) {
            ViewCompat.postOnAnimation(view, new SettleRunnable(view, i));
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnSlide(int i) {
        View view = (View) this.mViewRef.get();
        if (view != null && this.mCallback != null) {
            if (i > this.mMaxOffset) {
                this.mCallback.onSlide(view, ((float) (this.mMaxOffset - i)) / ((float) (this.mParentHeight - this.mMaxOffset)));
            } else {
                this.mCallback.onSlide(view, ((float) (this.mMaxOffset - i)) / ((float) (this.mMaxOffset - this.mMinOffset)));
            }
        }
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public int getPeekHeightMin() {
        return this.mPeekHeightMin;
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v) {
        LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }
}
