package com.ifengyu.intercom.device.oldDevice.p177w.p178a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import p048b.p078f.p079a.p080a.CommonAdapter;
import p048b.p078f.p079a.p080a.MultiItemTypeAdapter;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.a */
/* loaded from: classes2.dex */
public abstract class DolphinCustomAdapter<T> extends CommonAdapter<T> {

    /* compiled from: DolphinCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.a$a */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC3833a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ViewHolder f13633a;

        View$OnClickListenerC3833a(ViewHolder viewHolder) {
            this.f13633a = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((MultiItemTypeAdapter) DolphinCustomAdapter.this).f5374d != null) {
                ((MultiItemTypeAdapter) DolphinCustomAdapter.this).f5374d.m20993a(view, this.f13633a, this.f13633a.getLayoutPosition());
            }
        }
    }

    /* compiled from: DolphinCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.a$b */
    /* loaded from: classes2.dex */
    class View$OnLongClickListenerC3834b implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ ViewHolder f13635a;

        View$OnLongClickListenerC3834b(ViewHolder viewHolder) {
            this.f13635a = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (((MultiItemTypeAdapter) DolphinCustomAdapter.this).f5374d != null) {
                return ((MultiItemTypeAdapter) DolphinCustomAdapter.this).f5374d.m20992b(view, this.f13635a, this.f13635a.getLayoutPosition());
            }
            return false;
        }
    }

    public DolphinCustomAdapter(Context context, int i, List list) {
        super(context, i, list);
    }

    @Override // p048b.p078f.p079a.p080a.MultiItemTypeAdapter
    /* renamed from: k */
    protected void mo12495k(ViewGroup viewGroup, ViewHolder viewHolder, int i) {
        if (m20998g(i)) {
            viewHolder.m20981c().setOnClickListener(new View$OnClickListenerC3833a(viewHolder));
            viewHolder.m20981c().setOnLongClickListener(new View$OnLongClickListenerC3834b(viewHolder));
        }
    }
}
