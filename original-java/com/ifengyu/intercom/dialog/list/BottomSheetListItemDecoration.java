package com.ifengyu.intercom.dialog.list;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.p242c.IQMUISkinHandlerDecoration;
import com.qmuiteam.qmui.p242c.QMUISkinManager;
import com.qmuiteam.qmui.util.QMUIResHelper;

/* renamed from: com.ifengyu.intercom.dialog.list.b */
/* loaded from: classes2.dex */
public class BottomSheetListItemDecoration extends RecyclerView.AbstractC0833l implements IQMUISkinHandlerDecoration {

    /* renamed from: a */
    private final Paint f13674a;

    /* renamed from: b */
    private final int f13675b;

    public BottomSheetListItemDecoration(Context context) {
        Paint paint = new Paint();
        this.f13674a = paint;
        paint.setStrokeWidth(context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height));
        paint.setStyle(Paint.Style.STROKE);
        this.f13675b = R.attr.qmui_skin_support_bottom_sheet_separator_color;
        if (R.attr.qmui_skin_support_bottom_sheet_separator_color != 0) {
            paint.setColor(QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
        }
    }

    @Override // com.qmuiteam.qmui.p242c.IQMUISkinHandlerDecoration
    /* renamed from: b */
    public void mo7950b(RecyclerView recyclerView, QMUISkinManager qMUISkinManager, int i, Resources.Theme theme) {
        int i2 = this.f13675b;
        if (i2 != 0) {
            this.f13674a.setColor(QMUIResHelper.m7505c(theme, i2));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0833l
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.C0846v c0846v) {
        super.onDrawOver(canvas, recyclerView, c0846v);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (adapter == null || layoutManager == null || this.f13675b == 0) {
            return;
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAt instanceof BottomSheetListItemView) {
                if (childAdapterPosition > 0 && adapter.getItemViewType(childAdapterPosition - 1) != 3) {
                    float decoratedTop = layoutManager.getDecoratedTop(childAt);
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, decoratedTop, recyclerView.getWidth(), decoratedTop, this.f13674a);
                }
                int i2 = childAdapterPosition + 1;
                if (i2 < adapter.getItemCount() && adapter.getItemViewType(i2) == 3) {
                    float decoratedBottom = layoutManager.getDecoratedBottom(childAt);
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, decoratedBottom, recyclerView.getWidth(), decoratedBottom, this.f13674a);
                }
            }
        }
    }
}
