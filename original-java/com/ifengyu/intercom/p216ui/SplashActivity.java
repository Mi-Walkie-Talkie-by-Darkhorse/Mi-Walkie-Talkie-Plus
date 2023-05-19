package com.ifengyu.intercom.p216ui;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.SplashFragment;
import com.ifengyu.intercom.p216ui.fragment.UserAuthPermissionFragment;
import com.qmuiteam.qmui.arch.QMUIFragment;

/* renamed from: com.ifengyu.intercom.ui.SplashActivity */
/* loaded from: classes2.dex */
public class SplashActivity extends BaseFragmentActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (isTaskRoot() || intent == null) {
            return;
        }
        String action = intent.getAction();
        if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
            finish();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity
    /* renamed from: r */
    protected Class<? extends QMUIFragment> mo8136r() {
        if (MiTalkClientUtil.m11229W()) {
            return SplashFragment.class;
        }
        return UserAuthPermissionFragment.class;
    }
}
