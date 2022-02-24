package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

/* loaded from: classes2.dex */
public class SealBtEarGuide2Activity extends BaseActivity implements View.OnClickListener {
    private ImageView q;
    private FrameLayout r;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.enter_conn_bt_ear_mode_selector) {
            ImageView imageView = this.q;
            imageView.setSelected(!imageView.isSelected());
            this.r.setBackground(getResources().getDrawable(this.q.isSelected() ? R.drawable.bluetooth_btn_bg : R.drawable.btn_bluetooth_n));
        } else if (id != R.id.scan_btn) {
            if (id == R.id.title_bar_left) {
                finish();
            }
        } else if (!this.q.isSelected()) {
            c0.a((CharSequence) getString(R.string.toast_of_sure_bt_ear_enter_conn_mode), false);
        } else if (j.b().a()) {
            a(SealBleEarConnectActivity.class);
        } else {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_guide2);
        w();
    }

    public void w() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.scan_btn);
        this.r = frameLayout;
        frameLayout.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.enter_conn_bt_ear_mode_selector);
        this.q = imageView;
        imageView.setOnClickListener(this);
        this.q.setClickable(true);
        ImageView imageView2 = (ImageView) findViewById(R.id.center_image);
        if (!c0.b()) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(imageView2.getLayoutParams());
            layoutParams.setMargins(0, (int) c0.a(35.0f), 0, (int) c0.a(35.0f));
            imageView2.setLayoutParams(layoutParams);
        }
    }
}
