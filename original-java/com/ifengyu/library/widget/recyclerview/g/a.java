package com.ifengyu.library.widget.recyclerview.g;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.support.v7.widget.SimpleItemAnimator;

/* compiled from: RecyclerViewUtil */
public class a {
    public static void a(RecyclerView recyclerView, boolean z) {
        ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(z);
        }
    }
}
