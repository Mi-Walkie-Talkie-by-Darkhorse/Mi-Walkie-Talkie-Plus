package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GaoDeOfflineDownloadedAdapter */
public class g extends BaseAdapter {
    private OfflineMapManager a;
    private Context b;
    private List<OfflineMapCity> c = new ArrayList();
    private h d;

    /* compiled from: GaoDeOfflineDownloadedAdapter */
    public final class a {
        public h a;

        public a() {
        }
    }

    public g(Context context, OfflineMapManager offlineMapManager) {
        this.b = context;
        this.a = offlineMapManager;
        a();
    }

    public void a() {
        this.c.clear();
        this.c.addAll(this.a.getDownloadOfflineMapCityList());
        this.c.addAll(this.a.getDownloadingCityList());
        notifyDataSetChanged();
    }

    public int getCount() {
        return this.c.size();
    }

    public Object getItem(int i) {
        return this.c.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            a aVar2 = new a();
            this.d = new h(this.b, this.a);
            view = this.d.a();
            aVar2.a = this.d;
            view.setTag(aVar2);
            aVar = aVar2;
        }
        aVar.a.a((OfflineMapCity) getItem(i));
        return view;
    }
}
