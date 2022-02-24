package com.ifengyu.intercom.lite.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SpaceItemDecoration.java */
/* loaded from: classes2.dex */
public class a extends RecyclerView.l {

    /* renamed from: a  reason: collision with root package name */
    private int f5801a;

    public a(int i) {
        this.f5801a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, RecyclerView recyclerView, @NonNull RecyclerView.v vVar) {
        if (recyclerView.getChildLayoutPosition(view) != -1) {
            rect.top = this.f5801a;
        }
    }
}
