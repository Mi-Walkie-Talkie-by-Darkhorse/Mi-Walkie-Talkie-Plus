package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.v;
import com.ifengyu.intercom.ui.adapter.f;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class GaoDeOfflineMapCityActivity extends BaseActivity implements View.OnClickListener, v.b {
    private f A;
    private OfflineMapCity B;
    private String C;
    private OfflineMapCity D;
    private String E;
    private boolean F;
    private TextView H;
    @BindView(R.id.city_expandable_list_view)
    ExpandableListView cityExpandableListView;
    @BindView(R.id.title_bar_left)
    ImageView leftBackIv;
    private LinearLayout q;
    private TextView r;
    private TextView s;
    private TextView t;
    @BindView(R.id.title_bar_title)
    TextView titleText;
    private ImageView u;
    private LinearLayout v;
    private TextView w;
    private TextView x;
    private ImageView y;
    private List<OfflineMapProvince> z = new ArrayList();
    private Handler G = new a();

    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                GaoDeOfflineMapCityActivity.this.A.notifyDataSetChanged();
            } else if (i == 1) {
                GaoDeOfflineMapCityActivity.this.z();
            } else if (i == 2) {
                GaoDeOfflineMapCityActivity.this.y();
            }
        }
    }

    private void x() {
        ArrayList<OfflineMapProvince> offlineMapProvinceList = v.b().getOfflineMapProvinceList();
        this.z.add(null);
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        for (int i = 0; i < offlineMapProvinceList.size(); i++) {
            OfflineMapProvince offlineMapProvince = offlineMapProvinceList.get(i);
            if (offlineMapProvince.getCityList().size() != 1) {
                this.z.add(i + 1, offlineMapProvince);
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
        this.z.set(0, offlineMapProvince2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int state = this.D.getState();
        if (state != -1) {
            if (state == 0) {
                this.y.setVisibility(8);
                this.x.setVisibility(0);
                this.x.setTextColor(getResources().getColor(R.color.select_color));
                this.x.setText(getString(R.string.downloading));
                return;
            } else if (state == 1) {
                this.y.setVisibility(8);
                this.x.setVisibility(0);
                this.x.setTextColor(getResources().getColor(R.color.black60));
                this.x.setText(R.string.unziping);
                return;
            } else if (state == 2) {
                this.y.setVisibility(8);
                this.x.setVisibility(0);
                this.x.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.x.setText(getString(R.string.waiting));
                return;
            } else if (state != 3) {
                if (state == 4) {
                    this.y.setVisibility(8);
                    this.x.setVisibility(0);
                    this.x.setTextColor(getResources().getColor(R.color.black60));
                    this.x.setText(getString(R.string.downloaded));
                    return;
                } else if (state != 6) {
                    switch (state) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                } else {
                    this.y.setVisibility(0);
                    this.x.setVisibility(8);
                    return;
                }
            }
        }
        this.y.setVisibility(8);
        this.x.setVisibility(0);
        this.x.setTextColor(-65536);
        this.x.setText(getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        int state = this.B.getState();
        if (state != -1) {
            if (state == 0) {
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.black60));
                this.t.setText(getString(R.string.downloading));
                return;
            } else if (state == 1) {
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.black60));
                this.t.setText(R.string.unziping);
                return;
            } else if (state == 2) {
                this.u.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.t.setText(getString(R.string.waiting));
                return;
            } else if (state != 3) {
                if (state == 4) {
                    this.u.setVisibility(8);
                    this.t.setVisibility(0);
                    this.t.setTextColor(getResources().getColor(R.color.black60));
                    this.t.setText(getString(R.string.downloaded));
                    return;
                } else if (state != 6) {
                    switch (state) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                } else {
                    this.u.setVisibility(0);
                    this.t.setVisibility(8);
                    return;
                }
            }
        }
        this.u.setVisibility(8);
        this.t.setVisibility(0);
        this.t.setTextColor(-65536);
        this.t.setText(getString(R.string.paused));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.country_map_layout) {
            try {
                v.b().downloadByCityName(this.E);
            } catch (AMapException e) {
                e.printStackTrace();
            }
        } else if (id != R.id.current_city_layout) {
            if (id == R.id.title_bar_left) {
                finish();
            }
        } else if (this.C != null) {
            try {
                v.b().downloadByCityName(this.C);
            } catch (AMapException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaode_offline_map_city);
        ButterKnife.bind(this);
        x();
        w();
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
        if (!this.F) {
            this.F = true;
            OfflineMapCity offlineMapCity = this.B;
            if (offlineMapCity != null) {
                TextView textView = this.s;
                textView.setText(String.valueOf(((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            }
            TextView textView2 = this.w;
            textView2.setText(String.valueOf(((int) (((this.D.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
        }
        this.G.sendEmptyMessage(0);
        String str2 = this.C;
        if (str2 != null && str2.equals(str) && this.q.getVisibility() == 0) {
            this.G.sendEmptyMessage(1);
        }
        if (this.E.equals(str)) {
            this.G.sendEmptyMessage(2);
        }
    }

    @Override // com.ifengyu.intercom.i.v.b
    public void onRemove(boolean z, String str, String str2) {
    }

    public void w() {
        this.leftBackIv.setOnClickListener(this);
        this.titleText.setText(getString(R.string.city_list));
        View inflate = View.inflate(this, R.layout.all_city_offline_download_listview_header, null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.current_city_layout);
        this.q = linearLayout;
        linearLayout.setOnClickListener(this);
        this.r = (TextView) inflate.findViewById(R.id.current_city_item_name);
        this.s = (TextView) inflate.findViewById(R.id.current_city_item_map_size);
        this.t = (TextView) inflate.findViewById(R.id.current_city_item_text_status);
        this.u = (ImageView) inflate.findViewById(R.id.current_city_item_download_icon);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.country_map_layout);
        this.v = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.H = (TextView) inflate.findViewById(R.id.quanguokaiyaotu_text);
        if (c0.a()) {
            this.H.setText(getString(R.string.country_offline_map_en));
        } else {
            this.H.setText(getString(R.string.country_offline_map));
        }
        this.w = (TextView) inflate.findViewById(R.id.country_map_item_map_size);
        this.x = (TextView) inflate.findViewById(R.id.country_map_text_status);
        this.y = (ImageView) inflate.findViewById(R.id.country_map_item_download_icon);
        String e = d0.e();
        this.C = e;
        if (e == null) {
            this.q.setVisibility(8);
        } else {
            this.q.setVisibility(0);
            OfflineMapCity itemByCityName = v.b().getItemByCityName(this.C);
            this.B = itemByCityName;
            if (itemByCityName != null) {
                if (c0.a()) {
                    this.r.setText(c(this.B.getPinyin().toLowerCase()));
                } else {
                    this.r.setText(this.B.getCity());
                }
                TextView textView = this.s;
                textView.setText(String.valueOf(((int) (((this.B.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            }
            z();
        }
        this.E = getString(R.string.country_offline_map);
        OfflineMapCity itemByCityName2 = v.b().getItemByCityName(this.E);
        this.D = itemByCityName2;
        TextView textView2 = this.w;
        textView2.setText(String.valueOf(((int) (((itemByCityName2.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
        y();
        this.cityExpandableListView.addHeaderView(inflate);
        f fVar = new f(this.z, v.b(), this);
        this.A = fVar;
        this.cityExpandableListView.setAdapter(fVar);
        this.cityExpandableListView.setOnGroupCollapseListener(this.A);
        this.cityExpandableListView.setOnGroupExpandListener(this.A);
        this.cityExpandableListView.setGroupIndicator(null);
    }

    @NonNull
    private String c(String str) {
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
}
