package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.Iterator;

public class AutoSendLocationActivity extends BaseActivity implements OnClickListener {
    private TextView A;
    private TextView B;
    private ArrayList<ImageView> C;
    private ImageView D;
    private int E;
    private int F;
    private TextView a;
    private RelativeLayout b;
    private RelativeLayout c;
    private RelativeLayout d;
    private RelativeLayout q;
    private RelativeLayout r;
    private ImageView s;
    private ImageView t;
    private ImageView u;
    private ImageView v;
    private ImageView w;
    private TextView x;
    private TextView y;
    private TextView z;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_auto_send_location);
        c();
        switch (((int) w.k(p())) / 60000) {
            case 1:
                this.s.setSelected(true);
                this.E = 1;
                break;
            case 3:
                this.t.setSelected(true);
                this.E = 3;
                break;
            case 5:
                this.u.setSelected(true);
                this.E = 5;
                break;
            case 10:
                this.v.setSelected(true);
                this.E = 10;
                break;
            case 15:
                this.w.setSelected(true);
                this.E = 15;
                break;
        }
        this.F = this.E;
    }

    private void c() {
        c_();
        this.a = (TextView) c(R.id.title_bar_title);
        this.b = (RelativeLayout) c(R.id.select_1_minute_rl);
        this.s = (ImageView) c(R.id.select_1_minute_iv);
        this.x = (TextView) c(R.id.select_1_minute_tv);
        this.c = (RelativeLayout) c(R.id.select_3_minute_rl);
        this.t = (ImageView) c(R.id.select_3_minute_iv);
        this.y = (TextView) c(R.id.select_3_minute_tv);
        this.d = (RelativeLayout) c(R.id.select_5_minute_rl);
        this.u = (ImageView) c(R.id.select_5_minute_iv);
        this.z = (TextView) c(R.id.select_5_minute_tv);
        this.q = (RelativeLayout) c(R.id.select_10_minute_rl);
        this.v = (ImageView) c(R.id.select_10_minute_iv);
        this.A = (TextView) c(R.id.select_10_minute_tv);
        this.r = (RelativeLayout) c(R.id.select_15_minute_rl);
        this.w = (ImageView) c(R.id.select_15_minute_iv);
        this.B = (TextView) c(R.id.select_15_minute_tv);
        this.a.setText(getText(R.string.auto_send_location_interval));
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.C = new ArrayList<>();
        this.C.add(this.s);
        this.C.add(this.t);
        this.C.add(this.u);
        this.C.add(this.v);
        this.C.add(this.w);
    }

    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case R.id.select_1_minute_rl /*2131755167*/:
                    this.s.setSelected(true);
                    this.D = this.s;
                    this.E = 1;
                    break;
                case R.id.select_3_minute_rl /*2131755170*/:
                    this.t.setSelected(true);
                    this.D = this.t;
                    this.E = 3;
                    break;
                case R.id.select_5_minute_rl /*2131755173*/:
                    this.u.setSelected(true);
                    this.D = this.u;
                    this.E = 5;
                    break;
                case R.id.select_10_minute_rl /*2131755176*/:
                    this.v.setSelected(true);
                    this.D = this.v;
                    this.E = 10;
                    break;
                case R.id.select_15_minute_rl /*2131755179*/:
                    this.w.setSelected(true);
                    this.D = this.w;
                    this.E = 15;
                    break;
            }
            Iterator it = this.C.iterator();
            while (true) {
                if (it.hasNext()) {
                    ImageView imageView = (ImageView) it.next();
                    if (imageView != this.D && imageView.isSelected()) {
                        imageView.setSelected(false);
                    }
                }
            }
            if (this.F != this.E) {
                v.a((CharSequence) getString(R.string.set_success), false);
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            Iterator it2 = this.C.iterator();
            while (true) {
                if (it2.hasNext()) {
                    ImageView imageView2 = (ImageView) it2.next();
                    if (imageView2 != this.D && imageView2.isSelected()) {
                        imageView2.setSelected(false);
                    }
                }
            }
            if (this.F != this.E) {
                v.a((CharSequence) getString(R.string.set_success), false);
            }
            throw th2;
        }
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                AutoSendLocationActivity.this.d();
            }
        });
    }

    public void onBackPressed() {
        d();
    }

    /* access modifiers changed from: private */
    public void d() {
        if (this.F != this.E) {
            Intent intent = new Intent();
            intent.putExtra("setting_auto_send_location_space_time", this.E);
            setResult(1, intent);
            finish();
            return;
        }
        finish();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.C.clear();
        this.C = null;
    }
}
