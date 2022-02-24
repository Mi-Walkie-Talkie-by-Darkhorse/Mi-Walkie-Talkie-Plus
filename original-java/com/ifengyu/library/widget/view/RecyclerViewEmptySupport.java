package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class RecyclerViewEmptySupport extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private View f7215a;

    /* renamed from: b  reason: collision with root package name */
    private int f7216b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView.i f7217c = new a();
    private b d;

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

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void b();
    }

    public RecyclerViewEmptySupport(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.g gVar) {
        RecyclerView.g adapter = getAdapter();
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f7217c);
        }
        super.setAdapter(gVar);
        if (gVar != null) {
            gVar.registerAdapterDataObserver(this.f7217c);
        }
        a();
    }

    public void setEmptyView(View view) {
        this.f7215a = view;
        a();
    }

    public void setFootOrHeaderNum(int i) {
        this.f7216b = i;
    }

    public void setOnEmptyLayoutListener(b bVar) {
        this.d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        boolean z = true;
        if (!(this.f7215a == null || getAdapter() == null)) {
            boolean z2 = getAdapter().getItemCount() == this.f7216b;
            int i = 8;
            this.f7215a.setVisibility(z2 ? 0 : 8);
            if (!z2) {
                i = 0;
            }
            setVisibility(i);
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

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerViewEmptySupport(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
