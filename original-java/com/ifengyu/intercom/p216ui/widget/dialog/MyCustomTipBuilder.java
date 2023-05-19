package com.ifengyu.intercom.p216ui.widget.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import com.qmuiteam.qmui.p242c.QMUISkinManager;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialogView;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.s */
/* loaded from: classes2.dex */
public class MyCustomTipBuilder {

    /* renamed from: a */
    private Context f16021a;

    /* renamed from: b */
    private int f16022b;

    /* renamed from: c */
    private QMUISkinManager f16023c;

    /* renamed from: d */
    private View f16024d;

    public MyCustomTipBuilder(Context context) {
        this.f16021a = context;
    }

    /* renamed from: a */
    public QMUITipDialog m8928a() {
        return m8927b(2131886439);
    }

    /* renamed from: b */
    public QMUITipDialog m8927b(int i) {
        QMUITipDialog qMUITipDialog = new QMUITipDialog(this.f16021a, i);
        qMUITipDialog.m7267b(this.f16023c);
        Context context = qMUITipDialog.getContext();
        QMUITipDialogView qMUITipDialogView = new QMUITipDialogView(context);
        this.f16024d = LayoutInflater.from(context).inflate(this.f16022b, (ViewGroup) qMUITipDialogView, true);
        qMUITipDialog.setContentView(qMUITipDialogView);
        return qMUITipDialog;
    }

    /* renamed from: c */
    public View m8926c() {
        return this.f16024d;
    }

    /* renamed from: d */
    public MyCustomTipBuilder m8925d(@LayoutRes int i) {
        this.f16022b = i;
        return this;
    }
}
