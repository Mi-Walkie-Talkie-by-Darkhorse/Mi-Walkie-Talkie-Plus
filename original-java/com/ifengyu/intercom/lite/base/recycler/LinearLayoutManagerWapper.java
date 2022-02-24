package com.ifengyu.intercom.lite.base.recycler;

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
    public void onLayoutChildren(RecyclerView.r rVar, RecyclerView.v vVar) {
        try {
            super.onLayoutChildren(rVar, vVar);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
        }
    }

    public LinearLayoutManagerWapper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
