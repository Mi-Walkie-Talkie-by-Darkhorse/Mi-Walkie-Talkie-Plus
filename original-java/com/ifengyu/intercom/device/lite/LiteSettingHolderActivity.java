package com.ifengyu.intercom.device.lite;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(LiteSettingFragment.class)
@FirstFragments({LiteSettingFragment.class})
/* loaded from: classes2.dex */
public class LiteSettingHolderActivity extends LiteBaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.m8133u(context, LiteSettingHolderActivity.class, LiteSettingFragment.class, new Bundle()));
    }
}
