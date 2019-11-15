package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import com.zhy.a.a.a;
import com.zhy.a.a.a.c;
import java.util.List;

/* compiled from: MyCommonAdapter */
public abstract class i<T> extends a<T> {
    public i(Context context, int i, List list) {
        super(context, i, list);
    }

    /* access modifiers changed from: protected */
    public void a(ViewGroup viewGroup, final c cVar, int i) {
        if (a(i)) {
            cVar.a().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (i.this.i != null) {
                        i.this.i.a(view, cVar, cVar.getLayoutPosition());
                    }
                }
            });
            cVar.a().setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    if (i.this.i == null) {
                        return false;
                    }
                    return i.this.i.b(view, cVar, cVar.getLayoutPosition());
                }
            });
        }
    }
}
