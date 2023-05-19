package com.ifengyu.intercom.p216ui.activity;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.DiscoveryFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(DiscoveryFragment.class)
@FirstFragments({DiscoveryFragment.class})
/* renamed from: com.ifengyu.intercom.ui.activity.DiscoveryActivity */
/* loaded from: classes2.dex */
public class DiscoveryActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.m8133u(context, DiscoveryActivity.class, DiscoveryFragment.class, new Bundle()));
    }
}
