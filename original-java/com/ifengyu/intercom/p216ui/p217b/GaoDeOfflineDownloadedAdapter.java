package com.ifengyu.intercom.p216ui.p217b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.b.e */
/* loaded from: classes2.dex */
public class GaoDeOfflineDownloadedAdapter extends BaseAdapter {

    /* renamed from: a */
    private OfflineMapManager f15012a;

    /* renamed from: b */
    private Context f15013b;

    /* renamed from: c */
    private List<OfflineMapCity> f15014c = new ArrayList();

    /* renamed from: d */
    private GaoDeOfflineDownloadedChild f15015d;

    /* compiled from: GaoDeOfflineDownloadedAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.e$a */
    /* loaded from: classes2.dex */
    public final class C4440a {

        /* renamed from: a */
        public GaoDeOfflineDownloadedChild f15016a;

        public C4440a(GaoDeOfflineDownloadedAdapter gaoDeOfflineDownloadedAdapter) {
        }
    }

    public GaoDeOfflineDownloadedAdapter(Context context, OfflineMapManager offlineMapManager) {
        this.f15013b = context;
        this.f15012a = offlineMapManager;
        m10370a();
    }

    /* renamed from: a */
    public void m10370a() {
        this.f15014c.clear();
        this.f15014c.addAll(this.f15012a.getDownloadOfflineMapCityList());
        this.f15014c.addAll(this.f15012a.getDownloadingCityList());
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f15014c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f15014c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C4440a c4440a;
        if (view != null) {
            c4440a = (C4440a) view.getTag();
        } else {
            c4440a = new C4440a(this);
            GaoDeOfflineDownloadedChild gaoDeOfflineDownloadedChild = new GaoDeOfflineDownloadedChild(this.f15013b, this.f15012a);
            this.f15015d = gaoDeOfflineDownloadedChild;
            view = gaoDeOfflineDownloadedChild.m10352r();
            c4440a.f15016a = this.f15015d;
            view.setTag(c4440a);
        }
        c4440a.f15016a.m10348v((OfflineMapCity) getItem(i));
        return view;
    }
}
