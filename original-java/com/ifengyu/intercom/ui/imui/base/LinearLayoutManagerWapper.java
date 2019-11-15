package com.ifengyu.intercom.ui.imui.base;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class LinearLayoutManagerWapper extends LinearLayoutManager {
    public LinearLayoutManagerWapper(Context context) {
        super(context);
    }

    public LinearLayoutManagerWapper(Context context, int i, boolean z) {
        super(context, i, z);
    }

    public LinearLayoutManagerWapper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IndexOutOfBoundsException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }
}
