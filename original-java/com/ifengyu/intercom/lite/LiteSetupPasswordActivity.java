package com.ifengyu.intercom.lite;

import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.login.LiteSetupPasswordFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(LiteSetupPasswordFragment.class)
@FirstFragments({LiteSetupPasswordFragment.class})
/* loaded from: classes2.dex */
public class LiteSetupPasswordActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.a(context, LiteSetupPasswordActivity.class, LiteSetupPasswordFragment.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.id.lite_setup_password_container;
    }
}
