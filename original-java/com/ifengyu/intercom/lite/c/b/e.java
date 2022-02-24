package com.ifengyu.intercom.lite.c.b;

import android.content.Context;
import android.view.Window;
import com.ifengyu.intercom.R;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.util.d;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.b;

/* compiled from: MessageDialogBuilder.java */
/* loaded from: classes2.dex */
public class e extends b.C0203b {
    public e(Context context) {
        super(context);
        a(m.c().getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), 0, 0);
        b(m.a((int) R.color.lite_dialog_color_action_separator));
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    protected void a(QMUIDialogRootLayout qMUIDialogRootLayout) {
        qMUIDialogRootLayout.setMinWidth(d.f(a()) - d.a(a(), 16));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    public void a(b bVar, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = bVar.getWindow();
        if (window != null) {
            window.setGravity(81);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
        super.a(bVar, qMUIDialogRootLayout, context);
    }
}
