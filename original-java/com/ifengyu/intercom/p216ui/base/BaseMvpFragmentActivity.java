package com.ifengyu.intercom.p216ui.base;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.base.BaseView;

/* renamed from: com.ifengyu.intercom.ui.base.BaseMvpFragmentActivity */
/* loaded from: classes2.dex */
public abstract class BaseMvpFragmentActivity<V extends BaseView, P extends BasePresenter<V>> extends BaseFragmentActivity {

    /* renamed from: i */
    protected P f15032i;

    /* renamed from: N */
    protected abstract P m10332N();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        P m10332N = m10332N();
        this.f15032i = m10332N;
        if (m10332N != null) {
            m10332N.mo9229n((BaseView) this);
            this.f15032i.m10301u(getLifecycle());
        }
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        P p = this.f15032i;
        if (p != null) {
            p.mo9227q();
        }
        super.onDestroy();
    }
}
