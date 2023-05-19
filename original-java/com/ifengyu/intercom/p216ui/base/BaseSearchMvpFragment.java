package com.ifengyu.intercom.p216ui.base;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.base.BaseView;

/* renamed from: com.ifengyu.intercom.ui.base.p */
/* loaded from: classes2.dex */
public abstract class BaseSearchMvpFragment<V extends BaseView, P extends BasePresenter<V>> extends BaseSearchFragment {

    /* renamed from: B */
    protected P f15074B;

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        P mo9088y3 = mo9088y3();
        this.f15074B = mo9088y3;
        if (mo9088y3 != null) {
            mo9088y3.mo9229n((BaseView) this);
            this.f15074B.m10301u(getLifecycle());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        P p = this.f15074B;
        if (p != null) {
            p.mo9227q();
        }
        super.onDetach();
    }

    /* renamed from: y3 */
    protected abstract P mo9088y3();
}
