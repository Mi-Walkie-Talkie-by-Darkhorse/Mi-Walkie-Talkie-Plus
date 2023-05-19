package com.ifengyu.intercom.p216ui.p217b;

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
import com.ifengyu.intercom.p214p.MethodsUtils;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.b.d */
/* loaded from: classes2.dex */
public class GaoDeOfflineCityListAdapter extends BaseExpandableListAdapter implements ExpandableListView.OnGroupCollapseListener, ExpandableListView.OnGroupExpandListener {

    /* renamed from: a */
    private boolean[] f15007a;

    /* renamed from: b */
    private List<OfflineMapProvince> f15008b;

    /* renamed from: c */
    private OfflineMapManager f15009c;

    /* renamed from: d */
    private Context f15010d;

    /* compiled from: GaoDeOfflineCityListAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.d$a */
    /* loaded from: classes2.dex */
    public final class C4439a {

        /* renamed from: a */
        public GaoDeOfflineCityChild f15011a;

        public C4439a(GaoDeOfflineCityListAdapter gaoDeOfflineCityListAdapter) {
        }
    }

    public GaoDeOfflineCityListAdapter(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, Context context) {
        this.f15008b = null;
        this.f15008b = list;
        this.f15009c = offlineMapManager;
        this.f15010d = context;
        this.f15007a = new boolean[list.size()];
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return this.f15008b.get(i).getCityList().get(i2).getCity();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        C4439a c4439a;
        if (view != null) {
            c4439a = (C4439a) view.getTag();
        } else {
            c4439a = new C4439a(this);
            GaoDeOfflineCityChild gaoDeOfflineCityChild = new GaoDeOfflineCityChild(this.f15010d, this.f15009c);
            View m10376s = gaoDeOfflineCityChild.m10376s();
            c4439a.f15011a = gaoDeOfflineCityChild;
            m10376s.setTag(c4439a);
            view = m10376s;
        }
        c4439a.f15011a.m10372w(this.f15008b.get(i).getCityList().get(i2));
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return this.f15008b.get(i).getCityList().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.f15008b.get(i).getProvinceName();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f15008b.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = RelativeLayout.inflate(this.f15010d, R.layout.gaode_offline_map_group_item, null);
        }
        TextView textView = (TextView) view.findViewById(R.id.group_province_name);
        ImageView imageView = (ImageView) view.findViewById(R.id.group_right_arrow);
        if (MethodsUtils.m11297c()) {
            String pinyin = this.f15008b.get(i).getPinyin();
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
            textView.setText(this.f15008b.get(i).getProvinceName());
        }
        if (this.f15007a[i]) {
            imageView.setImageDrawable(this.f15010d.getResources().getDrawable(R.drawable.common_btn_up_arrow));
        } else {
            imageView.setImageDrawable(this.f15010d.getResources().getDrawable(R.drawable.common_btn_down_arrow));
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
        this.f15007a[i] = false;
    }

    @Override // android.widget.ExpandableListView.OnGroupExpandListener
    public void onGroupExpand(int i) {
        this.f15007a[i] = true;
    }
}
