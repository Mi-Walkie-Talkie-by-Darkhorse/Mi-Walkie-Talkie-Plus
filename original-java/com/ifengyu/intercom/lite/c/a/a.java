package com.ifengyu.intercom.lite.c.a;

import android.content.Context;
import android.view.Window;
import androidx.core.content.b;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.c.a.a;
import com.qmuiteam.qmui.util.d;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;

/* compiled from: BaseDialogBuilder.java */
/* loaded from: classes2.dex */
public abstract class a<T extends a> extends QMUIDialogBuilder<T> {
    public a(Context context) {
        super(context);
        a(context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), 0, 0);
        b(b.a(context, (int) R.color.lite_dialog_color_action_separator));
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    protected void a(QMUIDialogRootLayout qMUIDialogRootLayout) {
        qMUIDialogRootLayout.setMinWidth(d.f(a()) - d.a(a(), 16));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    public void a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = bVar.getWindow();
        if (window != null) {
            window.setGravity(81);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
        super.a(bVar, qMUIDialogRootLayout, context);
    }
}
