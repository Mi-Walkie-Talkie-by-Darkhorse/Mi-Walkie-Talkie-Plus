package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class SquareFrameLayout extends FrameLayout {
    public SquareFrameLayout(Context context) {
        super(context);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3;
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (size == 0 && size2 == 0) {
            super.onMeasure(i, i2);
            int min = Math.min(getMeasuredWidth(), getMeasuredHeight());
            setMeasuredDimension(min, min);
            return;
        }
        if (size == 0 || size2 == 0) {
            i3 = Math.max(size, size2);
        } else {
            i3 = Math.min(size, size2);
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }
}
