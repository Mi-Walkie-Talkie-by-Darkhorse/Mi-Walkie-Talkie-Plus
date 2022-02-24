package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import b.d.a.a.c.c;
import java.util.List;

/* compiled from: MyCommonAdapter.java */
/* loaded from: classes2.dex */
public abstract class i<T> extends b.d.a.a.a<T> {

    /* compiled from: MyCommonAdapter.java */
    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6305a;

        a(c cVar) {
            this.f6305a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((b.d.a.a.b) i.this).d != null) {
                ((b.d.a.a.b) i.this).d.a(view, this.f6305a, this.f6305a.getLayoutPosition());
            }
        }
    }

    /* compiled from: MyCommonAdapter.java */
    /* loaded from: classes2.dex */
    class b implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6307a;

        b(c cVar) {
            this.f6307a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (((b.d.a.a.b) i.this).d == null) {
                return false;
            }
            return ((b.d.a.a.b) i.this).d.b(view, this.f6307a, this.f6307a.getLayoutPosition());
        }
    }

    public i(Context context, int i, List list) {
        super(context, i, list);
    }

    @Override // b.d.a.a.b
    protected void a(ViewGroup viewGroup, c cVar, int i) {
        if (a(i)) {
            cVar.a().setOnClickListener(new a(cVar));
            cVar.a().setOnLongClickListener(new b(cVar));
        }
    }
}
