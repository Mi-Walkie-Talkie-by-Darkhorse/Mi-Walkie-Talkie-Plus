package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.intercom.ui.imui.ui.chat.session.fragment.MessageFragment;
import com.ifengyu.library.util.l;
import java.util.List;

public class TeamMessageActivity extends BaseActivity {
    private Bundle mBundle;

    public static void start(Context context, String str, int i) {
        Intent intent = new Intent(context, TeamMessageActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(Extras.EXTRA_SESSION_TYPE, i);
        bundle.putString(Extras.EXTRA_SESSION_ID, str);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_team_message;
    }

    /* access modifiers changed from: protected */
    public int getContentViewId() {
        return R.id.team_message_container;
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        this.mBundle = bundle;
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        parseIntent();
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        if (bundle == null) {
            parseIntent();
        }
    }

    private void parseIntent() {
        if (this.mBundle != null) {
            if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
                List fragments = getSupportFragmentManager().getFragments();
                int size = fragments.size();
                for (int i = 0; i < size; i++) {
                    if (fragments.get(0) != null) {
                        getSupportFragmentManager().popBackStackImmediate();
                    }
                }
            }
            MessageFragment newInstance = MessageFragment.newInstance(this.mBundle.getString(Extras.EXTRA_SESSION_ID), this.mBundle.getInt(Extras.EXTRA_SESSION_TYPE));
            getSupportFragmentManager().beginTransaction().replace(getContentViewId(), newInstance, newInstance.getClass().getSimpleName()).commit();
            return;
        }
        l.b((CharSequence) "Param error");
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }
}
