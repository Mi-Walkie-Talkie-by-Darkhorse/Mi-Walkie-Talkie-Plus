package com.zhy.a.a.b;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.view.ViewGroup.LayoutParams;

/* compiled from: WrapperUtils */
public class a {

    /* renamed from: com.zhy.a.a.b.a$a reason: collision with other inner class name */
    /* compiled from: WrapperUtils */
    public interface C0077a {
        int a(GridLayoutManager gridLayoutManager, SpanSizeLookup spanSizeLookup, int i);
    }

    public static void a(Adapter adapter, RecyclerView recyclerView, final C0077a aVar) {
        adapter.onAttachedToRecyclerView(recyclerView);
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new SpanSizeLookup() {
                public int getSpanSize(int i) {
                    return aVar.a(gridLayoutManager, spanSizeLookup, i);
                }
            });
            gridLayoutManager.setSpanCount(gridLayoutManager.getSpanCount());
        }
    }

    public static void a(ViewHolder viewHolder) {
        LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }
}
