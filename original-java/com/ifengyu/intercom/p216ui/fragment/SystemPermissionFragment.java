package com.ifengyu.intercom.p216ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.WebActivity;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.C4972m;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.SystemPermissionFragment */
/* loaded from: classes2.dex */
public class SystemPermissionFragment extends BaseFragment {
    @BindView(R.id.cameraValue)
    TextView cameraValue;
    @BindView(R.id.locationValue)
    TextView locationValue;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.notifyValue)
    TextView notifyValue;
    @BindView(R.id.recordValue)
    TextView recordValue;
    @BindView(R.id.storageValue)
    TextView storageValue;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m10030i3(View view) {
        mo8048o2();
    }

    /* renamed from: j3 */
    public static SystemPermissionFragment m10029j3() {
        Bundle bundle = new Bundle();
        SystemPermissionFragment systemPermissionFragment = new SystemPermissionFragment();
        systemPermissionFragment.setArguments(bundle);
        return systemPermissionFragment;
    }

    /* renamed from: k3 */
    private void m10028k3() {
        this.notifyValue.setText(UIUtils.m8603o(R.string.go_to_setting));
        if (C4972m.m8640b("android.permission.CAMERA")) {
            this.cameraValue.setText(UIUtils.m8603o(R.string.system_permission_opened));
        } else {
            this.cameraValue.setText(UIUtils.m8603o(R.string.go_to_setting));
        }
        if (C4972m.m8640b("android.permission.ACCESS_FINE_LOCATION")) {
            this.locationValue.setText(UIUtils.m8603o(R.string.system_permission_opened));
        } else {
            this.locationValue.setText(UIUtils.m8603o(R.string.go_to_setting));
        }
        if (C4972m.m8640b("android.permission.RECORD_AUDIO")) {
            this.recordValue.setText(UIUtils.m8603o(R.string.system_permission_opened));
        } else {
            this.recordValue.setText(UIUtils.m8603o(R.string.go_to_setting));
        }
        if (C4972m.m8640b("android.permission.WRITE_EXTERNAL_STORAGE")) {
            this.storageValue.setText(UIUtils.m8603o(R.string.system_permission_opened));
        } else {
            this.storageValue.setText(UIUtils.m8603o(R.string.go_to_setting));
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_system_permission, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10032g3();
        return inflate;
    }

    /* renamed from: g3 */
    protected void m10032g3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.system_permission);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.j1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SystemPermissionFragment.this.m10030i3(view);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m10028k3();
    }

    @OnClick({R.id.locationLeftLayout, R.id.recordLeftLayout, R.id.cameraLeftLayout, R.id.notifyLeftLayout, R.id.storageLeftLayout, R.id.locationRightLayout, R.id.recordRightLayout, R.id.cameraRightLayout, R.id.notifyRightLayout, R.id.storageRightLayout})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.cameraLeftLayout /* 2131296453 */:
                WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.system_permission_use_rule), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/camareAuthHelp.html" : "https://m.ifengyu.com/resourcesDev/resources/camareAuthHelp.html");
                return;
            case R.id.cameraRightLayout /* 2131296454 */:
            case R.id.locationRightLayout /* 2131296960 */:
            case R.id.notifyRightLayout /* 2131297094 */:
            case R.id.recordRightLayout /* 2131297185 */:
            case R.id.storageRightLayout /* 2131297360 */:
                startActivity(C4972m.m8641a());
                return;
            case R.id.locationLeftLayout /* 2131296959 */:
                WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.system_permission_use_rule), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/locationAndroidAuthHelp.html" : "https://m.ifengyu.com/resourcesDev/resources/locationAndroidAuthHelp.html");
                return;
            case R.id.notifyLeftLayout /* 2131297093 */:
                WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.system_permission_use_rule), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/notifaAuthHelp.html" : "https://m.ifengyu.com/resourcesDev/resources/notifaAuthHelp.html");
                return;
            case R.id.recordLeftLayout /* 2131297184 */:
                WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.system_permission_use_rule), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/micAuthHelp.html" : "https://m.ifengyu.com/resourcesDev/resources/micAuthHelp.html");
                return;
            case R.id.storageLeftLayout /* 2131297359 */:
                WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.system_permission_use_rule), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/storageAuthHelp.html" : "https://m.ifengyu.com/resourcesDev/resources/storageAuthHelp.html");
                return;
            default:
                return;
        }
    }
}
