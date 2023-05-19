package com.ifengyu.intercom.p216ui.talk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.shanlitech.p245et.model.Group;

@DefaultFirstFragment(TalkFragment.class)
@FirstFragments({TalkFragment.class})
/* renamed from: com.ifengyu.intercom.ui.talk.TalkActivity */
/* loaded from: classes2.dex */
public class TalkActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m9412N(Context context, Group group) {
        m9411O(context, group, null);
    }

    /* renamed from: O */
    public static void m9411O(Context context, Group group, TempGroup tempGroup) {
        if (group == null && tempGroup == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        bundle.putParcelable("key_group_temp", tempGroup);
        context.startActivity(QMUIFragmentActivity.m8133u(context, TalkActivity.class, TalkFragment.class, bundle));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        getSupportFragmentManager().popBackStackImmediate("TalkFragment", 0);
    }
}
