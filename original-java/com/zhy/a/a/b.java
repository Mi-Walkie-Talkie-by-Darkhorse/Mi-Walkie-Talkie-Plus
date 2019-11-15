package com.zhy.a.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import com.zhy.a.a.a.c;
import java.util.List;

/* compiled from: MultiItemTypeAdapter */
public class b<T> extends Adapter<c> {
    protected Context f;
    protected List<T> g;
    protected com.zhy.a.a.a.b h = new com.zhy.a.a.a.b();
    /* access modifiers changed from: protected */
    public a i;

    /* compiled from: MultiItemTypeAdapter */
    public interface a {
        void a(View view, ViewHolder viewHolder, int i);

        boolean b(View view, ViewHolder viewHolder, int i);
    }

    public b(Context context, List<T> list) {
        this.f = context;
        this.g = list;
    }

    public int getItemViewType(int i2) {
        if (!a()) {
            return super.getItemViewType(i2);
        }
        return this.h.a(this.g.get(i2), i2);
    }

    /* renamed from: a */
    public c onCreateViewHolder(ViewGroup viewGroup, int i2) {
        c a2 = c.a(this.f, viewGroup, this.h.a(i2).a());
        a(a2, a2.a());
        a(viewGroup, a2, i2);
        return a2;
    }

    public void a(c cVar, View view) {
    }

    public void a(c cVar, T t) {
        this.h.a(cVar, t, cVar.getAdapterPosition());
    }

    /* access modifiers changed from: protected */
    public boolean a(int i2) {
        return true;
    }

    /* access modifiers changed from: protected */
    public void a(ViewGroup viewGroup, final c cVar, int i2) {
        if (a(i2)) {
            cVar.a().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (b.this.i != null) {
                        b.this.i.a(view, cVar, cVar.getAdapterPosition());
                    }
                }
            });
            cVar.a().setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    if (b.this.i == null) {
                        return false;
                    }
                    return b.this.i.b(view, cVar, cVar.getAdapterPosition());
                }
            });
        }
    }

    /* renamed from: a */
    public void onBindViewHolder(c cVar, int i2) {
        a(cVar, (T) this.g.get(i2));
    }

    public int getItemCount() {
        return this.g.size();
    }

    public b a(com.zhy.a.a.a.a<T> aVar) {
        this.h.a(aVar);
        return this;
    }

    /* access modifiers changed from: protected */
    public boolean a() {
        return this.h.a() > 0;
    }

    public void setOnItemClickListener(a aVar) {
        this.i = aVar;
    }
}
