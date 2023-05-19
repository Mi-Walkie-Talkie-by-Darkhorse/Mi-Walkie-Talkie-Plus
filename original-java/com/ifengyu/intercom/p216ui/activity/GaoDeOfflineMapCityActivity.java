package com.ifengyu.intercom.p216ui.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.GaoDeOfflineMapManagerInstance;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.p217b.GaoDeOfflineCityListAdapter;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.activity.GaoDeOfflineMapCityActivity */
/* loaded from: classes2.dex */
public class GaoDeOfflineMapCityActivity extends BaseActivity1 implements View.OnClickListener, GaoDeOfflineMapManagerInstance.InterfaceC4160b {
    @BindView(R.id.city_expandable_list_view)
    ExpandableListView cityExpandableListView;

    /* renamed from: j */
    private LinearLayout f14806j;

    /* renamed from: k */
    private TextView f14807k;

    /* renamed from: l */
    private TextView f14808l;
    @BindView(R.id.title_bar_left)
    ImageView leftBackIv;

    /* renamed from: m */
    private ImageView f14809m;

    /* renamed from: n */
    private LinearLayout f14810n;

    /* renamed from: o */
    private TextView f14811o;

    /* renamed from: p */
    private TextView f14812p;

    /* renamed from: q */
    private ImageView f14813q;

    /* renamed from: s */
    private GaoDeOfflineCityListAdapter f14815s;

    /* renamed from: t */
    private OfflineMapCity f14816t;
    @BindView(R.id.title_bar_title)
    TextView titleText;

    /* renamed from: u */
    private String f14817u;

    /* renamed from: v */
    private OfflineMapCity f14818v;

    /* renamed from: w */
    private String f14819w;

    /* renamed from: x */
    private boolean f14820x;

    /* renamed from: z */
    private TextView f14822z;

    /* renamed from: r */
    private List<OfflineMapProvince> f14814r = new ArrayList();

    /* renamed from: y */
    private Handler f14821y = new HandlerC4349a();

    /* renamed from: com.ifengyu.intercom.ui.activity.GaoDeOfflineMapCityActivity$a */
    /* loaded from: classes2.dex */
    class HandlerC4349a extends Handler {
        HandlerC4349a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                GaoDeOfflineMapCityActivity.this.f14815s.notifyDataSetChanged();
            } else if (i == 1) {
                GaoDeOfflineMapCityActivity.this.m10529L();
            } else if (i != 2) {
            } else {
                GaoDeOfflineMapCityActivity.this.m10530K();
            }
        }
    }

    /* renamed from: I */
    private void m10532I() {
        ArrayList<OfflineMapProvince> offlineMapProvinceList = GaoDeOfflineMapManagerInstance.m11071c().getOfflineMapProvinceList();
        this.f14814r.add(null);
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        for (int i = 0; i < offlineMapProvinceList.size(); i++) {
            OfflineMapProvince offlineMapProvince = offlineMapProvinceList.get(i);
            if (offlineMapProvince.getCityList().size() != 1) {
                this.f14814r.add(i + 1, offlineMapProvince);
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
        this.f14814r.set(0, offlineMapProvince2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public void m10530K() {
        int state = this.f14818v.getState();
        if (state != -1) {
            if (state == 0) {
                this.f14813q.setVisibility(8);
                this.f14812p.setVisibility(0);
                this.f14812p.setTextColor(getResources().getColor(R.color.select_color));
                this.f14812p.setText(getString(R.string.downloading));
                return;
            } else if (state == 1) {
                this.f14813q.setVisibility(8);
                this.f14812p.setVisibility(0);
                this.f14812p.setTextColor(getResources().getColor(R.color.black60));
                this.f14812p.setText(R.string.unziping);
                return;
            } else if (state == 2) {
                this.f14813q.setVisibility(8);
                this.f14812p.setVisibility(0);
                this.f14812p.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.f14812p.setText(getString(R.string.waiting));
                return;
            } else if (state != 3) {
                if (state == 4) {
                    this.f14813q.setVisibility(8);
                    this.f14812p.setVisibility(0);
                    this.f14812p.setTextColor(getResources().getColor(R.color.black60));
                    this.f14812p.setText(getString(R.string.downloaded));
                    return;
                } else if (state == 6) {
                    this.f14813q.setVisibility(0);
                    this.f14812p.setVisibility(8);
                    return;
                } else {
                    switch (state) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                }
            }
        }
        this.f14813q.setVisibility(8);
        this.f14812p.setVisibility(0);
        this.f14812p.setTextColor(-65536);
        this.f14812p.setText(getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m10529L() {
        int state = this.f14816t.getState();
        if (state != -1) {
            if (state == 0) {
                this.f14809m.setVisibility(8);
                this.f14808l.setVisibility(0);
                this.f14808l.setTextColor(getResources().getColor(R.color.black60));
                this.f14808l.setText(getString(R.string.downloading));
                return;
            } else if (state == 1) {
                this.f14809m.setVisibility(8);
                this.f14808l.setVisibility(0);
                this.f14808l.setTextColor(getResources().getColor(R.color.black60));
                this.f14808l.setText(R.string.unziping);
                return;
            } else if (state == 2) {
                this.f14809m.setVisibility(8);
                this.f14808l.setVisibility(0);
                this.f14808l.setTextColor(getResources().getColor(R.color.gaode_map_download_waiting));
                this.f14808l.setText(getString(R.string.waiting));
                return;
            } else if (state != 3) {
                if (state == 4) {
                    this.f14809m.setVisibility(8);
                    this.f14808l.setVisibility(0);
                    this.f14808l.setTextColor(getResources().getColor(R.color.black60));
                    this.f14808l.setText(getString(R.string.downloaded));
                    return;
                } else if (state == 6) {
                    this.f14809m.setVisibility(0);
                    this.f14808l.setVisibility(8);
                    return;
                } else {
                    switch (state) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                }
            }
        }
        this.f14809m.setVisibility(8);
        this.f14808l.setVisibility(0);
        this.f14808l.setTextColor(-65536);
        this.f14808l.setText(getString(R.string.paused));
    }

    /* renamed from: J */
    public void m10531J() {
        this.leftBackIv.setOnClickListener(this);
        this.titleText.setText(getString(R.string.city_list));
        View inflate = View.inflate(this, R.layout.all_city_offline_download_listview_header, null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.current_city_layout);
        this.f14806j = linearLayout;
        linearLayout.setOnClickListener(this);
        TextView textView = (TextView) inflate.findViewById(R.id.current_city_item_name);
        this.f14807k = (TextView) inflate.findViewById(R.id.current_city_item_map_size);
        this.f14808l = (TextView) inflate.findViewById(R.id.current_city_item_text_status);
        this.f14809m = (ImageView) inflate.findViewById(R.id.current_city_item_download_icon);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.country_map_layout);
        this.f14810n = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f14822z = (TextView) inflate.findViewById(R.id.quanguokaiyaotu_text);
        if (MethodsUtils.m11297c()) {
            this.f14822z.setText(getString(R.string.country_offline_map_en));
        } else {
            this.f14822z.setText(getString(R.string.country_offline_map));
        }
        this.f14811o = (TextView) inflate.findViewById(R.id.country_map_item_map_size);
        this.f14812p = (TextView) inflate.findViewById(R.id.country_map_text_status);
        this.f14813q = (ImageView) inflate.findViewById(R.id.country_map_item_download_icon);
        this.f14817u = MiTalkClientUtil.m11215e();
        this.f14806j.setVisibility(8);
        this.f14819w = getString(R.string.country_offline_map);
        OfflineMapCity itemByCityName = GaoDeOfflineMapManagerInstance.m11071c().getItemByCityName(this.f14819w);
        this.f14818v = itemByCityName;
        TextView textView2 = this.f14811o;
        textView2.setText(String.valueOf(((int) (((itemByCityName.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
        m10530K();
        this.cityExpandableListView.addHeaderView(inflate);
        GaoDeOfflineCityListAdapter gaoDeOfflineCityListAdapter = new GaoDeOfflineCityListAdapter(this.f14814r, GaoDeOfflineMapManagerInstance.m11071c(), this);
        this.f14815s = gaoDeOfflineCityListAdapter;
        this.cityExpandableListView.setAdapter(gaoDeOfflineCityListAdapter);
        this.cityExpandableListView.setOnGroupCollapseListener(this.f14815s);
        this.cityExpandableListView.setOnGroupExpandListener(this.f14815s);
        this.cityExpandableListView.setGroupIndicator(null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.country_map_layout) {
            try {
                GaoDeOfflineMapManagerInstance.m11071c().downloadByCityName(this.f14819w);
            } catch (AMapException e) {
                e.printStackTrace();
            }
        } else if (id != R.id.current_city_layout) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
        } else if (this.f14817u != null) {
            try {
                GaoDeOfflineMapManagerInstance.m11071c().downloadByCityName(this.f14817u);
            } catch (AMapException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaode_offline_map_city);
        ButterKnife.bind(this);
        m10532I();
        m10531J();
        GaoDeOfflineMapManagerInstance.m11072b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        GaoDeOfflineMapManagerInstance.m11069e(this);
    }

    @Override // com.ifengyu.intercom.p214p.GaoDeOfflineMapManagerInstance.InterfaceC4160b
    public void onDownload(int i, int i2, String str) {
        if (!this.f14820x) {
            this.f14820x = true;
            OfflineMapCity offlineMapCity = this.f14816t;
            if (offlineMapCity != null) {
                TextView textView = this.f14807k;
                textView.setText(String.valueOf(((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            }
            TextView textView2 = this.f14811o;
            textView2.setText(String.valueOf(((int) (((this.f14818v.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
        }
        this.f14821y.sendEmptyMessage(0);
        String str2 = this.f14817u;
        if (str2 != null && str2.equals(str) && this.f14806j.getVisibility() == 0) {
            this.f14821y.sendEmptyMessage(1);
        }
        if (this.f14819w.equals(str)) {
            this.f14821y.sendEmptyMessage(2);
        }
    }

    @Override // com.ifengyu.intercom.p214p.GaoDeOfflineMapManagerInstance.InterfaceC4160b
    public void onRemove(boolean z, String str, String str2) {
    }
}
