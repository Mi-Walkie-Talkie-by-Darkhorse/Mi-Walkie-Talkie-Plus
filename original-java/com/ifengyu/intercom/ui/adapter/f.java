package com.ifengyu.intercom.ui.adapter;

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
import com.ifengyu.intercom.b.v;
import java.util.List;

/* compiled from: GaoDeOfflineCityListAdapter */
public class f extends BaseExpandableListAdapter implements OnGroupCollapseListener, OnGroupExpandListener {
    private boolean[] a;
    private List<OfflineMapProvince> b = null;
    private OfflineMapManager c;
    private Context d;

    /* compiled from: GaoDeOfflineCityListAdapter */
    public final class a {
        public e a;

        public a() {
        }
    }

    public f(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, Context context) {
        this.b = list;
        this.c = offlineMapManager;
        this.d = context;
        this.a = new boolean[list.size()];
    }

    public int getGroupCount() {
        return this.b.size();
    }

    public Object getGroup(int i) {
        return ((OfflineMapProvince) this.b.get(i)).getProvinceName();
    }

    public long getGroupId(int i) {
        return (long) i;
    }

    public int getChildrenCount(int i) {
        return ((OfflineMapProvince) this.b.get(i)).getCityList().size();
    }

    public Object getChild(int i, int i2) {
        return ((OfflineMapCity) ((OfflineMapProvince) this.b.get(i)).getCityList().get(i2)).getCity();
    }

    public long getChildId(int i, int i2) {
        return (long) i2;
    }

    public boolean hasStableIds() {
        return true;
    }

    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = RelativeLayout.inflate(this.d, R.layout.gaode_offline_map_group_item, null);
        }
        TextView textView = (TextView) view.findViewById(R.id.group_province_name);
        ImageView imageView = (ImageView) view.findViewById(R.id.group_right_arrow);
        if (v.a()) {
            String pinyin = ((OfflineMapProvince) this.b.get(i)).getPinyin();
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
            textView.setText(((OfflineMapProvince) this.b.get(i)).getProvinceName());
        }
        if (this.a[i]) {
            imageView.setImageDrawable(this.d.getResources().getDrawable(R.drawable.common_btn_up_arrow));
        } else {
            imageView.setImageDrawable(this.d.getResources().getDrawable(R.drawable.common_btn_down_arrow));
        }
        return view;
    }

    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            a aVar2 = new a();
            e eVar = new e(this.d, this.c);
            view = eVar.a();
            aVar2.a = eVar;
            view.setTag(aVar2);
            aVar = aVar2;
        }
        aVar.a.a((OfflineMapCity) ((OfflineMapProvince) this.b.get(i)).getCityList().get(i2));
        return view;
    }

    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    public void onGroupCollapse(int i) {
        this.a[i] = false;
    }

    public void onGroupExpand(int i) {
        this.a[i] = true;
    }
}
