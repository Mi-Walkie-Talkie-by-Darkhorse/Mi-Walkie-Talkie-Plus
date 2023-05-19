package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport */
/* loaded from: classes2.dex */
public class RecyclerViewEmptySupport extends RecyclerView {

    /* renamed from: a */
    private View f16265a;

    /* renamed from: b */
    private int f16266b;

    /* renamed from: c */
    private final RecyclerView.AbstractC0830i f16267c;

    /* renamed from: com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport$a */
    /* loaded from: classes2.dex */
    class C4959a extends RecyclerView.AbstractC0830i {
        C4959a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onChanged() {
            RecyclerViewEmptySupport.this.m8760d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onItemRangeInserted(int i, int i2) {
            RecyclerViewEmptySupport.this.m8760d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerViewEmptySupport.this.m8760d();
        }
    }

    public RecyclerViewEmptySupport(Context context) {
        super(context);
        this.f16266b = 0;
        this.f16267c = new C4959a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m8760d() {
        if (this.f16265a == null || getAdapter() == null) {
            return;
        }
        boolean z = getAdapter().getItemCount() == this.f16266b;
        this.f16265a.setVisibility(z ? 0 : 8);
        setVisibility(z ? 8 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = getAdapter();
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.f16267c);
        }
        super.setAdapter(adapter);
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f16267c);
        }
        m8760d();
    }

    public void setEmptyView(View view) {
        this.f16265a = view;
        m8760d();
    }

    public void setFootOrHeaderNum(int i) {
        this.f16266b = i;
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16266b = 0;
        this.f16267c = new C4959a();
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16266b = 0;
        this.f16267c = new C4959a();
    }
}
