package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.intercom.ui.imui.ui.chat.session.fragment.MessageFragment;

public class P2PMessageActivity extends BaseActivity {
    private Bundle mBundle;

    public static void start(Context context, int i, String str) {
        Intent intent = new Intent(context, P2PMessageActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(Extras.EXTRA_SESSION_TYPE, 1);
        bundle.putString(Extras.EXTRA_SESSION_ID, str);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_p2p_message;
    }

    /* access modifiers changed from: protected */
    public int getContentViewId() {
        return R.id.message_container;
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        super.initBundle(bundle);
        this.mBundle = bundle;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        if (bundle == null && this.mBundle != null) {
            this.mBundle.getInt(Extras.EXTRA_SESSION_TYPE);
            MessageFragment newInstance = MessageFragment.newInstance(this.mBundle.getString(Extras.EXTRA_SESSION_ID), 1);
            getSupportFragmentManager().beginTransaction().add(getContentViewId(), newInstance, newInstance.getClass().getSimpleName()).commit();
        }
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }
}
