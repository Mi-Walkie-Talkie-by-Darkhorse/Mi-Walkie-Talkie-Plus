package com.ifengyu.library.widget.recyclerview.d;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.View;
import java.util.HashSet;
import java.util.LinkedHashSet;

/* compiled from: BaseViewHolder */
public class a extends ViewHolder {
    public View a;
    private final SparseArray<View> b = new SparseArray<>();
    private final LinkedHashSet<Integer> c = new LinkedHashSet<>();
    private final LinkedHashSet<Integer> d = new LinkedHashSet<>();

    public a(View view) {
        super(view);
        this.a = view;
    }

    public HashSet<Integer> a() {
        return this.d;
    }

    public HashSet<Integer> b() {
        return this.c;
    }

    public View c() {
        return this.a;
    }

    public a a(int i, boolean z) {
        b(i).setVisibility(z ? 0 : 8);
        return this;
    }

    public a a(int i) {
        this.c.add(Integer.valueOf(i));
        return this;
    }

    public <T extends View> T b(int i) {
        T t = (View) this.b.get(i);
        if (t != null) {
            return t;
        }
        T findViewById = this.a.findViewById(i);
        this.b.put(i, findViewById);
        return findViewById;
    }

    public Context d() {
        if (this.a == null) {
            return null;
        }
        return this.a.getContext();
    }
}
