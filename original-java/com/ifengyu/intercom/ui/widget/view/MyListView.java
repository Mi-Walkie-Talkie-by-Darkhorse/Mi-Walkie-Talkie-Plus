package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

/* loaded from: classes2.dex */
public class MyListView extends ListView {
    public MyListView(Context context) {
        super(context);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public MyListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
