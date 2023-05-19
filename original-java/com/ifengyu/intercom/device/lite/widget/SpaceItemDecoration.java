package com.ifengyu.intercom.device.lite.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.ifengyu.intercom.device.lite.widget.a */
/* loaded from: classes2.dex */
public class SpaceItemDecoration extends RecyclerView.AbstractC0833l {

    /* renamed from: a */
    private int f12420a;

    public SpaceItemDecoration(int i) {
        this.f12420a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0833l
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, RecyclerView recyclerView, @NonNull RecyclerView.C0846v c0846v) {
        if (recyclerView.getChildLayoutPosition(view) != -1) {
            rect.top = this.f12420a;
        }
    }
}
