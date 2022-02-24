package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class AutoSendLocationActivity extends BaseActivity implements View.OnClickListener {
    private ImageView A;
    private TextView B;
    private TextView C;
    private TextView D;
    private TextView E;
    private TextView F;
    private ArrayList<ImageView> G;
    private ImageView H;
    private int I;
    private int J;
    private TextView q;
    private RelativeLayout r;
    private RelativeLayout s;
    private RelativeLayout t;
    private RelativeLayout u;
    private RelativeLayout v;
    private ImageView w;
    private ImageView x;
    private ImageView y;
    private ImageView z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AutoSendLocationActivity.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.J != this.I) {
            Intent intent = new Intent();
            intent.putExtra("setting_auto_send_location_space_time", this.I);
            setResult(1, intent);
            finish();
            return;
        }
        finish();
    }

    private void x() {
        r();
        this.q = (TextView) a(R.id.title_bar_title);
        this.r = (RelativeLayout) a(R.id.select_1_minute_rl);
        this.w = (ImageView) a(R.id.select_1_minute_iv);
        this.B = (TextView) a(R.id.select_1_minute_tv);
        this.s = (RelativeLayout) a(R.id.select_3_minute_rl);
        this.x = (ImageView) a(R.id.select_3_minute_iv);
        this.C = (TextView) a(R.id.select_3_minute_tv);
        this.t = (RelativeLayout) a(R.id.select_5_minute_rl);
        this.y = (ImageView) a(R.id.select_5_minute_iv);
        this.D = (TextView) a(R.id.select_5_minute_tv);
        this.u = (RelativeLayout) a(R.id.select_10_minute_rl);
        this.z = (ImageView) a(R.id.select_10_minute_iv);
        this.E = (TextView) a(R.id.select_10_minute_tv);
        this.v = (RelativeLayout) a(R.id.select_15_minute_rl);
        this.A = (ImageView) a(R.id.select_15_minute_iv);
        this.F = (TextView) a(R.id.select_15_minute_tv);
        this.q.setText(getText(R.string.auto_send_location_interval));
        this.r.setOnClickListener(this);
        this.s.setOnClickListener(this);
        this.t.setOnClickListener(this);
        this.u.setOnClickListener(this);
        this.v.setOnClickListener(this);
        ArrayList<ImageView> arrayList = new ArrayList<>();
        this.G = arrayList;
        arrayList.add(this.w);
        this.G.add(this.x);
        this.G.add(this.y);
        this.G.add(this.z);
        this.G.add(this.A);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        w();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case R.id.select_10_minute_rl /* 2131297145 */:
                    this.z.setSelected(true);
                    this.H = this.z;
                    this.I = 10;
                    break;
                case R.id.select_15_minute_rl /* 2131297148 */:
                    this.A.setSelected(true);
                    this.H = this.A;
                    this.I = 15;
                    break;
                case R.id.select_1_minute_rl /* 2131297151 */:
                    this.w.setSelected(true);
                    this.H = this.w;
                    this.I = 1;
                    break;
                case R.id.select_3_minute_rl /* 2131297154 */:
                    this.x.setSelected(true);
                    this.H = this.x;
                    this.I = 3;
                    break;
                case R.id.select_5_minute_rl /* 2131297157 */:
                    this.y.setSelected(true);
                    this.H = this.y;
                    this.I = 5;
                    break;
            }
        } finally {
            Iterator<ImageView> it = this.G.iterator();
            while (true) {
                if (it.hasNext()) {
                    ImageView next = it.next();
                    if (next != this.H && next.isSelected()) {
                        next.setSelected(false);
                        break;
                    }
                } else {
                    break;
                }
            }
            if (this.J != this.I) {
                c0.a((CharSequence) getString(R.string.set_success), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_auto_send_location);
        x();
        int a2 = ((int) d0.a(l())) / 60000;
        if (a2 == 1) {
            this.w.setSelected(true);
            this.I = 1;
        } else if (a2 == 3) {
            this.x.setSelected(true);
            this.I = 3;
        } else if (a2 == 5) {
            this.y.setSelected(true);
            this.I = 5;
        } else if (a2 == 10) {
            this.z.setSelected(true);
            this.I = 10;
        } else if (a2 == 15) {
            this.A.setSelected(true);
            this.I = 15;
        }
        this.J = this.I;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.G.clear();
        this.G = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new a());
    }
}
