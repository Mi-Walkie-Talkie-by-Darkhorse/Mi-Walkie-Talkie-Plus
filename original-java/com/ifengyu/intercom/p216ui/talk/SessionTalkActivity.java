package com.ifengyu.intercom.p216ui.talk;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;

@DefaultFirstFragment(SessionTalkFragment.class)
@FirstFragments({SessionTalkFragment.class})
/* renamed from: com.ifengyu.intercom.ui.talk.SessionTalkActivity */
/* loaded from: classes2.dex */
public class SessionTalkActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m9443N(Context context, GroupSessionEvent groupSessionEvent) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_session_event", groupSessionEvent);
        context.startActivity(QMUIFragmentActivity.m8133u(context, SessionTalkActivity.class, SessionTalkFragment.class, bundle));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }
}
