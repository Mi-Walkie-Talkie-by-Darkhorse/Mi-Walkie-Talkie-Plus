package com.ifengyu.library.widget.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.util.AttributeSet;
import android.view.View;

public class RecyclerViewEmptySupport extends RecyclerView {
    private View a;
    private int b = 0;
    private final AdapterDataObserver c = new AdapterDataObserver() {
        public void onChanged() {
            RecyclerViewEmptySupport.this.a();
        }

        public void onItemRangeInserted(int i, int i2) {
            RecyclerViewEmptySupport.this.a();
        }

        public void onItemRangeRemoved(int i, int i2) {
            RecyclerViewEmptySupport.this.a();
        }
    };
    private a d;

    public interface a {
        void a();

        void b();
    }

    public RecyclerViewEmptySupport(Context context) {
        super(context);
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setFootOrHeaderNum(int i) {
        this.b = i;
    }

    public void setAdapter(Adapter adapter) {
        Adapter adapter2 = getAdapter();
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.c);
        }
        super.setAdapter(adapter);
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.c);
        }
        a();
    }

    public void setOnEmptyLayoutListener(a aVar) {
        this.d = aVar;
    }

    public void setEmptyView(View view) {
        this.a = view;
        a();
    }

    /* access modifiers changed from: private */
    public void a() {
        int i;
        int i2 = 8;
        boolean z = true;
        if (!(this.a == null || getAdapter() == null)) {
            boolean z2 = getAdapter().getItemCount() == this.b;
            View view = this.a;
            if (z2) {
                i = 0;
            } else {
                i = 8;
            }
            view.setVisibility(i);
            if (!z2) {
                i2 = 0;
            }
            setVisibility(i2);
        }
        if (this.d != null && getAdapter() != null) {
            if (getAdapter().getItemCount() != 0) {
                z = false;
            }
            if (z) {
                this.d.a();
            } else {
                this.d.b();
            }
        }
    }
}
