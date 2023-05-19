package com.ifengyu.intercom.p216ui.login;

import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;

@DefaultFirstFragment(LoginFragment.class)
@FirstFragments({LoginFragment.class})
/* renamed from: com.ifengyu.intercom.ui.login.LoginActivity */
/* loaded from: classes2.dex */
public class LoginActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static Intent m9767N(Context context) {
        return QMUIFragmentActivity.m8134t(context, LoginActivity.class, LoginFragment.class);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentContainerProvider
    /* renamed from: N0 */
    public int mo8003N0() {
        return R.id.lite_login_container;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    /* renamed from: w */
    public void mo8131w() {
        super.mo8131w();
        QMUIStatusBarHelper.m7481m(this);
    }
}
