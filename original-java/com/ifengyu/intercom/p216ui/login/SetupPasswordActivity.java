package com.ifengyu.intercom.p216ui.login;

import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(SetupPasswordFragment.class)
@FirstFragments({SetupPasswordFragment.class})
/* renamed from: com.ifengyu.intercom.ui.login.SetupPasswordActivity */
/* loaded from: classes2.dex */
public class SetupPasswordActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.m8134t(context, SetupPasswordActivity.class, SetupPasswordFragment.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentContainerProvider
    /* renamed from: N0 */
    public int mo8003N0() {
        return R.id.lite_setup_password_container;
    }
}
