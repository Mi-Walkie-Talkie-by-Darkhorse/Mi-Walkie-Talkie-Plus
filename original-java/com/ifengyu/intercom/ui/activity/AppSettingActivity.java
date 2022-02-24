package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class AppSettingActivity extends BaseActivity {
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    public static void start(Context context) {
        context.startActivity(new Intent(context, AppSettingActivity.class));
    }

    public /* synthetic */ void a(View view) {
        finish();
    }

    @OnClick({R.id.item_system_permission})
    public void onClick(View view) {
        if (view.getId() == R.id.item_system_permission) {
            SystemPermissionActivity.start(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_app_setting);
        ButterKnife.bind(this);
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppSettingActivity.this.a(view);
            }
        });
        this.mTopBar.f(R.string.setting);
    }
}
