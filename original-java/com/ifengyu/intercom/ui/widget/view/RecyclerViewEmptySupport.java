package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class RecyclerViewEmptySupport extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private View f7077a;

    /* renamed from: b  reason: collision with root package name */
    private int f7078b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView.i f7079c = new a();

    /* loaded from: classes2.dex */
    class a extends RecyclerView.i {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onChanged() {
            RecyclerViewEmptySupport.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeInserted(int i, int i2) {
            RecyclerViewEmptySupport.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerViewEmptySupport.this.a();
        }
    }

    public RecyclerViewEmptySupport(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.g gVar) {
        RecyclerView.g adapter = getAdapter();
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f7079c);
        }
        super.setAdapter(gVar);
        if (gVar != null) {
            gVar.registerAdapterDataObserver(this.f7079c);
        }
        a();
    }

    public void setEmptyView(View view) {
        this.f7077a = view;
        a();
    }

    public void setFootOrHeaderNum(int i) {
        this.f7078b = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f7077a != null && getAdapter() != null) {
            int i = 0;
            boolean z = getAdapter().getItemCount() == this.f7078b;
            this.f7077a.setVisibility(z ? 0 : 8);
            if (z) {
                i = 8;
            }
            setVisibility(i);
        }
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
