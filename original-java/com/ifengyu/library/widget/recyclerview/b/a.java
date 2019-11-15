package com.ifengyu.library.widget.recyclerview.b;

import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.view.View;

/* compiled from: SpacingDecoration */
public class a extends ItemDecoration {
    private int a = 0;
    private int b = 0;
    private boolean c = false;

    public a(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = z;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
            int spanCount = ((GridLayoutManager) recyclerView.getLayoutManager()).getSpanCount();
            a(rect, childAdapterPosition, childAdapterPosition % spanCount, spanCount);
        } else if (recyclerView.getLayoutManager() instanceof StaggeredGridLayoutManager) {
            a(rect, childAdapterPosition, ((LayoutParams) view.getLayoutParams()).getSpanIndex(), ((StaggeredGridLayoutManager) recyclerView.getLayoutManager()).getSpanCount());
        } else if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            rect.left = this.a;
            rect.right = this.a;
            if (this.c) {
                if (childAdapterPosition == 0) {
                    rect.top = this.b;
                }
                rect.bottom = this.b;
            } else if (childAdapterPosition > 0) {
                rect.top = this.b;
            }
        }
    }

    private void a(Rect rect, int i, int i2, int i3) {
        if (this.c) {
            rect.left = (this.a * (i3 - i2)) / i3;
            rect.right = (this.a * (i2 + 1)) / i3;
            if (i < i3) {
                rect.top = this.b;
            }
            rect.bottom = this.b;
            return;
        }
        rect.left = (this.a * i2) / i3;
        rect.right = (this.a * ((i3 - 1) - i2)) / i3;
        if (i >= i3) {
            rect.top = this.b;
        }
    }
}
