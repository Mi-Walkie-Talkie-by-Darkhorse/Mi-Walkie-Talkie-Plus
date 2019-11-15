package com.ifengyu.intercom.ui.imui.base;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

/* compiled from: RecyclerViewHolder */
public class a extends ViewHolder {
    private SparseArray<View> a = new SparseArray<>();
    private Context b;

    public a(Context context, View view) {
        super(view);
        this.b = context;
    }

    private <T extends View> T d(int i) {
        T t = (View) this.a.get(i);
        if (t != null) {
            return t;
        }
        T findViewById = this.itemView.findViewById(i);
        this.a.put(i, findViewById);
        return findViewById;
    }

    public View a(int i) {
        return d(i);
    }

    public TextView b(int i) {
        return (TextView) a(i);
    }

    public ImageView c(int i) {
        return (ImageView) a(i);
    }

    public a a(int i, String str) {
        ((TextView) d(i)).setText(str);
        return this;
    }

    public a a(@IdRes int i, @DrawableRes int i2) {
        ((ImageView) d(i)).setImageResource(i2);
        return this;
    }

    public a a(int i, OnClickListener onClickListener) {
        d(i).setOnClickListener(onClickListener);
        return this;
    }

    public a b(int i, int i2) {
        d(i).setVisibility(i2);
        return this;
    }
}
