package com.ifengyu.intercom.device.lite;

import android.content.Context;
import com.ifengyu.intercom.device.lite.fragment.FirmwareUpgradeFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;

@DefaultFirstFragment(FirmwareUpgradeFragment.class)
@FirstFragments({FirmwareUpgradeFragment.class})
/* loaded from: classes2.dex */
public class LiteUpgradeActivity extends LiteBaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.m8134t(context, LiteUpgradeActivity.class, FirmwareUpgradeFragment.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity
    /* renamed from: w */
    public void mo8131w() {
        super.mo8131w();
        QMUIStatusBarHelper.m7481m(this);
    }
}
