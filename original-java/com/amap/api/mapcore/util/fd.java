package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.amap.api.maps.offlinemap.DownLoadListView;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener;
import com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.amap.api.offlineservice.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: OfflineMapPage */
public class fd extends a implements TextWatcher, OnTouchListener, OnScrollListener, OnItemClickListener, OfflineLoadedListener, OfflineMapDownloadListener {
    private ImageView b;
    private RelativeLayout c;
    private DownLoadListView d;
    private ListView e;
    private ExpandableListView f;
    private ImageView g;
    private ImageView h;
    /* access modifiers changed from: private */
    public AutoCompleteTextView i;
    private RelativeLayout j;
    private RelativeLayout k;
    /* access modifiers changed from: private */
    public ImageView l;
    private RelativeLayout m;
    private List<OfflineMapProvince> n = new ArrayList();
    private OfflineMapManager o = null;
    /* access modifiers changed from: private */
    public ex p;
    /* access modifiers changed from: private */
    public ew q;
    private ey r;
    private boolean s = true;
    private boolean t = true;
    private int u = -1;
    private long v = 0;
    private ez w;
    /* access modifiers changed from: private */
    public boolean x = true;
    private Handler y = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                switch (message.what) {
                    case 0:
                        if (fd.this.x) {
                            fd.this.q.a();
                            return;
                        }
                        return;
                    case 1:
                        fd.this.p.notifyDataSetChanged();
                        return;
                    default:
                        return;
                }
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
            ThrowableExtension.printStackTrace(e);
        }
    };

    public void a() {
        View a = ff.a(this.a, R.mipmap.icon, null);
        this.d = (DownLoadListView) a.findViewById(2131165187);
        this.d.setOnTouchListener(this);
        this.j = (RelativeLayout) a.findViewById(R.xml.provider_paths);
        this.g = (ImageView) a.findViewById(2131165186);
        this.j.setOnClickListener(this.a);
        this.k = (RelativeLayout) a.findViewById(2131165189);
        this.h = (ImageView) a.findViewById(2131165190);
        this.k.setOnClickListener(this.a);
        this.m = (RelativeLayout) a.findViewById(2131165188);
        this.b = (ImageView) this.c.findViewById(2131165205);
        this.b.setOnClickListener(this.a);
        this.l = (ImageView) this.c.findViewById(2131165208);
        this.l.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                fd.this.i.setText("");
                fd.this.l.setVisibility(8);
                fd.this.a(false);
            }
        });
        this.c.findViewById(2131165209).setOnTouchListener(this);
        this.i = (AutoCompleteTextView) this.c.findViewById(2131165207);
        this.i.addTextChangedListener(this);
        this.e = (ListView) this.c.findViewById(2131165211);
        this.f = (ExpandableListView) this.c.findViewById(2131165210);
        this.f.addHeaderView(a);
        this.f.setOnTouchListener(this);
        this.f.setOnScrollListener(this);
        this.o = new OfflineMapManager(this.a, this);
        this.o.setOnOfflineLoadedListener(this);
        if (this.s) {
            this.h.setBackgroundResource(R.drawable.abc_ab_share_pack_mtrl_alpha);
            this.f.setVisibility(0);
        } else {
            this.h.setBackgroundResource(R.drawable.abc_btn_check_to_on_mtrl_000);
            this.f.setVisibility(8);
        }
        if (this.t) {
            this.g.setBackgroundResource(R.drawable.abc_ab_share_pack_mtrl_alpha);
            this.d.setVisibility(0);
            return;
        }
        this.g.setBackgroundResource(R.drawable.abc_btn_check_to_on_mtrl_000);
        this.d.setVisibility(8);
    }

    public void a(View view) {
        try {
            switch (view.getId()) {
                case R.xml.provider_paths /*2131165184*/:
                    if (this.t) {
                        this.d.setVisibility(8);
                        this.g.setBackgroundResource(R.drawable.abc_btn_check_to_on_mtrl_000);
                        this.t = false;
                        return;
                    }
                    this.d.setVisibility(0);
                    this.g.setBackgroundResource(R.drawable.abc_ab_share_pack_mtrl_alpha);
                    this.t = true;
                    return;
                case 2131165189:
                    if (this.s) {
                        this.p.b();
                        this.h.setBackgroundResource(R.drawable.abc_btn_check_to_on_mtrl_000);
                        this.s = false;
                        return;
                    }
                    this.p.a();
                    this.h.setBackgroundResource(R.drawable.abc_ab_share_pack_mtrl_alpha);
                    this.s = true;
                    return;
                case 2131165205:
                    this.a.closeScr();
                    return;
                default:
                    return;
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        ThrowableExtension.printStackTrace(e2);
    }

    public RelativeLayout c() {
        if (this.c == null) {
            this.c = (RelativeLayout) ff.a(this.a, 2130903044, null);
        }
        return this.c;
    }

    public void d() {
        this.o.destroy();
    }

    private void j() {
        k();
        this.p = new ex(this.n, this.o, this.a);
        this.f.setAdapter(this.p);
        this.f.setOnGroupCollapseListener(this.p);
        this.f.setOnGroupExpandListener(this.p);
        this.f.setGroupIndicator(null);
        this.r = new ey(this.n, this.o, this.a);
        this.e.setAdapter(this.r);
    }

    public void i() {
        this.q = new ew(this.a, this.o);
        this.d.setAdapter(this.q);
        this.d.setOnItemClickListener(this);
    }

    private void k() {
        ArrayList offlineMapProvinceList = this.o.getOfflineMapProvinceList();
        this.n.add(null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < offlineMapProvinceList.size(); i2++) {
            OfflineMapProvince offlineMapProvince = (OfflineMapProvince) offlineMapProvinceList.get(i2);
            if (offlineMapProvince.getCityList().size() != 1) {
                this.n.add(i2 + 1, offlineMapProvince);
            } else {
                String provinceName = offlineMapProvince.getProvinceName();
                if (provinceName.contains("香港")) {
                    arrayList2.addAll(offlineMapProvince.getCityList());
                } else if (provinceName.contains("澳门")) {
                    arrayList2.addAll(offlineMapProvince.getCityList());
                } else if (provinceName.contains("全国概要图")) {
                    arrayList3.addAll(0, offlineMapProvince.getCityList());
                } else {
                    arrayList3.addAll(offlineMapProvince.getCityList());
                }
            }
        }
        OfflineMapProvince offlineMapProvince2 = new OfflineMapProvince();
        offlineMapProvince2.setProvinceName("基本功能包+直辖市");
        offlineMapProvince2.setCityList(arrayList3);
        this.n.set(0, offlineMapProvince2);
        OfflineMapProvince offlineMapProvince3 = new OfflineMapProvince();
        offlineMapProvince3.setProvinceName("直辖市");
        offlineMapProvince3.setCityList(arrayList);
        OfflineMapProvince offlineMapProvince4 = new OfflineMapProvince();
        offlineMapProvince4.setProvinceName("港澳");
        offlineMapProvince4.setCityList(arrayList2);
        this.n.add(offlineMapProvince4);
    }

    public void onDownload(int i2, int i3, String str) {
        switch (i2) {
            case 101:
                Toast.makeText(this.a, "网络异常", 0).show();
                this.o.pause();
                break;
        }
        if (this.u != i2) {
            this.y.sendEmptyMessage(1);
            this.y.sendEmptyMessage(0);
            this.u = i2;
        } else if (System.currentTimeMillis() - this.v > 1200) {
            this.y.sendEmptyMessage(0);
            this.v = System.currentTimeMillis();
        }
    }

    public void onCheckUpdate(boolean z, String str) {
    }

    public void onRemove(boolean z, String str, String str2) {
        this.y.sendEmptyMessage(0);
        this.y.sendEmptyMessage(1);
    }

    public void onVerifyComplete() {
        j();
        i();
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        l();
        return false;
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (TextUtils.isEmpty(charSequence)) {
            a(false);
            this.l.setVisibility(8);
            return;
        }
        this.l.setVisibility(0);
        ArrayList arrayList = new ArrayList();
        if (this.n != null && this.n.size() > 0) {
            ArrayList<OfflineMapCity> arrayList2 = new ArrayList<>();
            for (OfflineMapProvince cityList : this.n) {
                arrayList2.addAll(cityList.getCityList());
            }
            for (OfflineMapCity offlineMapCity : arrayList2) {
                String city = offlineMapCity.getCity();
                String pinyin = offlineMapCity.getPinyin();
                if (city.startsWith(String.valueOf(charSequence)) || pinyin.startsWith(String.valueOf(charSequence))) {
                    arrayList.add(offlineMapCity);
                }
            }
        }
        if (arrayList.size() > 0) {
            a(true);
            this.r.a((List<OfflineMapCity>) arrayList);
            this.r.notifyDataSetChanged();
            return;
        }
        Toast.makeText(this.a, "未找到相关城市", 0).show();
    }

    public void afterTextChanged(Editable editable) {
    }

    public void a(boolean z) {
        int i2;
        int i3 = 0;
        if (z) {
            this.j.setVisibility(8);
            this.k.setVisibility(8);
            this.d.setVisibility(8);
            this.f.setVisibility(8);
            this.m.setVisibility(8);
            this.e.setVisibility(0);
            return;
        }
        this.j.setVisibility(0);
        this.k.setVisibility(0);
        this.m.setVisibility(0);
        DownLoadListView downLoadListView = this.d;
        if (this.t) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        downLoadListView.setVisibility(i2);
        ExpandableListView expandableListView = this.f;
        if (!this.s) {
            i3 = 8;
        }
        expandableListView.setVisibility(i3);
        this.e.setVisibility(8);
    }

    private void l() {
        if (this.i != null && this.i.isFocused()) {
            this.i.clearFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
            if (inputMethodManager.isActive()) {
                inputMethodManager.hideSoftInputFromWindow(this.i.getWindowToken(), 2);
            }
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        try {
            OfflineMapCity offlineMapCity = (OfflineMapCity) adapterView.getItemAtPosition(i2);
            if (this.w == null) {
                this.w = new ez(this.a, this.o);
            }
            this.w.a(offlineMapCity.getState(), offlineMapCity.getCity());
            this.w.show();
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 2) {
            this.x = false;
        } else {
            this.x = true;
        }
    }

    public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }
}
