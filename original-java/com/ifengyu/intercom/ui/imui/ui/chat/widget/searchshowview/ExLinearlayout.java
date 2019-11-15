package com.ifengyu.intercom.ui.imui.ui.chat.widget.searchshowview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;

public class ExLinearlayout extends LinearLayout {
    private int editTextRetainWidth;
    private int mTotalHeigth;
    private int mTotalWidth;

    public ExLinearlayout(Context context) {
        super(context);
    }

    public ExLinearlayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ExLinearlayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mTotalWidth = MeasureSpec.getSize(i);
        this.mTotalHeigth = MeasureSpec.getSize(i2);
        this.editTextRetainWidth = (int) (((double) this.mTotalWidth) * 0.4d);
        if (getChildCount() == 2) {
            View childAt = getChildAt(0);
            View childAt2 = getChildAt(1);
            if (this.mTotalWidth - childAt.getMeasuredWidth() < this.editTextRetainWidth) {
                childAt.measure(MeasureSpec.makeMeasureSpec(this.mTotalWidth - this.editTextRetainWidth, 1073741824), 0);
                childAt2.measure(MeasureSpec.makeMeasureSpec(this.editTextRetainWidth, 1073741824), i2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Log.d(getClass().getSimpleName(), "孩子有" + getChildCount());
        if (getChildCount() != 2) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        View childAt = getChildAt(0);
        View childAt2 = getChildAt(1);
        if (this.mTotalWidth - childAt.getMeasuredWidth() < this.editTextRetainWidth) {
            childAt.layout(i, i2, (this.mTotalWidth + i) - this.editTextRetainWidth, i4);
            childAt2.layout(i3 - this.editTextRetainWidth, i2, i3, i4);
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }
}
