package com.ifengyu.intercom.p216ui.base;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.base.BaseView;

/* renamed from: com.ifengyu.intercom.ui.base.l */
/* loaded from: classes2.dex */
public abstract class BaseMvpFragment<V extends BaseView, P extends BasePresenter<V>> extends BaseFragment {

    /* renamed from: z */
    protected P f15048z;

    /* renamed from: g3 */
    protected abstract P mo9397g3();

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        P mo9397g3 = mo9397g3();
        this.f15048z = mo9397g3;
        if (mo9397g3 != null) {
            mo9397g3.mo9229n((BaseView) this);
            this.f15048z.m10301u(getLifecycle());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        P p = this.f15048z;
        if (p != null) {
            p.mo9227q();
        }
        super.onDetach();
    }
}
