package com.ifengyu.intercom.p216ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.tab.DeviceFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(MainFragment.class)
@FirstFragments({MainFragment.class})
/* renamed from: com.ifengyu.intercom.ui.MainActivity */
/* loaded from: classes2.dex */
public class MainActivity extends BaseFragmentActivity {
    public static void start(Context context) {
        context.startActivity(QMUIFragmentActivity.m8133u(context, MainActivity.class, MainFragment.class, new Bundle()));
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (m8138p() instanceof MainFragment) {
            DeviceFragment deviceFragment = DeviceFragment.f15264R;
            if (deviceFragment == null || !deviceFragment.m9975d4()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setFlags(67108864);
                intent.addCategory("android.intent.category.HOME");
                startActivity(intent);
                return;
            }
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        getSupportFragmentManager().popBackStackImmediate("MainFragment", 0);
    }
}
