package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.lite.WebActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class SystemPermissionActivity extends BaseActivity {
    @BindView(R.id.cameraValue)
    TextView cameraValue;
    @BindView(R.id.locationValue)
    TextView locationValue;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.notifyValue)
    TextView notifyValue;
    @BindView(R.id.storageValue)
    TextView storageValue;

    public static void start(Context context) {
        context.startActivity(new Intent(context, SystemPermissionActivity.class));
    }

    public /* synthetic */ void a(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_system_permission);
        ButterKnife.bind(this);
        this.mTopBar.f(R.string.system_permission);
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SystemPermissionActivity.this.a(view);
            }
        });
    }

    @OnClick({R.id.locationLeftLayout, R.id.storageLeftLayout, R.id.cameraLeftLayout, R.id.notifyLeftLayout, R.id.locationRightLayout, R.id.storageRightLayout, R.id.cameraRightLayout, R.id.notifyRightLayout})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.cameraLeftLayout /* 2131296435 */:
                WebActivity.a(this, k0.c(R.string.system_permission_use_rule), "https://m.ifengyu.com/resources/camareAuthHelp.html");
                return;
            case R.id.cameraRightLayout /* 2131296436 */:
            case R.id.locationRightLayout /* 2131296833 */:
            case R.id.notifyRightLayout /* 2131296994 */:
            case R.id.storageRightLayout /* 2131297244 */:
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", m.e(), null));
                intent.setFlags(268435456);
                startActivity(intent);
                return;
            case R.id.locationLeftLayout /* 2131296832 */:
                WebActivity.a(this, k0.c(R.string.system_permission_use_rule), "https://m.ifengyu.com/resources/locationAndroidAuthHelp.html");
                return;
            case R.id.notifyLeftLayout /* 2131296993 */:
                WebActivity.a(this, k0.c(R.string.system_permission_use_rule), "https://m.ifengyu.com/resources/notifaAuthHelp.html");
                return;
            case R.id.storageLeftLayout /* 2131297243 */:
                WebActivity.a(this, k0.c(R.string.system_permission_use_rule), "https://m.ifengyu.com/resources/storageAuthHelp.html");
                return;
            default:
                return;
        }
    }
}
