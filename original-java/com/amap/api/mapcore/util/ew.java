package com.amap.api.mapcore.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: OfflineDownloadedAdapter */
public class ew extends BaseAdapter {
    private OfflineMapManager a;
    private List<OfflineMapCity> b = new ArrayList();
    private Context c;
    private fb d;

    /* compiled from: OfflineDownloadedAdapter */
    public final class a {
        public fb a;

        public a() {
        }
    }

    public ew(Context context, OfflineMapManager offlineMapManager) {
        this.c = context;
        this.a = offlineMapManager;
        b();
    }

    public void a() {
        System.currentTimeMillis();
        b();
    }

    private void b() {
        if (this.b != null) {
            System.currentTimeMillis();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                OfflineMapCity offlineMapCity = (OfflineMapCity) it.next();
                it.remove();
            }
        }
        System.currentTimeMillis();
        this.b.addAll(this.a.getDownloadOfflineMapCityList());
        this.b.addAll(this.a.getDownloadingCityList());
        System.currentTimeMillis();
        notifyDataSetChanged();
    }

    public int getCount() {
        return this.b.size();
    }

    public Object getItem(int i) {
        return this.b.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            a aVar2 = new a();
            this.d = new fb(this.c, this.a);
            this.d.a(2);
            view = this.d.a();
            aVar2.a = this.d;
            view.setTag(aVar2);
            aVar = aVar2;
        }
        aVar.a.a((OfflineMapCity) getItem(i));
        return view;
    }
}
