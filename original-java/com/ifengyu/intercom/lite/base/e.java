package com.ifengyu.intercom.lite.base;

import android.content.Context;
import androidx.annotation.StringRes;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.arch.b;
import com.qmuiteam.qmui.util.d;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.umeng.analytics.MobclickAgent;

/* compiled from: BaseFragment.java */
/* loaded from: classes2.dex */
public abstract class e extends b {
    protected String y = getClass().getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@StringRes int i) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(getContext().getString(i));
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        a2.getClass();
        m.a(new c(a2), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(m.b(i));
        builder.a(2);
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        a2.getClass();
        m.a(new c(a2), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.b
    public boolean b(Context context, int i, int i2) {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(this.y);
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(this.y);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
        if (getActivity() instanceof BaseFragmentActivity) {
            ((BaseFragmentActivity) getActivity()).q();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y() {
        if (getActivity() instanceof BaseFragmentActivity) {
            ((BaseFragmentActivity) getActivity()).s();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z() {
        if (getActivity() instanceof BaseFragmentActivity) {
            ((BaseFragmentActivity) getActivity()).t();
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected int a(Context context, int i, int i2) {
        if (i2 == 4 || i2 == 8) {
            return 0;
        }
        return d.a(context, 100);
    }
}
