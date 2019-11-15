package com.amap.api.mapcore.util;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapActivity;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SearchListAdapter */
public class ey extends BaseAdapter {
    private List<OfflineMapCity> a = new ArrayList();
    /* access modifiers changed from: private */
    public OfflineMapManager b;
    private Activity c;

    /* compiled from: SearchListAdapter */
    public final class a {
        public TextView a;
        public TextView b;
        public TextView c;
        public ImageView d;

        public a() {
        }
    }

    public ey(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, OfflineMapActivity offlineMapActivity) {
        if (list == null || list.size() > 0) {
        }
        this.b = offlineMapManager;
        this.c = offlineMapActivity;
    }

    public void a(List<OfflineMapCity> list) {
        this.a = list;
    }

    public int getCount() {
        return this.a.size();
    }

    public Object getItem(int i) {
        return this.a.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        Exception exc;
        View view2;
        final a aVar;
        View view3;
        try {
            final OfflineMapCity offlineMapCity = (OfflineMapCity) this.a.get(i);
            if (view == null) {
                aVar = new a();
                View a2 = ff.a(this.c, R.mipmap.qrcode_default_scan_line, null);
                aVar.a = (TextView) a2.findViewById(2131165195);
                aVar.b = (TextView) a2.findViewById(2131165199);
                aVar.c = (TextView) a2.findViewById(2131165197);
                aVar.d = (ImageView) a2.findViewById(2131165198);
                aVar.d.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        aVar.d.setVisibility(8);
                        aVar.c.setVisibility(0);
                        aVar.c.setText("下载中");
                        try {
                            ey.this.b.downloadByCityName(offlineMapCity.getCity());
                        } catch (AMapException e) {
                            ThrowableExtension.printStackTrace(e);
                        }
                    }
                });
                a2.setTag(aVar);
                view3 = a2;
            } else {
                aVar = (a) view.getTag();
                view3 = view;
            }
            try {
                aVar.c.setVisibility(0);
                aVar.a.setText(offlineMapCity.getCity());
                aVar.b.setText(String.valueOf(((double) ((int) (((((double) offlineMapCity.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + " M");
                switch (offlineMapCity.getState()) {
                    case -1:
                    case 101:
                    case 102:
                    case 103:
                        aVar.d.setVisibility(8);
                        aVar.c.setText("下载失败");
                        break;
                    case 0:
                    case 1:
                        aVar.d.setVisibility(8);
                        aVar.c.setText("下载中");
                        break;
                    case 2:
                        aVar.d.setVisibility(8);
                        aVar.c.setText("等待下载");
                        break;
                    case 3:
                        aVar.d.setVisibility(8);
                        aVar.c.setText("暂停中");
                        break;
                    case 4:
                        aVar.d.setVisibility(8);
                        aVar.c.setText("已下载");
                        break;
                    case 6:
                        aVar.d.setVisibility(0);
                        aVar.c.setVisibility(8);
                        break;
                }
                return view3;
            } catch (Exception e) {
                Exception exc2 = e;
                view2 = view3;
                exc = exc2;
            }
        } catch (Exception e2) {
            exc = e2;
            view2 = view;
            ThrowableExtension.printStackTrace(exc);
            return view2;
        }
    }
}
