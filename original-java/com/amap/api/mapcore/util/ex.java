package com.amap.api.mapcore.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView.OnGroupCollapseListener;
import android.widget.ExpandableListView.OnGroupExpandListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.ifengyu.intercom.R;
import java.util.List;

/* compiled from: OfflineListAdapter */
public class ex extends BaseExpandableListAdapter implements OnGroupCollapseListener, OnGroupExpandListener {
    private boolean[] a;
    private int b = -1;
    private List<OfflineMapProvince> c = null;
    private OfflineMapManager d;
    private Context e;

    /* compiled from: OfflineListAdapter */
    public final class a {
        public fb a;

        public a() {
        }
    }

    public ex(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, Context context) {
        this.c = list;
        this.d = offlineMapManager;
        this.e = context;
        this.a = new boolean[list.size()];
    }

    public int getGroupCount() {
        if (this.b == -1) {
            return this.c.size();
        }
        return this.b;
    }

    public Object getGroup(int i) {
        return ((OfflineMapProvince) this.c.get(i)).getProvinceName();
    }

    public long getGroupId(int i) {
        return (long) i;
    }

    public int getChildrenCount(int i) {
        if (a(i)) {
            return ((OfflineMapProvince) this.c.get(i)).getCityList().size();
        }
        return ((OfflineMapProvince) this.c.get(i)).getCityList().size();
    }

    public Object getChild(int i, int i2) {
        return null;
    }

    public long getChildId(int i, int i2) {
        return (long) i2;
    }

    public boolean hasStableIds() {
        return true;
    }

    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = (RelativeLayout) ff.a(this.e, 2130903043, null);
        }
        ImageView imageView = (ImageView) view.findViewById(2131165202);
        ((TextView) view.findViewById(2131165201)).setText(((OfflineMapProvince) this.c.get(i)).getProvinceName());
        if (this.a[i]) {
            imageView.setImageDrawable(ff.a().getDrawable(R.drawable.abc_btn_check_to_on_mtrl_015));
        } else {
            imageView.setImageDrawable(ff.a().getDrawable(R.drawable.abc_btn_colored_material));
        }
        return view;
    }

    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            a aVar2 = new a();
            fb fbVar = new fb(this.e, this.d);
            fbVar.a(1);
            view = fbVar.a();
            aVar2.a = fbVar;
            view.setTag(aVar2);
            aVar = aVar2;
        }
        aVar.a.a((OfflineMapCity) ((OfflineMapProvince) this.c.get(i)).getCityList().get(i2));
        return view;
    }

    private boolean a(int i) {
        return (i == 0 || i == getGroupCount() + -1) ? false : true;
    }

    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    public void a() {
        this.b = -1;
        notifyDataSetChanged();
    }

    public void b() {
        this.b = 0;
        notifyDataSetChanged();
    }

    public void onGroupCollapse(int i) {
        this.a[i] = false;
    }

    public void onGroupExpand(int i) {
        this.a[i] = true;
    }
}
