package com.ifengyu.intercom.p205m.p206a;

import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;

/* renamed from: com.ifengyu.intercom.m.a.a */
/* loaded from: classes2.dex */
public abstract class BaseQMUIDialogBuilder<T extends BaseQMUIDialogBuilder> extends QMUIDialogBuilder<T> {

    /* renamed from: t */
    private int f14333t;

    public BaseQMUIDialogBuilder(Context context) {
        super(context);
        this.f14333t = 0;
    }

    /* renamed from: D */
    private QMUIButton m11455D(QMUILinearLayout qMUILinearLayout) {
        while (this.f14333t < qMUILinearLayout.getChildCount()) {
            View childAt = qMUILinearLayout.getChildAt(this.f14333t);
            this.f14333t++;
            if (childAt instanceof QMUIButton) {
                return (QMUIButton) childAt;
            }
        }
        return null;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: e */
    protected void mo7297e(QMUIDialogRootLayout qMUIDialogRootLayout) {
        int m7548h = QMUIDisplayHelper.m7548h(m7294h());
        qMUIDialogRootLayout.setMinWidth(m7548h);
        qMUIDialogRootLayout.setMaxWidth(m7548h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: j */
    public void mo7257j(QMUIDialog qMUIDialog, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = qMUIDialog.getWindow();
        if (window != null) {
            window.setGravity(81);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
        QMUILinearLayout qMUILinearLayout = (QMUILinearLayout) qMUIDialogRootLayout.getDialogView().getViewById(R.id.qmui_dialog_operator_layout_id);
        if (qMUILinearLayout != null) {
            for (int i = 0; i < this.f17723h.size(); i++) {
                QMUIDialogAction qMUIDialogAction = this.f17723h.get(i);
                QMUIButton m11455D = m11455D(qMUILinearLayout);
                if (m11455D != null) {
                    if (qMUIDialogAction.m7310e() == 2) {
                        m11455D.setBackground(UIUtils.m8611g(R.drawable.bg_dialog_button_negative));
                    } else if (qMUIDialogAction.m7310e() == 0) {
                        m11455D.setBackground(UIUtils.m8611g(R.drawable.bg_dialog_button_positive));
                    }
                }
            }
            if (qMUILinearLayout.getChildCount() >= 2) {
                Space space = new Space(context);
                space.setLayoutParams(new LinearLayout.LayoutParams(QMUIDisplayHelper.m7555a(m7294h(), 12), 0));
                qMUILinearLayout.addView(space, 1);
            }
        }
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @NonNull
    /* renamed from: n */
    protected QMUIDialogView mo7291n(@NonNull Context context) {
        QMUIDialogView qMUIDialogView = new QMUIDialogView(context);
        qMUIDialogView.setBackground(QMUIResHelper.m7502f(context, R.attr.qmui_skin_support_dialog_bg));
        qMUIDialogView.setRadius(QMUIResHelper.m7503e(context, R.attr.qmui_dialog_radius), 3);
        m7304A(qMUIDialogView);
        return qMUIDialogView;
    }
}
