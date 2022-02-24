package com.ifengyu.intercom.lite.old;

import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.fragment.BatchConfigurationFragment;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(BatchConfigurationFragment.class)
@FirstFragments({BatchConfigurationFragment.class})
/* loaded from: classes2.dex */
public class LiteBatchConfigurationActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.a(context, LiteBatchConfigurationActivity.class, BatchConfigurationFragment.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.layout.activity_lite_batch_configuration;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    public void m() {
        super.m();
        QMUIStatusBarHelper.a(this);
    }
}
