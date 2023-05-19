package com.ifengyu.intercom.device.lite.base.recycler;

import android.content.Context;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.ifengyu.intercom.device.lite.base.recycler.d */
/* loaded from: classes2.dex */
public class RecyclerViewHolder extends RecyclerView.AbstractC0849y {

    /* renamed from: a */
    private SparseArray<View> f12170a;

    /* renamed from: b */
    private Context f12171b;

    public RecyclerViewHolder(Context context, View view) {
        super(view);
        this.f12171b = context;
        this.f12170a = new SparseArray<>();
    }

    /* renamed from: a */
    private <T extends View> T m14191a(int i) {
        T t = (T) this.f12170a.get(i);
        if (t == null) {
            T t2 = (T) this.itemView.findViewById(i);
            this.f12170a.put(i, t2);
            return t2;
        }
        return t;
    }

    /* renamed from: b */
    public TextView m14190b(int i) {
        return (TextView) getView(i);
    }

    /* renamed from: c */
    public RecyclerViewHolder m14189c(int i, @StringRes int i2) {
        ((TextView) m14191a(i)).setText(i2);
        return this;
    }

    /* renamed from: d */
    public RecyclerViewHolder m14188d(int i, CharSequence charSequence) {
        ((TextView) m14191a(i)).setText(charSequence);
        return this;
    }

    /* renamed from: e */
    public RecyclerViewHolder m14187e(int i, @ColorRes int i2) {
        ((TextView) m14191a(i)).setTextColor(this.f12171b.getResources().getColor(i2));
        return this;
    }

    /* renamed from: f */
    public RecyclerViewHolder m14186f(int i, float f) {
        ((TextView) m14191a(i)).setTextSize(0, f);
        return this;
    }

    /* renamed from: g */
    public RecyclerViewHolder m14185g(Typeface typeface, int... iArr) {
        for (int i : iArr) {
            TextView textView = (TextView) m14191a(i);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    public View getView(int i) {
        return m14191a(i);
    }

    /* renamed from: h */
    public RecyclerViewHolder m14184h(int i, int i2) {
        m14191a(i).setVisibility(i2);
        return this;
    }
}
