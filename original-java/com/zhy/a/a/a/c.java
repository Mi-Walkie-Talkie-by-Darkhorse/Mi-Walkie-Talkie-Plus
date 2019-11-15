package com.zhy.a.a.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ViewHolder */
public class c extends ViewHolder {
    private SparseArray<View> a = new SparseArray<>();
    private View b;
    private Context c;

    public c(Context context, View view) {
        super(view);
        this.c = context;
        this.b = view;
    }

    public static c a(Context context, View view) {
        return new c(context, view);
    }

    public static c a(Context context, ViewGroup viewGroup, int i) {
        return new c(context, LayoutInflater.from(context).inflate(i, viewGroup, false));
    }

    public <T extends View> T a(int i) {
        T t = (View) this.a.get(i);
        if (t != null) {
            return t;
        }
        T findViewById = this.b.findViewById(i);
        this.a.put(i, findViewById);
        return findViewById;
    }

    public View a() {
        return this.b;
    }
}
