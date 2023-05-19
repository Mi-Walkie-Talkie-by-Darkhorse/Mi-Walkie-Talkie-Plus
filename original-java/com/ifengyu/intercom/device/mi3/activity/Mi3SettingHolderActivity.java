package com.ifengyu.intercom.device.mi3.activity;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3SettingFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(Mi3SettingFragment.class)
@FirstFragments({Mi3SettingFragment.class})
/* loaded from: classes2.dex */
public class Mi3SettingHolderActivity extends Mi3BaseFragmentActivity {
    /* renamed from: U */
    public static void m13825U(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, Mi3SettingHolderActivity.class, Mi3SettingFragment.class, bundle));
    }
}
