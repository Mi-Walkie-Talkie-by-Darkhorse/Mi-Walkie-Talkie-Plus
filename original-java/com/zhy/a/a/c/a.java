package com.zhy.a.a.c;

import android.support.v4.util.SparseArrayCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import com.zhy.a.a.a.c;
import com.zhy.a.a.b.a.C0077a;

/* compiled from: HeaderAndFooterWrapper */
public class a<T> extends Adapter<ViewHolder> {
    /* access modifiers changed from: private */
    public SparseArrayCompat<View> a = new SparseArrayCompat<>();
    /* access modifiers changed from: private */
    public SparseArrayCompat<View> b = new SparseArrayCompat<>();
    private Adapter c;

    public a(Adapter adapter) {
        this.c = adapter;
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.a.get(i) != null) {
            return c.a(viewGroup.getContext(), (View) this.a.get(i));
        }
        if (this.b.get(i) != null) {
            return c.a(viewGroup.getContext(), (View) this.b.get(i));
        }
        return this.c.onCreateViewHolder(viewGroup, i);
    }

    public int getItemViewType(int i) {
        if (a(i)) {
            return this.a.keyAt(i);
        }
        if (b(i)) {
            return this.b.keyAt((i - a()) - c());
        }
        return this.c.getItemViewType(i - a());
    }

    private int c() {
        return this.c.getItemCount();
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (!a(i) && !b(i)) {
            this.c.onBindViewHolder(viewHolder, i - a());
        }
    }

    public int getItemCount() {
        return a() + b() + c();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        com.zhy.a.a.b.a.a(this.c, recyclerView, new C0077a() {
            public int a(GridLayoutManager gridLayoutManager, SpanSizeLookup spanSizeLookup, int i) {
                int itemViewType = a.this.getItemViewType(i);
                if (a.this.a.get(itemViewType) != null) {
                    return gridLayoutManager.getSpanCount();
                }
                if (a.this.b.get(itemViewType) != null) {
                    return gridLayoutManager.getSpanCount();
                }
                if (spanSizeLookup != null) {
                    return spanSizeLookup.getSpanSize(i);
                }
                return 1;
            }
        });
    }

    public void onViewAttachedToWindow(ViewHolder viewHolder) {
        this.c.onViewAttachedToWindow(viewHolder);
        int layoutPosition = viewHolder.getLayoutPosition();
        if (a(layoutPosition) || b(layoutPosition)) {
            com.zhy.a.a.b.a.a(viewHolder);
        }
    }

    private boolean a(int i) {
        return i < a();
    }

    private boolean b(int i) {
        return i >= a() + c();
    }

    public void a(View view) {
        this.b.put(this.b.size() + 200000, view);
    }

    public int a() {
        return this.a.size();
    }

    public int b() {
        return this.b.size();
    }
}
