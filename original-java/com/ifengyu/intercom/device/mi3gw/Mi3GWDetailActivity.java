package com.ifengyu.intercom.device.mi3gw;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.device.mi3gw.fragment.Mi3GWDetailFragment;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(Mi3GWDetailFragment.class)
@FirstFragments({Mi3GWDetailFragment.class})
/* loaded from: classes2.dex */
public class Mi3GWDetailActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m13824N(Context context, DeviceModel deviceModel) {
        DeviceDataShare.m13732s().m13734r(deviceModel);
        context.startActivity(QMUIFragmentActivity.m8133u(context, Mi3GWDetailActivity.class, Mi3GWDetailFragment.class, new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }
}
