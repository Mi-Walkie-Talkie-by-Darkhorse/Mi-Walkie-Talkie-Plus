package com.ifengyu.intercom.ui.imui.ui.chat.guide;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;

public class BluetoothGuideActivity extends BaseActivity {
    public static void start(Context context) {
        context.startActivity(new Intent(context, BluetoothGuideActivity.class));
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_bluetooth_gudie;
    }

    /* access modifiers changed from: protected */
    public int getContentViewId() {
        return R.id.container_guide;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(getContentViewId(), BluetoothGuideFragment.newInstance(), BluetoothGuideFragment.class.getSimpleName()).commit();
        }
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }
}
