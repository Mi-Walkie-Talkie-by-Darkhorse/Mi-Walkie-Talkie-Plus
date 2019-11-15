package com.ifengyu.library.widget.recyclerview.d;

import android.support.v7.widget.RecyclerView.Adapter;
import com.ifengyu.library.widget.recyclerview.d.a;

/* compiled from: RecyclerViewHolder */
public abstract class b<T extends Adapter, V extends a, K> {
    private final T adapter;

    public abstract void convert(V v, K k, int i, boolean z);

    public b(T t) {
        this.adapter = t;
    }

    public T getAdapter() {
        return this.adapter;
    }
}
