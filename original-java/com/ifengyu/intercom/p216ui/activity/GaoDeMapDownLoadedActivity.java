package com.ifengyu.intercom.p216ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.GaoDeOfflineMapManagerInstance;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.p217b.GaoDeOfflineDownloadedAdapter;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.activity.GaoDeMapDownLoadedActivity */
/* loaded from: classes2.dex */
public class GaoDeMapDownLoadedActivity extends BaseActivity1 implements OfflineMapManager.OfflineLoadedListener, GaoDeOfflineMapManagerInstance.InterfaceC4160b {

    /* renamed from: j */
    private ListView f14781j;

    /* renamed from: k */
    private LinearLayout f14782k;

    /* renamed from: l */
    private GaoDeOfflineDownloadedAdapter f14783l;

    /* renamed from: G */
    private void m10547G() {
        QMUITopBarLayout qMUITopBarLayout = (QMUITopBarLayout) m10282o(R.id.topBar);
        this.f14781j = (ListView) m10282o(R.id.offmap_download_listview);
        this.f14782k = (LinearLayout) m10282o(R.id.this_not_have_content_layout);
        qMUITopBarLayout.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GaoDeMapDownLoadedActivity.this.m10545I(view);
            }
        });
        qMUITopBarLayout.m7338p(R.string.offlinemap_download);
        ((ItemView) m10282o(R.id.itemDownloadMap)).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GaoDeMapDownLoadedActivity.this.m10543K(view);
            }
        });
        if (GaoDeOfflineMapManagerInstance.m11070d()) {
            m10548F();
        } else {
            GaoDeOfflineMapManagerInstance.m11071c().setOnOfflineLoadedListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public /* synthetic */ void m10545I(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m10543K(View view) {
        m10286E(GaoDeOfflineMapCityActivity.class);
    }

    /* renamed from: F */
    public void m10548F() {
        GaoDeOfflineDownloadedAdapter gaoDeOfflineDownloadedAdapter = new GaoDeOfflineDownloadedAdapter(this, GaoDeOfflineMapManagerInstance.m11071c());
        this.f14783l = gaoDeOfflineDownloadedAdapter;
        this.f14781j.setAdapter((ListAdapter) gaoDeOfflineDownloadedAdapter);
        if (GaoDeOfflineMapManagerInstance.m11071c().getDownloadingCityList().size() == 0 && GaoDeOfflineMapManagerInstance.m11071c().getDownloadOfflineMapCityList().size() == 0) {
            this.f14781j.setVisibility(8);
            this.f14782k.setVisibility(0);
            return;
        }
        this.f14781j.setVisibility(0);
        this.f14782k.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaode_map_down_loaded);
        m10547G();
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
        this.f14783l.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p214p.GaoDeOfflineMapManagerInstance.InterfaceC4160b
    public void onRemove(boolean z, String str, String str2) {
        this.f14783l.m10370a();
        if (GaoDeOfflineMapManagerInstance.m11071c().getDownloadingCityList().size() == 0 && GaoDeOfflineMapManagerInstance.m11071c().getDownloadOfflineMapCityList().size() == 0) {
            this.f14781j.setVisibility(8);
            this.f14782k.setVisibility(0);
            return;
        }
        this.f14781j.setVisibility(0);
        this.f14782k.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (GaoDeOfflineMapManagerInstance.m11071c().getDownloadingCityList().size() == 0 && GaoDeOfflineMapManagerInstance.m11071c().getDownloadOfflineMapCityList().size() == 0) {
            this.f14781j.setVisibility(8);
            this.f14782k.setVisibility(0);
        } else {
            this.f14781j.setVisibility(0);
            this.f14782k.setVisibility(8);
        }
        GaoDeOfflineDownloadedAdapter gaoDeOfflineDownloadedAdapter = this.f14783l;
        if (gaoDeOfflineDownloadedAdapter != null) {
            gaoDeOfflineDownloadedAdapter.m10370a();
        }
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener
    public void onVerifyComplete() {
        GaoDeOfflineMapManagerInstance.m11068f(true);
        m10548F();
    }
}
