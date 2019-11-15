package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.LinearLayoutCompat.LayoutParams;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

@RestrictTo({Scope.LIBRARY_GROUP})
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(@Nullable Context context) {
        super(context);
    }

    public AlertDialogLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        if (!tryOnMeasure(i, i2)) {
            super.onMeasure(i, i2);
        }
    }

    private boolean tryOnMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int makeMeasureSpec;
        View view;
        View view2 = null;
        View view3 = null;
        int childCount = getChildCount();
        int i10 = 0;
        View view4 = null;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt = view3;
                view = view2;
            } else {
                int id = childAt.getId();
                if (id == R.id.topPanel) {
                    View view5 = view3;
                    view = childAt;
                    childAt = view5;
                } else if (id == R.id.buttonPanel) {
                    view = view2;
                } else if (id != R.id.contentPanel && id != R.id.customPanel) {
                    return false;
                } else {
                    if (view4 != null) {
                        return false;
                    }
                    view4 = childAt;
                    childAt = view3;
                    view = view2;
                }
            }
            i10++;
            view2 = view;
            view3 = childAt;
        }
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i2);
        int mode2 = MeasureSpec.getMode(i);
        int i11 = 0;
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view2 != null) {
            view2.measure(i, 0);
            paddingBottom += view2.getMeasuredHeight();
            i11 = ViewCompat.combineMeasuredStates(0, ViewCompat.getMeasuredState(view2));
        }
        int i12 = 0;
        if (view3 != null) {
            view3.measure(i, 0);
            i12 = resolveMinimumHeight(view3);
            int measuredHeight = view3.getMeasuredHeight() - i12;
            paddingBottom += i12;
            i11 = ViewCompat.combineMeasuredStates(i11, ViewCompat.getMeasuredState(view3));
            i3 = measuredHeight;
        } else {
            i3 = 0;
        }
        if (view4 != null) {
            if (mode == 0) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode);
            }
            view4.measure(i, makeMeasureSpec);
            int measuredHeight2 = view4.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            i11 = ViewCompat.combineMeasuredStates(i11, ViewCompat.getMeasuredState(view4));
            i4 = measuredHeight2;
        } else {
            i4 = 0;
        }
        int i13 = size - paddingBottom;
        if (view3 != null) {
            int i14 = paddingBottom - i12;
            int min = Math.min(i13, i3);
            if (min > 0) {
                i13 -= min;
                i12 += min;
            }
            view3.measure(i, MeasureSpec.makeMeasureSpec(i12, 1073741824));
            int measuredHeight3 = view3.getMeasuredHeight() + i14;
            i6 = ViewCompat.combineMeasuredStates(i11, ViewCompat.getMeasuredState(view3));
            int i15 = i13;
            i7 = measuredHeight3;
            i5 = i15;
        } else {
            i5 = i13;
            i6 = i11;
            i7 = paddingBottom;
        }
        if (view4 == null || i5 <= 0) {
            i8 = i7;
            i9 = i6;
        } else {
            int i16 = i7 - i4;
            int i17 = i5 - i5;
            view4.measure(i, MeasureSpec.makeMeasureSpec(i5 + i4, mode));
            int measuredHeight4 = i16 + view4.getMeasuredHeight();
            i9 = ViewCompat.combineMeasuredStates(i6, ViewCompat.getMeasuredState(view4));
            i8 = measuredHeight4;
        }
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt2 = getChildAt(i19);
            if (childAt2.getVisibility() != 8) {
                i18 = Math.max(i18, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(ViewCompat.resolveSizeAndState(i18 + getPaddingLeft() + getPaddingRight(), i, i9), ViewCompat.resolveSizeAndState(i8, i2, 0));
        if (mode2 != 1073741824) {
            forceUniformWidth(childCount, i2);
        }
        return true;
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private static int resolveMinimumHeight(View view) {
        int minimumHeight = ViewCompat.getMinimumHeight(view);
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return resolveMinimumHeight(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int intrinsicHeight;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i8 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        switch (gravity & 112) {
            case 16:
                paddingTop = (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - measuredHeight;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        Drawable dividerDrawable = getDividerDrawable();
        if (dividerDrawable == null) {
            intrinsicHeight = 0;
        } else {
            intrinsicHeight = dividerDrawable.getIntrinsicHeight();
        }
        int i9 = paddingTop;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (!(childAt == null || childAt.getVisibility() == 8)) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i11 = layoutParams.gravity;
                if (i11 < 0) {
                    i11 = i8;
                }
                switch (GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this)) & 7) {
                    case 1:
                        i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                        break;
                    case 5:
                        i5 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                        break;
                    default:
                        i5 = paddingLeft + layoutParams.leftMargin;
                        break;
                }
                if (hasDividerBeforeChildAt(i10)) {
                    i6 = i9 + intrinsicHeight;
                } else {
                    i6 = i9;
                }
                int i12 = layoutParams.topMargin + i6;
                setChildFrame(childAt, i5, i12, measuredWidth, measuredHeight2);
                i9 = i12 + layoutParams.bottomMargin + measuredHeight2;
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }
}
