package com.ifengyu.intercom.lite.old;

import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.fragment.ConfigFileListFragment;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(ConfigFileListFragment.class)
@FirstFragments({ConfigFileListFragment.class})
/* loaded from: classes2.dex */
public class LiteConfigFileActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.a(context, LiteConfigFileActivity.class, ConfigFileListFragment.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.layout.activity_config_file;
    }

    @Override // com.ifengyu.intercom.lite.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    protected void m() {
        super.m();
        QMUIStatusBarHelper.a(this);
    }
}
