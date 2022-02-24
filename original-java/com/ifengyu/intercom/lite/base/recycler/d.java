package com.ifengyu.intercom.lite.base.recycler;

import android.content.Context;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerViewHolder.java */
/* loaded from: classes2.dex */
public class d extends RecyclerView.y {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<View> f5347a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private Context f5348b;

    public d(Context context, View view) {
        super(view);
        this.f5348b = context;
    }

    private <T extends View> T c(int i) {
        T t = (T) this.f5347a.get(i);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.itemView.findViewById(i);
        this.f5347a.put(i, t2);
        return t2;
    }

    public TextView a(int i) {
        return (TextView) b(i);
    }

    public View b(int i) {
        return c(i);
    }

    public d d(int i, int i2) {
        c(i).setVisibility(i2);
        return this;
    }

    public d a(int i, CharSequence charSequence) {
        ((TextView) c(i)).setText(charSequence);
        return this;
    }

    public d b(int i, @StringRes int i2) {
        ((TextView) c(i)).setText(i2);
        return this;
    }

    public d a(int i, float f) {
        ((TextView) c(i)).setTextSize(0, f);
        return this;
    }

    public d c(int i, @ColorRes int i2) {
        ((TextView) c(i)).setTextColor(this.f5348b.getResources().getColor(i2));
        return this;
    }

    public d a(@IdRes int i, @DrawableRes int i2) {
        ((ImageView) c(i)).setImageResource(i2);
        return this;
    }

    public d a(Typeface typeface, int... iArr) {
        for (int i : iArr) {
            TextView textView = (TextView) c(i);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }
}
