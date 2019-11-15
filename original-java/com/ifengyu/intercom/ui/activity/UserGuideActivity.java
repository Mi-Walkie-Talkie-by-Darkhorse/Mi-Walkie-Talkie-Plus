package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class UserGuideActivity extends Activity implements OnClickListener {
    private RelativeLayout a;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_user_guide);
        boolean booleanExtra = getIntent().getBooleanExtra("isConnect", false);
        int[] intArrayExtra = getIntent().getIntArrayExtra("titleBarLeftBtnPoint");
        int[] intArrayExtra2 = getIntent().getIntArrayExtra("titleBarRightBtnPoint");
        int[] intArrayExtra3 = getIntent().getIntArrayExtra("shareLocationBtnPoint");
        findViewById(R.id.user_guide_i_get).setOnClickListener(this);
        this.a = (RelativeLayout) findViewById(R.id.root_view);
        View inflate = View.inflate(this, R.layout.user_guide_muli_device_manager, null);
        TextView textView = (TextView) inflate.findViewById(R.id.title_bar_title);
        ((TextView) inflate.findViewById(R.id.guide_text)).setText(Html.fromHtml(getString(R.string.user_guide_left_top_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_left_top_btn_text_postfix) + "</font>"));
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.setMargins(intArrayExtra[0], intArrayExtra[1], 0, 0);
        inflate.setLayoutParams(layoutParams);
        this.a.addView(inflate);
        if (booleanExtra) {
            textView.setText(w.ae());
            View inflate2 = View.inflate(this, R.layout.user_guide_device_setting, null);
            ((TextView) inflate2.findViewById(R.id.guide_text)).setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_right_top_btn_text_prefix) + "</font>" + getString(R.string.user_guide_right_top_btn_text)));
            LayoutParams layoutParams2 = new LayoutParams(-1, -2);
            layoutParams2.setMargins(0, intArrayExtra2[1], 0, 0);
            inflate2.setLayoutParams(layoutParams2);
            this.a.addView(inflate2);
            View inflate3 = View.inflate(this, R.layout.user_guide_share_location, null);
            TextView textView2 = (TextView) inflate3.findViewById(R.id.location_share_text);
            if (v.a()) {
                textView2.setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>" + getString(R.string.user_guide_share_location_btn_text)));
            } else {
                textView2.setText(Html.fromHtml(getString(R.string.user_guide_share_location_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>"));
            }
            LayoutParams layoutParams3 = new LayoutParams(-1, -2);
            layoutParams3.setMargins(intArrayExtra3[0], intArrayExtra3[1], 0, 0);
            inflate3.setLayoutParams(layoutParams3);
            this.a.addView(inflate3);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, getClass().getSimpleName());
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.user_guide_i_get /*2131755417*/:
                finish();
                return;
            default:
                return;
        }
    }

    public void onBackPressed() {
    }
}
