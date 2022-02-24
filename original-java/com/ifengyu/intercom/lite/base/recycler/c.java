package com.ifengyu.intercom.lite.base.recycler;

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

/* compiled from: BaseRecyclerAdapter2.java */
/* loaded from: classes2.dex */
public abstract class c<T> extends RecyclerView.g<d> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private View f5344a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f5345b;

    /* renamed from: c  reason: collision with root package name */
    protected List<T> f5346c;
    protected final Context d;
    protected LayoutInflater e;
    private int f = -1;
    private BitSet g = new BitSet();
    private int h;
    private a<T> i;
    private b<T> j;

    /* compiled from: BaseRecyclerAdapter2.java */
    /* loaded from: classes2.dex */
    public interface a<T> {
        void a(View view, int i, T t);
    }

    /* compiled from: BaseRecyclerAdapter2.java */
    /* loaded from: classes2.dex */
    public interface b<T> {
        void a(View view, int i, T t);
    }

    public c(Context context, List<T> list) {
        this.f5346c = list == null ? new ArrayList<>() : list;
        this.d = context;
        this.e = LayoutInflater.from(context);
    }

    public void a() {
        b();
        notifyDataSetChanged();
    }

    public abstract void a(d dVar, int i, T t, boolean z);

    public abstract int b(int i);

    public void b() {
        if (f()) {
            this.g.clear();
            this.h = 0;
            return;
        }
        this.f = -1;
    }

    public void c(int i) {
        d(i);
        notifyDataSetChanged();
    }

    public void d(int i) {
        if (f()) {
            boolean z = this.g.get(i);
            if (z) {
                this.h--;
            } else {
                this.h++;
            }
            this.g.set(i, !z);
            return;
        }
        this.f = i;
    }

    public List<T> e() {
        return this.f5346c;
    }

    protected boolean f() {
        return false;
    }

    public void g() {
        int itemCount = getItemCount();
        if (itemCount == this.h) {
            this.f5346c.clear();
        } else {
            for (int i = itemCount - 1; i >= 0; i--) {
                if (this.g.get(i)) {
                    this.g.clear(i);
                    this.h--;
                    this.f5346c.remove(i);
                }
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f5346c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i) {
        if (this.f5344a == null || i != 0) {
            return (i != getItemCount() - 1 || this.f5345b == null) ? 3 : 2;
        }
        return 1;
    }

    public void setOnItemClickListener(a aVar) {
        this.i = aVar;
    }

    public void setOnItemLongClickListener(b bVar) {
        this.j = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    @NonNull
    public d onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        final d dVar = new d(this.d, this.e.inflate(b(i), viewGroup, false));
        if (this.i != null) {
            dVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.base.recycler.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.this.a(dVar, view);
                }
            });
        }
        if (this.j != null) {
            dVar.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.ifengyu.intercom.lite.base.recycler.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return c.this.b(dVar, view);
                }
            });
        }
        return dVar;
    }

    public void a(List<T> list) {
        a();
        this.f5346c.clear();
        if (list != null) {
            this.f5346c.addAll(list);
        }
        notifyDataSetChanged();
    }

    public int c() {
        return this.h;
    }

    public void b(List<T> list) {
        this.f5346c.clear();
        if (list != null) {
            this.f5346c.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void a(int i, T t) {
        if (i <= this.f5346c.size()) {
            this.f5346c.add(i, t);
            notifyItemInserted(i);
        }
    }

    public List<T> d() {
        ArrayList arrayList = new ArrayList();
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (this.g.get(i)) {
                arrayList.add(a(i));
            }
        }
        return arrayList;
    }

    public /* synthetic */ boolean b(d dVar, View view) {
        int layoutPosition = dVar.getLayoutPosition();
        if (this.f5344a != null) {
            layoutPosition--;
        }
        this.j.a(dVar.itemView, layoutPosition, this.f5346c.get(layoutPosition));
        return true;
    }

    public /* synthetic */ void a(d dVar, View view) {
        int layoutPosition = dVar.getLayoutPosition();
        if (this.f5344a != null) {
            layoutPosition--;
        }
        this.i.a(dVar.itemView, layoutPosition, this.f5346c.get(layoutPosition));
    }

    /* renamed from: a */
    public void onBindViewHolder(@NonNull d dVar, int i) {
        boolean z;
        if (dVar.getItemViewType() == 3) {
            if (this.f5344a != null) {
                i--;
            }
            if (f()) {
                z = this.g.get(i);
            } else {
                z = i == this.f;
            }
            a(dVar, i, this.f5346c.get(i), z);
        }
    }

    public T a(int i) {
        return this.f5346c.get(i);
    }
}
