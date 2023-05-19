package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;

/* loaded from: classes2.dex */
public class SealBtEarGuide2Activity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private ImageView f13246j;

    /* renamed from: k */
    private FrameLayout f13247k;

    /* renamed from: l */
    private String f13248l;

    /* renamed from: F */
    public void m12883F() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.scan_btn);
        this.f13247k = frameLayout;
        frameLayout.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.enter_conn_bt_ear_mode_selector);
        this.f13246j = imageView;
        imageView.setOnClickListener(this);
        this.f13246j.setClickable(true);
        ImageView imageView2 = (ImageView) findViewById(R.id.center_image);
        if (MethodsUtils.m11296d()) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(imageView2.getLayoutParams());
        layoutParams.setMargins(0, (int) MethodsUtils.m11292h(35.0f), 0, (int) MethodsUtils.m11292h(35.0f));
        imageView2.setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.enter_conn_bt_ear_mode_selector) {
            ImageView imageView = this.f13246j;
            imageView.setSelected(!imageView.isSelected());
            this.f13247k.setBackground(getResources().getDrawable(this.f13246j.isSelected() ? R.drawable.bluetooth_btn_bg : R.drawable.btn_bluetooth_n));
        } else if (id != R.id.scan_btn) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
        } else if (!this.f13246j.isSelected()) {
            MethodsUtils.m11302H(getString(R.string.toast_of_sure_bt_ear_enter_conn_mode), false);
        } else if (BleCoreClient.m12373n().m12372o(this.f13248l)) {
            Intent intent = new Intent(this, SealBleEarConnectActivity.class);
            intent.putExtra("device_mac_address", this.f13248l);
            startActivity(intent);
        } else {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_guide2);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13248l = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        m12883F();
    }
}
