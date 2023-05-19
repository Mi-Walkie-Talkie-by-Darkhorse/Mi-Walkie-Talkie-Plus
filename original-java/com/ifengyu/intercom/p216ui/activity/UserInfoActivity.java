package com.ifengyu.intercom.p216ui.activity;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.UserInfoFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.shanlitech.p245et.model.User;

@DefaultFirstFragment(UserInfoFragment.class)
@FirstFragments({UserInfoFragment.class})
/* renamed from: com.ifengyu.intercom.ui.activity.UserInfoActivity */
/* loaded from: classes2.dex */
public class UserInfoActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m10426N(Context context, User user, int i) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_user_model", user);
        bundle.putInt("key_from_where", i);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserInfoActivity.class, UserInfoFragment.class, bundle));
    }
}
