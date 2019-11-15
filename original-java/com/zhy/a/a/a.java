package com.zhy.a.a;

import android.content.Context;
import android.view.LayoutInflater;
import com.zhy.a.a.a.c;
import java.util.List;

/* compiled from: CommonAdapter */
public abstract class a<T> extends b<T> {
    protected Context b;
    protected int c;
    protected List<T> d;
    protected LayoutInflater e;

    /* access modifiers changed from: protected */
    public abstract void a(c cVar, T t, int i);

    public a(Context context, final int i, List<T> list) {
        super(context, list);
        this.b = context;
        this.e = LayoutInflater.from(context);
        this.c = i;
        this.d = list;
        a((com.zhy.a.a.a.a<T>) new com.zhy.a.a.a.a<T>() {
            public int a() {
                return i;
            }

            public boolean a(T t, int i) {
                return true;
            }

            public void a(c cVar, T t, int i) {
                a.this.a(cVar, t, i);
            }
        });
    }
}
