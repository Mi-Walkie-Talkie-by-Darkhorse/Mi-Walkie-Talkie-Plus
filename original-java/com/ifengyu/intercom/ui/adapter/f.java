package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import java.util.List;

/* compiled from: GaoDeOfflineCityListAdapter.java */
/* loaded from: classes2.dex */
public class f extends BaseExpandableListAdapter implements ExpandableListView.OnGroupCollapseListener, ExpandableListView.OnGroupExpandListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean[] f6292a;

    /* renamed from: b  reason: collision with root package name */
    private List<OfflineMapProvince> f6293b;

    /* renamed from: c  reason: collision with root package name */
    private OfflineMapManager f6294c;
    private Context d;

    /* compiled from: GaoDeOfflineCityListAdapter.java */
    /* loaded from: classes2.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public e f6295a;

        public a(f fVar) {
        }
    }

    public f(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, Context context) {
        this.f6293b = null;
        this.f6293b = list;
        this.f6294c = offlineMapManager;
        this.d = context;
        this.f6292a = new boolean[list.size()];
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return this.f6293b.get(i).getCityList().get(i2).getCity();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            aVar = new a(this);
            e eVar = new e(this.d, this.f6294c);
            View a2 = eVar.a();
            aVar.f6295a = eVar;
            a2.setTag(aVar);
            view = a2;
        }
        aVar.f6295a.a(this.f6293b.get(i).getCityList().get(i2));
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return this.f6293b.get(i).getCityList().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.f6293b.get(i).getProvinceName();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f6293b.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = RelativeLayout.inflate(this.d, R.layout.gaode_offline_map_group_item, null);
        }
        TextView textView = (TextView) view.findViewById(R.id.group_province_name);
        ImageView imageView = (ImageView) view.findViewById(R.id.group_right_arrow);
        if (c0.a()) {
            String pinyin = this.f6293b.get(i).getPinyin();
            if (pinyin.contains("sheng")) {
                pinyin = pinyin.replace("sheng", "");
            } else if (pinyin.contains("guangxi")) {
                pinyin = "guangxi";
            } else if (pinyin.contains("ningxia")) {
                pinyin = "ningxia";
            } else if (pinyin.contains("xinjiang")) {
                pinyin = "xinjiang";
            } else if (pinyin.contains("neimenggu")) {
                pinyin = "neimenggu";
            } else if (pinyin.contains("xizang")) {
                pinyin = "xizang";
            }
            textView.setText(pinyin.substring(0, 1).toUpperCase() + pinyin.substring(1));
        } else {
            textView.setText(this.f6293b.get(i).getProvinceName());
        }
        if (this.f6292a[i]) {
            imageView.setImageDrawable(this.d.getResources().getDrawable(R.drawable.common_btn_up_arrow));
        } else {
            imageView.setImageDrawable(this.d.getResources().getDrawable(R.drawable.common_btn_down_arrow));
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    @Override // android.widget.ExpandableListView.OnGroupCollapseListener
    public void onGroupCollapse(int i) {
        this.f6292a[i] = false;
    }

    @Override // android.widget.ExpandableListView.OnGroupExpandListener
    public void onGroupExpand(int i) {
        this.f6292a[i] = true;
    }
}
