package com.ifengyu.intercom.ui.baseui;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.List;

/* compiled from: SuperBaseAdapter */
public abstract class b<ITEMBEANTYPE> extends BaseAdapter {
    protected LayoutInflater a;
    protected Context b;
    protected List<ITEMBEANTYPE> c;
    protected int d = -1;

    public b(Context context, List<ITEMBEANTYPE> list) {
        this.a = LayoutInflater.from(context);
        this.b = context;
        this.c = list;
    }

    public int getCount() {
        if (this.c == null || this.c.size() <= 0) {
            return 0;
        }
        return this.c.size();
    }

    public ITEMBEANTYPE getItem(int i) {
        if (this.c != null && this.c.size() > 0) {
            this.c.get(i);
        }
        return null;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public void a(int i) {
        this.d = i;
    }
}
