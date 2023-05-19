package com.ifengyu.intercom.p216ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;

/* renamed from: com.ifengyu.intercom.ui.activity.UserGuideActivity */
/* loaded from: classes2.dex */
public class UserGuideActivity extends Activity implements View.OnClickListener {

    /* renamed from: a */
    private RelativeLayout f14888a;

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.user_guide_i_get) {
            return;
        }
        finish();
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
        this.f14888a = (RelativeLayout) findViewById(R.id.root_view);
        View inflate = View.inflate(this, R.layout.user_guide_muli_device_manager, null);
        TextView textView = (TextView) inflate.findViewById(R.id.title_bar_title);
        ((TextView) inflate.findViewById(R.id.guide_text)).setText(Html.fromHtml(getString(R.string.user_guide_left_top_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_left_top_btn_text_postfix) + "</font>"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(intArrayExtra[0], intArrayExtra[1], 0, 0);
        inflate.setLayoutParams(layoutParams);
        this.f14888a.addView(inflate);
        if (booleanExtra) {
            textView.setText(MiTalkClientUtil.m11193p());
            View inflate2 = View.inflate(this, R.layout.user_guide_device_setting, null);
            ((TextView) inflate2.findViewById(R.id.guide_text)).setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_right_top_btn_text_prefix) + "</font>" + getString(R.string.user_guide_right_top_btn_text)));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, intArrayExtra2[1], 0, 0);
            inflate2.setLayoutParams(layoutParams2);
            this.f14888a.addView(inflate2);
            if (MiTalkClientUtil.m11191q() != 9) {
                View inflate3 = View.inflate(this, R.layout.user_guide_share_location, null);
                TextView textView2 = (TextView) inflate3.findViewById(R.id.location_share_text);
                if (MethodsUtils.m11297c()) {
                    textView2.setText(Html.fromHtml("<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>" + getString(R.string.user_guide_share_location_btn_text)));
                } else {
                    textView2.setText(Html.fromHtml(getString(R.string.user_guide_share_location_btn_text) + "<font color='#0076ff'>" + getString(R.string.user_guide_share_location_btn_text_postfix) + "</font>"));
                }
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.setMargins(intArrayExtra3[0], intArrayExtra3[1], 0, 0);
                inflate3.setLayoutParams(layoutParams3);
                this.f14888a.addView(inflate3);
            }
        }
    }
}
