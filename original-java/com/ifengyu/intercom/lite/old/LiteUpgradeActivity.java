package com.ifengyu.intercom.lite.old;

import android.app.Activity;
import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.fragment.FirmwareUpgradeFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.qmuiteam.qmui.util.k;

@DefaultFirstFragment(FirmwareUpgradeFragment.class)
@FirstFragments({FirmwareUpgradeFragment.class})
/* loaded from: classes2.dex */
public class LiteUpgradeActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.a(context, LiteUpgradeActivity.class, FirmwareUpgradeFragment.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.layout.activity_lite_upgrade;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    public void m() {
        super.m();
        k.a((Activity) this);
    }
}
