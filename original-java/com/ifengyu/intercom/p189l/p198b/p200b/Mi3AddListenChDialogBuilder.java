package com.ifengyu.intercom.p189l.p198b.p200b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;

/* renamed from: com.ifengyu.intercom.l.b.b.d */
/* loaded from: classes2.dex */
public class Mi3AddListenChDialogBuilder extends BaseQMUIDialogBuilder<Mi3AddListenChDialogBuilder> {

    /* renamed from: u */
    private TabLayout f14129u;

    /* renamed from: v */
    private ViewPager2 f14130v;

    public Mi3AddListenChDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: E */
    public TabLayout m11798E() {
        return this.f14129u;
    }

    /* renamed from: F */
    public ViewPager2 m11797F() {
        return this.f14130v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: j */
    public void mo7257j(QMUIDialog qMUIDialog, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        super.mo7257j(qMUIDialog, qMUIDialogRootLayout, context);
        Window window = qMUIDialog.getWindow();
        if (window != null) {
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = QMUIDisplayHelper.m7549g(m7294h()) - QMUIDisplayHelper.m7547i(m7294h());
            window.setAttributes(attributes);
        }
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(@NonNull QMUIDialog qMUIDialog, @NonNull QMUIDialogView qMUIDialogView, @NonNull Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_mi3_add_listen_ch, (ViewGroup) qMUIDialogView, false);
        this.f14129u = (TabLayout) inflate.findViewById(R.id.tabLayout);
        this.f14130v = (ViewPager2) inflate.findViewById(R.id.viewPager);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: l */
    public ConstraintLayout.LayoutParams mo7256l(@NonNull Context context) {
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(0, -1);
        layoutParams.f2573d = 0;
        layoutParams.f2579g = 0;
        layoutParams.f2560T = true;
        return layoutParams;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @NonNull
    /* renamed from: m */
    protected FrameLayout.LayoutParams mo7292m() {
        return new FrameLayout.LayoutParams(-1, -1);
    }
}
