package com.ifengyu.intercom.device.lite;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.fragment.LiteWebFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(LiteWebFragment.class)
@FirstFragments({LiteWebFragment.class})
/* loaded from: classes2.dex */
public class WebActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m14208N(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("extra_title", str);
        bundle.putString("extra_url", str2);
        context.startActivity(QMUIFragmentActivity.m8133u(context, WebActivity.class, LiteWebFragment.class, bundle));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentContainerProvider
    /* renamed from: N0 */
    public int mo8003N0() {
        return R.id.lite_web_container;
    }
}
