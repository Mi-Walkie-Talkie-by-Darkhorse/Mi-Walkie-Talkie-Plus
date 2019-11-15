package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

public class SealBtEarGuide2Activity extends BaseActivity implements OnClickListener {
    private ImageView a;
    private FrameLayout b;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_bt_ear_guide2);
        c();
    }

    public void c() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        this.b = (FrameLayout) findViewById(R.id.scan_btn);
        this.b.setOnClickListener(this);
        this.a = (ImageView) findViewById(R.id.enter_conn_bt_ear_mode_selector);
        this.a.setOnClickListener(this);
        this.a.setClickable(true);
        ImageView imageView = (ImageView) findViewById(R.id.center_image);
        if (!v.b()) {
            LayoutParams layoutParams = new LayoutParams(imageView.getLayoutParams());
            layoutParams.setMargins(0, (int) v.a(35.0f), 0, (int) v.a(35.0f));
            imageView.setLayoutParams(layoutParams);
        }
    }

    public void onClick(View view) {
        boolean z = false;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.enter_conn_bt_ear_mode_selector /*2131755313*/:
                ImageView imageView = this.a;
                if (!this.a.isSelected()) {
                    z = true;
                }
                imageView.setSelected(z);
                this.b.setBackground(getResources().getDrawable(this.a.isSelected() ? R.drawable.bluetooth_btn_bg : R.drawable.btn_bluetooth_n));
                return;
            case R.id.scan_btn /*2131755314*/:
                if (!this.a.isSelected()) {
                    v.a((CharSequence) getString(R.string.toast_of_sure_bt_ear_enter_conn_mode), false);
                    return;
                } else if (k.a().b()) {
                    a(SealBleEarConnectActivity.class);
                    return;
                } else {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                }
            default:
                return;
        }
    }
}
