package com.ifengyu.intercom.ui.baseui;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.List;

/* compiled from: SuperBaseAdapter.java */
/* loaded from: classes2.dex */
public abstract class c<ITEMBEANTYPE> extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    protected LayoutInflater f6387a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f6388b;

    /* renamed from: c  reason: collision with root package name */
    protected List<ITEMBEANTYPE> f6389c;
    protected int d = -1;

    public c(Context context, List<ITEMBEANTYPE> list) {
        this.f6387a = LayoutInflater.from(context);
        this.f6388b = context;
        this.f6389c = list;
    }

    public void a(int i) {
        this.d = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ITEMBEANTYPE> list = this.f6389c;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f6389c.size();
    }

    @Override // android.widget.Adapter
    public ITEMBEANTYPE getItem(int i) {
        List<ITEMBEANTYPE> list = this.f6389c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        this.f6389c.get(i);
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }
}
