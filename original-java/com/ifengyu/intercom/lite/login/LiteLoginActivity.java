package com.ifengyu.intercom.lite.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.qmuiteam.qmui.util.k;

@DefaultFirstFragment(LoginFragment.class)
@FirstFragments({LoginFragment.class})
/* loaded from: classes2.dex */
public class LiteLoginActivity extends BaseFragmentActivity {
    public static Intent a(Context context) {
        return QMUIFragmentActivity.a(context, LiteLoginActivity.class, LoginFragment.class);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.id.lite_login_container;
    }

    @Override // com.ifengyu.intercom.lite.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    protected void m() {
        super.m();
        k.a((Activity) this);
    }
}
