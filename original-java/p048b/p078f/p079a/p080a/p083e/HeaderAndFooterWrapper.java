package p048b.p078f.p079a.p080a.p083e;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import p000a.p006b.SparseArrayCompat;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;
import p048b.p078f.p079a.p080a.p082d.WrapperUtils;

/* renamed from: b.f.a.a.e.a */
/* loaded from: classes.dex */
public class HeaderAndFooterWrapper<T> extends RecyclerView.Adapter<RecyclerView.AbstractC0849y> {

    /* renamed from: a */
    private SparseArrayCompat<View> f5385a = new SparseArrayCompat<>();

    /* renamed from: b */
    private SparseArrayCompat<View> f5386b = new SparseArrayCompat<>();

    /* renamed from: c */
    private RecyclerView.Adapter f5387c;

    /* compiled from: HeaderAndFooterWrapper.java */
    /* renamed from: b.f.a.a.e.a$a */
    /* loaded from: classes.dex */
    class C1149a implements WrapperUtils.InterfaceC1148b {
        C1149a() {
        }

        @Override // p048b.p078f.p079a.p080a.p082d.WrapperUtils.InterfaceC1148b
        /* renamed from: a */
        public int mo20970a(GridLayoutManager gridLayoutManager, GridLayoutManager.AbstractC0810b abstractC0810b, int i) {
            int itemViewType = HeaderAndFooterWrapper.this.getItemViewType(i);
            if (HeaderAndFooterWrapper.this.f5385a.m26447e(itemViewType) == null) {
                if (HeaderAndFooterWrapper.this.f5386b.m26447e(itemViewType) != null) {
                    return gridLayoutManager.m22489k();
                }
                if (abstractC0810b != null) {
                    return abstractC0810b.mo17009f(i);
                }
                return 1;
            }
            return gridLayoutManager.m22489k();
        }
    }

    public HeaderAndFooterWrapper(RecyclerView.Adapter adapter) {
        this.f5387c = adapter;
    }

    /* renamed from: j */
    private int m20973j() {
        return this.f5387c.getItemCount();
    }

    /* renamed from: k */
    private boolean m20972k(int i) {
        return i >= m20974i() + m20973j();
    }

    /* renamed from: l */
    private boolean m20971l(int i) {
        return i < m20974i();
    }

    /* renamed from: g */
    public void m20976g(View view) {
        SparseArrayCompat<View> sparseArrayCompat = this.f5386b;
        sparseArrayCompat.m26443i(sparseArrayCompat.m26441k() + 200000, view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return m20974i() + m20975h() + m20973j();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (m20971l(i)) {
            return this.f5385a.m26444h(i);
        }
        if (m20972k(i)) {
            return this.f5386b.m26444h((i - m20974i()) - m20973j());
        }
        return this.f5387c.getItemViewType(i - m20974i());
    }

    /* renamed from: h */
    public int m20975h() {
        return this.f5386b.m26441k();
    }

    /* renamed from: i */
    public int m20974i() {
        return this.f5385a.m26441k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        WrapperUtils.m20980a(this.f5387c, recyclerView, new C1149a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.AbstractC0849y abstractC0849y, int i) {
        if (m20971l(i) || m20972k(i)) {
            return;
        }
        this.f5387c.onBindViewHolder(abstractC0849y, i - m20974i());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.AbstractC0849y onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.f5385a.m26447e(i) != null) {
            return ViewHolder.m20983a(viewGroup.getContext(), this.f5385a.m26447e(i));
        }
        if (this.f5386b.m26447e(i) != null) {
            return ViewHolder.m20983a(viewGroup.getContext(), this.f5386b.m26447e(i));
        }
        return this.f5387c.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.AbstractC0849y abstractC0849y) {
        this.f5387c.onViewAttachedToWindow(abstractC0849y);
        int layoutPosition = abstractC0849y.getLayoutPosition();
        if (m20971l(layoutPosition) || m20972k(layoutPosition)) {
            WrapperUtils.m20979b(abstractC0849y);
        }
    }
}
