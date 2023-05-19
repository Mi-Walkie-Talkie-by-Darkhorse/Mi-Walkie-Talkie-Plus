package com.ifengyu.intercom.device.lite.base.recycler;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.lite.base.recycler.c */
/* loaded from: classes2.dex */
public abstract class BaseRecyclerAdapter2<T> extends RecyclerView.Adapter<RecyclerViewHolder> {
    @Nullable

    /* renamed from: a */
    private View f12160a;
    @Nullable

    /* renamed from: b */
    private View f12161b;

    /* renamed from: c */
    protected List<T> f12162c;

    /* renamed from: d */
    protected final Context f12163d;

    /* renamed from: e */
    protected LayoutInflater f12164e;

    /* renamed from: f */
    private int f12165f = -1;

    /* renamed from: g */
    private BitSet f12166g = new BitSet();

    /* renamed from: h */
    private int f12167h;

    /* renamed from: i */
    private InterfaceC3183a<T> f12168i;

    /* renamed from: j */
    private InterfaceC3184b<T> f12169j;

    /* compiled from: BaseRecyclerAdapter2.java */
    /* renamed from: com.ifengyu.intercom.device.lite.base.recycler.c$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC3183a<T> {
        /* renamed from: a */
        void mo13934a(View view, int i, T t);
    }

    /* compiled from: BaseRecyclerAdapter2.java */
    /* renamed from: com.ifengyu.intercom.device.lite.base.recycler.c$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC3184b<T> {
        /* renamed from: a */
        void m14192a(View view, int i, T t);
    }

    public BaseRecyclerAdapter2(Context context, List<T> list) {
        this.f12162c = list == null ? new ArrayList<>() : list;
        this.f12163d = context;
        this.f12164e = LayoutInflater.from(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m14201m(RecyclerViewHolder recyclerViewHolder, View view) {
        int layoutPosition = recyclerViewHolder.getLayoutPosition();
        if (this.f12160a != null) {
            layoutPosition--;
        }
        this.f12168i.mo13934a(recyclerViewHolder.itemView, layoutPosition, this.f12162c.get(layoutPosition));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ boolean m14199o(RecyclerViewHolder recyclerViewHolder, View view) {
        int layoutPosition = recyclerViewHolder.getLayoutPosition();
        if (this.f12160a != null) {
            layoutPosition--;
        }
        this.f12169j.m14192a(recyclerViewHolder.itemView, layoutPosition, this.f12162c.get(layoutPosition));
        return true;
    }

    /* renamed from: e */
    public abstract void mo11917e(RecyclerViewHolder recyclerViewHolder, int i, T t, boolean z);

    /* renamed from: f */
    public void m14207f() {
        m14206g();
        notifyDataSetChanged();
    }

    /* renamed from: g */
    public void m14206g() {
        if (m14203k()) {
            this.f12166g.clear();
            this.f12167h = 0;
            return;
        }
        this.f12165f = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f12162c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.f12160a == null || i != 0) {
            return (i != getItemCount() - 1 || this.f12161b == null) ? 3 : 2;
        }
        return 1;
    }

    /* renamed from: h */
    public List<T> m14205h() {
        return this.f12162c;
    }

    /* renamed from: i */
    public T m14204i(int i) {
        return this.f12162c.get(i);
    }

    /* renamed from: j */
    public abstract int mo11916j(int i);

    /* renamed from: k */
    protected boolean m14203k() {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void onBindViewHolder(@NonNull RecyclerViewHolder recyclerViewHolder, int i) {
        boolean z;
        if (recyclerViewHolder.getItemViewType() != 3) {
            return;
        }
        if (this.f12160a != null) {
            i--;
        }
        if (m14203k()) {
            z = this.f12166g.get(i);
        } else {
            z = i == this.f12165f;
        }
        mo11917e(recyclerViewHolder, i, this.f12162c.get(i), z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: q */
    public RecyclerViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        final RecyclerViewHolder recyclerViewHolder = new RecyclerViewHolder(this.f12163d, this.f12164e.inflate(mo11916j(i), viewGroup, false));
        if (this.f12168i != null) {
            recyclerViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.base.recycler.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseRecyclerAdapter2.this.m14201m(recyclerViewHolder, view);
                }
            });
        }
        if (this.f12169j != null) {
            recyclerViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.ifengyu.intercom.device.lite.base.recycler.a
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return BaseRecyclerAdapter2.this.m14199o(recyclerViewHolder, view);
                }
            });
        }
        return recyclerViewHolder;
    }

    /* renamed from: r */
    public void m14196r(int i) {
        m14195s(i);
        notifyDataSetChanged();
    }

    /* renamed from: s */
    public void m14195s(int i) {
        if (m14203k()) {
            boolean z = this.f12166g.get(i);
            if (z) {
                this.f12167h--;
            } else {
                this.f12167h++;
            }
            this.f12166g.set(i, !z);
            return;
        }
        this.f12165f = i;
    }

    public void setOnItemClickListener(InterfaceC3183a interfaceC3183a) {
        this.f12168i = interfaceC3183a;
    }

    public void setOnItemLongClickListener(InterfaceC3184b interfaceC3184b) {
        this.f12169j = interfaceC3184b;
    }

    /* renamed from: t */
    public void m14194t(List<T> list) {
        m14207f();
        this.f12162c.clear();
        if (list != null) {
            this.f12162c.addAll(list);
        }
        notifyDataSetChanged();
    }

    /* renamed from: u */
    public void m14193u(List<T> list) {
        this.f12162c.clear();
        if (list != null) {
            this.f12162c.addAll(list);
        }
        notifyDataSetChanged();
    }
}
