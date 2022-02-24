package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.v;
import com.ifengyu.intercom.ui.adapter.g;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

/* loaded from: classes2.dex */
public class GaoDeMapDownLoadedActivity extends BaseActivity implements View.OnClickListener, OfflineMapManager.OfflineLoadedListener, v.b {
    private TextView q;
    private ImageView r;
    private LinearLayout s;
    private LinearLayout t;
    private ListView u;
    private g v;
    private Handler w = new a();

    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                GaoDeMapDownLoadedActivity.this.v.notifyDataSetChanged();
            } else if (i == 1) {
                GaoDeMapDownLoadedActivity.this.v.a();
            }
        }
    }

    private void x() {
        this.f6372c = (ImageView) findViewById(R.id.title_bar_left);
        this.q = (TextView) findViewById(R.id.title_bar_title);
        this.r = (ImageView) findViewById(R.id.title_bar_right);
        this.s = (LinearLayout) findViewById(R.id.offmap_downloaded_listview_layout);
        this.t = (LinearLayout) findViewById(R.id.this_not_have_content_layout);
        this.f6372c.setOnClickListener(this);
        this.q.setText(getText(R.string.gaode_standard_map_download));
        this.r.setVisibility(0);
        this.r.setImageResource(R.drawable.common_icon_increase);
        this.r.setOnClickListener(this);
        this.u = (ListView) a(R.id.offmap_download_listview);
        if (v.c()) {
            w();
        } else {
            v.b().setOnOfflineLoadedListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            case R.id.title_bar_right /* 2131297306 */:
                a(GaoDeOfflineMapCityActivity.class);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaode_map_down_loaded);
        x();
        v.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        v.b(this);
    }

    @Override // com.ifengyu.intercom.i.v.b
    public void onDownload(int i, int i2, String str) {
        this.w.sendEmptyMessage(0);
    }

    @Override // com.ifengyu.intercom.i.v.b
    public void onRemove(boolean z, String str, String str2) {
        this.w.sendEmptyMessage(1);
        if (v.b().getDownloadingCityList().size() == 0 && v.b().getDownloadOfflineMapCityList().size() == 0) {
            this.s.setVisibility(8);
            this.t.setVisibility(0);
            return;
        }
        this.s.setVisibility(0);
        this.t.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (v.b().getDownloadingCityList().size() == 0 && v.b().getDownloadOfflineMapCityList().size() == 0) {
            this.s.setVisibility(8);
            this.t.setVisibility(0);
        } else {
            this.s.setVisibility(0);
            this.t.setVisibility(8);
        }
        g gVar = this.v;
        if (gVar != null) {
            gVar.a();
        }
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener
    public void onVerifyComplete() {
        v.a(true);
        w();
    }

    public void w() {
        g gVar = new g(this, v.b());
        this.v = gVar;
        this.u.setAdapter((ListAdapter) gVar);
        if (v.b().getDownloadingCityList().size() == 0 && v.b().getDownloadOfflineMapCityList().size() == 0) {
            this.s.setVisibility(8);
            this.t.setVisibility(0);
            return;
        }
        this.s.setVisibility(0);
        this.t.setVisibility(8);
    }
}
