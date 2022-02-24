package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;

/* loaded from: classes2.dex */
public class UserGuideActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private RelativeLayout f6200a;

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.user_guide_i_get) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_user_guide);
        boolean booleanExtra = getIntent().getBooleanExtra("isConnect", false);
        int[] intArrayExtra = getIntent().getIntArrayExtra("titleBarLeftBtnPoint");
        int[] intArrayExtra2 = getIntent().getIntArrayExtra("titleBarRightBtnPoint");
        int[] intArrayExtra3 = getIntent().getIntArrayExtra("shareLocationBtnPoint");
        findViewById(R.id.user_guide_i_get).setOnClickListener(this);
        this.f6200a = (RelativeLayout) findViewById(R.id.root_view);
        View inflate = View.inflate(this, R.layout.user_guide_muli_device_manager, null);
        TextView textView = (TextView) inflate.findViewById(R.id.title_bar_title);
        ((TextView) inflate.findViewById(R.id.guide_text)).setText(Html.fromHtml(getString(R.string.user_guide_left_top_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_left_top_btn_text_postfix) + "</font>"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(intArrayExtra[0], intArrayExtra[1], 0, 0);
        inflate.setLayoutParams(layoutParams);
        this.f6200a.addView(inflate);
        if (booleanExtra) {
            textView.setText(d0.q());
            View inflate2 = View.inflate(this, R.layout.user_guide_device_setting, null);
            ((TextView) inflate2.findViewById(R.id.guide_text)).setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_right_top_btn_text_prefix) + "</font>" + getString(R.string.user_guide_right_top_btn_text)));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, intArrayExtra2[1], 0, 0);
            inflate2.setLayoutParams(layoutParams2);
            this.f6200a.addView(inflate2);
            if (d0.g() != 36611) {
                View inflate3 = View.inflate(this, R.layout.user_guide_share_location, null);
                TextView textView2 = (TextView) inflate3.findViewById(R.id.location_share_text);
                if (c0.a()) {
                    textView2.setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>" + getString(R.string.user_guide_share_location_btn_text)));
                } else {
                    textView2.setText(Html.fromHtml(getString(R.string.user_guide_share_location_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>"));
                }
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.setMargins(intArrayExtra3[0], intArrayExtra3[1], 0, 0);
                inflate3.setLayoutParams(layoutParams3);
                this.f6200a.addView(inflate3);
            }
        }
    }
}
