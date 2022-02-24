package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GaoDeOfflineDownloadedAdapter.java */
/* loaded from: classes2.dex */
public class g extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private OfflineMapManager f6296a;

    /* renamed from: b  reason: collision with root package name */
    private Context f6297b;

    /* renamed from: c  reason: collision with root package name */
    private List<OfflineMapCity> f6298c = new ArrayList();
    private h d;

    /* compiled from: GaoDeOfflineDownloadedAdapter.java */
    /* loaded from: classes2.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public h f6299a;

        public a(g gVar) {
        }
    }

    public g(Context context, OfflineMapManager offlineMapManager) {
        this.f6297b = context;
        this.f6296a = offlineMapManager;
        a();
    }

    public void a() {
        this.f6298c.clear();
        this.f6298c.addAll(this.f6296a.getDownloadOfflineMapCityList());
        this.f6298c.addAll(this.f6296a.getDownloadingCityList());
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f6298c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f6298c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            aVar = new a(this);
            h hVar = new h(this.f6297b, this.f6296a);
            this.d = hVar;
            view = hVar.a();
            aVar.f6299a = this.d;
            view.setTag(aVar);
        }
        aVar.f6299a.a((OfflineMapCity) getItem(i));
        return view;
    }
}
