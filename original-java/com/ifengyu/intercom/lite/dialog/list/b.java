package com.ifengyu.intercom.lite.dialog.list;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.c.g;
import com.qmuiteam.qmui.util.i;

/* compiled from: BottomSheetListItemDecoration.java */
/* loaded from: classes2.dex */
public class b extends RecyclerView.l implements com.qmuiteam.qmui.c.b {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f5379a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5380b = R.attr.qmui_skin_support_bottom_sheet_separator_color;

    public b(Context context) {
        Paint paint = new Paint();
        this.f5379a = paint;
        paint.setStrokeWidth(context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height));
        this.f5379a.setStyle(Paint.Style.STROKE);
        if (R.attr.qmui_skin_support_bottom_sheet_separator_color != 0) {
            this.f5379a.setColor(i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_separator_color));
        }
    }

    @Override // com.qmuiteam.qmui.c.b
    public void a(RecyclerView recyclerView, g gVar, int i, Resources.Theme theme) {
        int i2 = this.f5380b;
        if (i2 != 0) {
            this.f5379a.setColor(i.a(theme, i2));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.v vVar) {
        super.onDrawOver(canvas, recyclerView, vVar);
        RecyclerView.g adapter = recyclerView.getAdapter();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(adapter == null || layoutManager == null || this.f5380b == 0)) {
            for (int i = 0; i < recyclerView.getChildCount(); i++) {
                View childAt = recyclerView.getChildAt(i);
                int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
                if (childAt instanceof BottomSheetListItemView) {
                    if (childAdapterPosition > 0 && adapter.getItemViewType(childAdapterPosition - 1) != 3) {
                        float decoratedTop = layoutManager.getDecoratedTop(childAt);
                        canvas.drawLine(0.0f, decoratedTop, recyclerView.getWidth(), decoratedTop, this.f5379a);
                    }
                    int i2 = childAdapterPosition + 1;
                    if (i2 < adapter.getItemCount() && adapter.getItemViewType(i2) == 3) {
                        float decoratedBottom = layoutManager.getDecoratedBottom(childAt);
                        canvas.drawLine(0.0f, decoratedBottom, recyclerView.getWidth(), decoratedBottom, this.f5379a);
                    }
                }
            }
        }
    }
}
