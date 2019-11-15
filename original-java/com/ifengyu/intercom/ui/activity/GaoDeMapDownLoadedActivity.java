package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.r;
import com.ifengyu.intercom.b.r.a;
import com.ifengyu.intercom.ui.adapter.g;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

public class GaoDeMapDownLoadedActivity extends BaseActivity implements OnClickListener, OfflineLoadedListener, a {
    private TextView a;
    private ImageView b;
    private LinearLayout c;
    private LinearLayout d;
    private ListView q;
    /* access modifiers changed from: private */
    public g r;
    private Handler s = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    GaoDeMapDownLoadedActivity.this.r.notifyDataSetChanged();
                    return;
                case 1:
                    GaoDeMapDownLoadedActivity.this.r.a();
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_gaode_map_down_loaded);
        d();
        r.a((a) this);
    }

    private void d() {
        this.g = (ImageView) findViewById(R.id.title_bar_left);
        this.a = (TextView) findViewById(R.id.title_bar_title);
        this.b = (ImageView) findViewById(R.id.title_bar_right);
        this.c = (LinearLayout) findViewById(R.id.offmap_downloaded_listview_layout);
        this.d = (LinearLayout) findViewById(R.id.this_not_have_content_layout);
        this.g.setOnClickListener(this);
        this.a.setText(getText(R.string.gaode_standard_map_download));
        this.b.setVisibility(0);
        this.b.setImageResource(R.drawable.common_icon_increase);
        this.b.setOnClickListener(this);
        this.q = (ListView) c(R.id.offmap_download_listview);
        if (r.b()) {
            c();
        } else {
            r.a().setOnOfflineLoadedListener(this);
        }
    }

    public void a(int i, int i2, String str) {
        this.s.sendEmptyMessage(0);
    }

    public void a(boolean z, String str, String str2) {
        this.s.sendEmptyMessage(1);
        if (r.a().getDownloadingCityList().size() == 0 && r.a().getDownloadOfflineMapCityList().size() == 0) {
            this.c.setVisibility(8);
            this.d.setVisibility(0);
            return;
        }
        this.c.setVisibility(0);
        this.d.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (r.a().getDownloadingCityList().size() == 0 && r.a().getDownloadOfflineMapCityList().size() == 0) {
            this.c.setVisibility(8);
            this.d.setVisibility(0);
        } else {
            this.c.setVisibility(0);
            this.d.setVisibility(8);
        }
        if (this.r != null) {
            this.r.a();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        r.b(this);
    }

    public void onVerifyComplete() {
        r.a(true);
        c();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.title_bar_right /*2131755355*/:
                a(GaoDeOfflineMapCityActivity.class);
                return;
            default:
                return;
        }
    }

    public void c() {
        this.r = new g(this, r.a());
        this.q.setAdapter(this.r);
        if (r.a().getDownloadingCityList().size() == 0 && r.a().getDownloadOfflineMapCityList().size() == 0) {
            this.c.setVisibility(8);
            this.d.setVisibility(0);
            return;
        }
        this.c.setVisibility(0);
        this.d.setVisibility(8);
    }
}
