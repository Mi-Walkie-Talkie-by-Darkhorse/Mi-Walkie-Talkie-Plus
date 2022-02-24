package com.ifengyu.intercom.lite.base;

import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ QMUITipDialog f5338a;

    public /* synthetic */ c(QMUITipDialog qMUITipDialog) {
        this.f5338a = qMUITipDialog;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5338a.dismiss();
    }
}
