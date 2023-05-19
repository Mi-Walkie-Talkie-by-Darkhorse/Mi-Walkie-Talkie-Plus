package com.ifengyu.intercom.p216ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.ifengyu.intercom.ui.activity.AutoSendLocationActivity */
/* loaded from: classes2.dex */
public class AutoSendLocationActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private TextView f14723j;

    /* renamed from: k */
    private RelativeLayout f14724k;

    /* renamed from: l */
    private RelativeLayout f14725l;

    /* renamed from: m */
    private RelativeLayout f14726m;

    /* renamed from: n */
    private RelativeLayout f14727n;

    /* renamed from: o */
    private RelativeLayout f14728o;

    /* renamed from: p */
    private ImageView f14729p;

    /* renamed from: q */
    private ImageView f14730q;

    /* renamed from: r */
    private ImageView f14731r;

    /* renamed from: s */
    private ImageView f14732s;

    /* renamed from: t */
    private ImageView f14733t;

    /* renamed from: u */
    private ArrayList<ImageView> f14734u;

    /* renamed from: v */
    private ImageView f14735v;

    /* renamed from: w */
    private int f14736w;

    /* renamed from: x */
    private int f14737x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.AutoSendLocationActivity$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4342a implements View.OnClickListener {
        View$OnClickListenerC4342a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AutoSendLocationActivity.this.m10623G();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public void m10623G() {
        if (this.f14737x != this.f14736w) {
            Intent intent = new Intent();
            intent.putExtra("setting_auto_send_location_space_time", this.f14736w);
            setResult(1, intent);
            finish();
            return;
        }
        finish();
    }

    /* renamed from: H */
    private void m10622H() {
        mo10278s();
        this.f14723j = (TextView) m10282o(R.id.title_bar_title);
        this.f14724k = (RelativeLayout) m10282o(R.id.select_1_minute_rl);
        this.f14729p = (ImageView) m10282o(R.id.select_1_minute_iv);
        TextView textView = (TextView) m10282o(R.id.select_1_minute_tv);
        this.f14725l = (RelativeLayout) m10282o(R.id.select_3_minute_rl);
        this.f14730q = (ImageView) m10282o(R.id.select_3_minute_iv);
        TextView textView2 = (TextView) m10282o(R.id.select_3_minute_tv);
        this.f14726m = (RelativeLayout) m10282o(R.id.select_5_minute_rl);
        this.f14731r = (ImageView) m10282o(R.id.select_5_minute_iv);
        TextView textView3 = (TextView) m10282o(R.id.select_5_minute_tv);
        this.f14727n = (RelativeLayout) m10282o(R.id.select_10_minute_rl);
        this.f14732s = (ImageView) m10282o(R.id.select_10_minute_iv);
        TextView textView4 = (TextView) m10282o(R.id.select_10_minute_tv);
        this.f14728o = (RelativeLayout) m10282o(R.id.select_15_minute_rl);
        this.f14733t = (ImageView) m10282o(R.id.select_15_minute_iv);
        TextView textView5 = (TextView) m10282o(R.id.select_15_minute_tv);
        this.f14723j.setText(getText(R.string.auto_send_location_interval));
        this.f14724k.setOnClickListener(this);
        this.f14725l.setOnClickListener(this);
        this.f14726m.setOnClickListener(this);
        this.f14727n.setOnClickListener(this);
        this.f14728o.setOnClickListener(this);
        ArrayList<ImageView> arrayList = new ArrayList<>();
        this.f14734u = arrayList;
        arrayList.add(this.f14729p);
        this.f14734u.add(this.f14730q);
        this.f14734u.add(this.f14731r);
        this.f14734u.add(this.f14732s);
        this.f14734u.add(this.f14733t);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m10623G();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case R.id.select_10_minute_rl /* 2131297273 */:
                    this.f14732s.setSelected(true);
                    this.f14735v = this.f14732s;
                    this.f14736w = 10;
                    break;
                case R.id.select_15_minute_rl /* 2131297276 */:
                    this.f14733t.setSelected(true);
                    this.f14735v = this.f14733t;
                    this.f14736w = 15;
                    break;
                case R.id.select_1_minute_rl /* 2131297279 */:
                    this.f14729p.setSelected(true);
                    this.f14735v = this.f14729p;
                    this.f14736w = 1;
                    break;
                case R.id.select_3_minute_rl /* 2131297282 */:
                    this.f14730q.setSelected(true);
                    this.f14735v = this.f14730q;
                    this.f14736w = 3;
                    break;
                case R.id.select_5_minute_rl /* 2131297285 */:
                    this.f14731r.setSelected(true);
                    this.f14735v = this.f14731r;
                    this.f14736w = 5;
                    break;
            }
            while (true) {
            }
        } finally {
            Iterator<ImageView> it2 = this.f14734u.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ImageView next = it2.next();
                if (next != this.f14735v && next.isSelected()) {
                    next.setSelected(false);
                    break;
                }
            }
            if (this.f14737x != this.f14736w) {
                MethodsUtils.m11302H(getString(R.string.set_success), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_auto_send_location);
        m10622H();
        int m11201l = ((int) MiTalkClientUtil.m11201l(MiTalkClientUtil.m11195o())) / 60000;
        if (m11201l == 1) {
            this.f14729p.setSelected(true);
            this.f14736w = 1;
        } else if (m11201l == 3) {
            this.f14730q.setSelected(true);
            this.f14736w = 3;
        } else if (m11201l == 5) {
            this.f14731r.setSelected(true);
            this.f14736w = 5;
        } else if (m11201l == 10) {
            this.f14732s.setSelected(true);
            this.f14736w = 10;
        } else if (m11201l == 15) {
            this.f14733t.setSelected(true);
            this.f14736w = 15;
        }
        this.f14737x = this.f14736w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f14734u.clear();
        this.f14734u = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1
    /* renamed from: s */
    protected void mo10278s() {
        ImageView imageView = (ImageView) m10282o(R.id.title_bar_left);
        this.f15057c = imageView;
        imageView.setOnClickListener(new View$OnClickListenerC4342a());
    }
}
