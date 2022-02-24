package com.ifengyu.intercom.lite;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.fragment.LiteWebFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(LiteWebFragment.class)
@FirstFragments({LiteWebFragment.class})
/* loaded from: classes2.dex */
public class WebActivity extends BaseFragmentActivity {
    public static void a(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("extra_title", str);
        bundle.putString("extra_url", str2);
        context.startActivity(QMUIFragmentActivity.a(context, WebActivity.class, LiteWebFragment.class, bundle));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.id.lite_web_container;
    }
}
