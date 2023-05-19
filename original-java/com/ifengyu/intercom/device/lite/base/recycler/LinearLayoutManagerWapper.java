package com.ifengyu.intercom.device.lite.base.recycler;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class LinearLayoutManagerWapper extends LinearLayoutManager {
    public LinearLayoutManagerWapper(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.C0840r c0840r, RecyclerView.C0846v c0846v) {
        try {
            super.onLayoutChildren(c0840r, c0846v);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
        }
    }

    public LinearLayoutManagerWapper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
