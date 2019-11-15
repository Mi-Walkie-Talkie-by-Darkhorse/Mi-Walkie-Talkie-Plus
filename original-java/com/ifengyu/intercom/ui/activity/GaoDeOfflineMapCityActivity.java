package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.r;
import com.ifengyu.intercom.b.r.a;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.adapter.f;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.List;

public class GaoDeOfflineMapCityActivity extends BaseActivity implements OnClickListener, a {
    private String A;
    private boolean B;
    private Handler C = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    GaoDeOfflineMapCityActivity.this.w.notifyDataSetChanged();
                    return;
                case 1:
                    GaoDeOfflineMapCityActivity.this.e();
                    return;
                case 2:
                    GaoDeOfflineMapCityActivity.this.f();
                    return;
                default:
                    return;
            }
        }
    };
    private TextView D;
    private LinearLayout a;
    private TextView b;
    private TextView c;
    @BindView(2131755232)
    ExpandableListView cityExpandableListView;
    private TextView d;
    @BindView(2131755203)
    ImageView leftBackIv;
    private ImageView q;
    private LinearLayout r;
    private TextView s;
    private TextView t;
    @BindView(2131755588)
    TextView titleText;
    private ImageView u;
    private List<OfflineMapProvince> v = new ArrayList();
    /* access modifiers changed from: private */
    public f w;
    private OfflineMapCity x;
    private String y;
    private OfflineMapCity z;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_gaode_offline_map_city);
        ButterKnife.bind((Activity) this);
        d();
        c();
        r.a((a) this);
    }

    public void c() {
        this.leftBackIv.setOnClickListener(this);
        this.titleText.setText(getString(R.string.city_list));
        View inflate = View.inflate(this, R.layout.all_city_offline_download_listview_header, null);
        this.a = (LinearLayout) inflate.findViewById(R.id.current_city_layout);
        this.a.setOnClickListener(this);
        this.b = (TextView) inflate.findViewById(R.id.current_city_item_name);
        this.c = (TextView) inflate.findViewById(R.id.current_city_item_map_size);
        this.d = (TextView) inflate.findViewById(R.id.current_city_item_text_status);
        this.q = (ImageView) inflate.findViewById(R.id.current_city_item_download_icon);
        this.r = (LinearLayout) inflate.findViewById(R.id.country_map_layout);
        this.r.setOnClickListener(this);
        this.D = (TextView) inflate.findViewById(R.id.quanguokaiyaotu_text);
        if (v.a()) {
            this.D.setText(getString(R.string.country_offline_map_en));
        } else {
            this.D.setText(getString(R.string.country_offline_map));
        }
        this.s = (TextView) inflate.findViewById(R.id.country_map_item_map_size);
        this.t = (TextView) inflate.findViewById(R.id.country_map_text_status);
        this.u = (ImageView) inflate.findViewById(R.id.country_map_item_download_icon);
        this.y = w.V();
        if (this.y == null) {
            this.a.setVisibility(8);
        } else {
            this.a.setVisibility(0);
            this.x = r.a().getItemByCityName(this.y);
            if (this.x != null) {
                if (v.a()) {
                    this.b.setText(a(this.x.getPinyin().toLowerCase()));
                } else {
                    this.b.setText(this.x.getCity());
                }
                this.c.setText(String.valueOf(((double) ((int) (((((double) this.x.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
            }
            e();
        }
        this.A = getString(R.string.country_offline_map);
        this.z = r.a().getItemByCityName(this.A);
        this.s.setText(String.valueOf(((double) ((int) (((((double) this.z.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
        f();
        this.cityExpandableListView.addHeaderView(inflate);
        this.w = new f(this.v, r.a(), this);
        this.cityExpandableListView.setAdapter(this.w);
        this.cityExpandableListView.setOnGroupCollapseListener(this.w);
        this.cityExpandableListView.setOnGroupExpandListener(this.w);
        this.cityExpandableListView.setGroupIndicator(null);
    }

    @NonNull
    private String a(String str) {
        if (str.equals("quanguogaiyaotu")) {
            return "National Basic Map";
        }
        if (str.equals("xian")) {
            return "Xi'an";
        }
        if (str.equals("yaan")) {
            return "Ya'an";
        }
        if (str.equals("liuan")) {
            return "Liu'an";
        }
        if (str.equals("huaian")) {
            return "Huai'an";
        }
        if (str.equals("guanan")) {
            return "Guang'an";
        }
        if (str.equals("taian")) {
            return "Tai'an";
        }
        if (str.equals("xianggang")) {
            return "Hong Kong";
        }
        if (str.equals("aomen")) {
            return "Macao";
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public void a(int i, int i2, String str) {
        if (!this.B) {
            this.B = true;
            if (this.x != null) {
                this.c.setText(String.valueOf(((double) ((int) (((((double) this.x.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
            }
            this.s.setText(String.valueOf(((double) ((int) (((((double) this.z.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
        }
        this.C.sendEmptyMessage(0);
        if (this.y != null && this.y.equals(str) && this.a.getVisibility() == 0) {
            this.C.sendEmptyMessage(1);
        }
        if (this.A.equals(str)) {
            this.C.sendEmptyMessage(2);
        }
    }

    public void a(boolean z2, String str, String str2) {
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

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.current_city_layout /*2131755422*/:
                if (this.y != null) {
                    try {
                        r.a().downloadByCityName(this.y);
                        return;
                    } catch (AMapException e) {
                        ThrowableExtension.printStackTrace(e);
                        return;
                    }
                } else {
                    return;
                }
            case R.id.country_map_layout /*2131755427*/:
                try {
                    r.a().downloadByCityName(this.A);
                    return;
                } catch (AMapException e2) {
                    ThrowableExtension.printStackTrace(e2);
                    return;
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        r.b(this);
    }

    private void d() {
        ArrayList offlineMapProvinceList = r.a().getOfflineMapProvinceList();
        this.v.add(null);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < offlineMapProvinceList.size(); i++) {
            OfflineMapProvince offlineMapProvince = (OfflineMapProvince) offlineMapProvinceList.get(i);
            if (offlineMapProvince.getCityList().size() != 1) {
                this.v.add(i + 1, offlineMapProvince);
            } else {
                String provinceName = offlineMapProvince.getProvinceName();
                if (provinceName.contains(getString(R.string.beijing)) || provinceName.contains(getString(R.string.shanghai)) || provinceName.contains(getString(R.string.tianjin)) || provinceName.contains(getString(R.string.chongqing)) || provinceName.contains(getString(R.string.hangkang)) || provinceName.contains(getString(R.string.aomen))) {
                    arrayList.addAll(offlineMapProvince.getCityList());
                }
            }
        }
        OfflineMapProvince offlineMapProvince2 = new OfflineMapProvince();
        offlineMapProvince2.setProvinceName(getString(R.string.zhixiashi_or_hangkang));
        offlineMapProvince2.setPinyin(getString(R.string.zhixiashi_or_hangkang_en));
        offlineMapProvince2.setCityList(arrayList);
        this.v.set(0, offlineMapProvince2);
    }

    /* access modifiers changed from: private */
    public void e() {
        switch (this.x.getState()) {
            case -1:
            case 3:
            case 101:
            case 102:
            case 103:
                this.q.setVisibility(8);
                this.d.setVisibility(0);
                this.d.setTextColor(SupportMenu.CATEGORY_MASK);
                this.d.setText(getString(R.string.paused));
                return;
            case 0:
                this.q.setVisibility(8);
                this.d.setVisibility(0);
                this.d.setTextColor(getResources().getColor(R.color.black60));
                this.d.setText(getString(R.string.downloading));
                return;
            case 1:
                this.q.setVisibility(8);
                this.d.setVisibility(0);
                this.d.setTextColor(getResources().getColor(R.color.black60));
                this.d.setText(R.string.unziping);
                return;
            case 2:
                this.q.setVisibility(8);
                this.d.setVisibility(0);
                this.d.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.d.setText(getString(R.string.waiting));
                return;
            case 4:
                this.q.setVisibility(8);
                this.d.setVisibility(0);
                this.d.setTextColor(getResources().getColor(R.color.black60));
                this.d.setText(getString(R.string.downloaded));
                return;
            case 6:
                this.q.setVisibility(0);
                this.d.setVisibility(8);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void f() {
        switch (this.z.getState()) {
            case -1:
            case 3:
            case 101:
            case 102:
            case 103:
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(SupportMenu.CATEGORY_MASK);
                this.t.setText(getString(R.string.paused));
                return;
            case 0:
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.select_color));
                this.t.setText(getString(R.string.downloading));
                return;
            case 1:
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.black60));
                this.t.setText(R.string.unziping);
                return;
            case 2:
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.t.setText(getString(R.string.waiting));
                return;
            case 4:
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.black60));
                this.t.setText(getString(R.string.downloaded));
                return;
            case 6:
                this.u.setVisibility(0);
                this.t.setVisibility(8);
                return;
            default:
                return;
        }
    }
}
