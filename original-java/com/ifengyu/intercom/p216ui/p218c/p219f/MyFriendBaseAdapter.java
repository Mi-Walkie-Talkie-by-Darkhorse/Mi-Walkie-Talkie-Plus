package com.ifengyu.intercom.p216ui.p218c.p219f;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.p216ui.p218c.p220g.ClusterItem;
import com.ifengyu.intercom.p216ui.widget.view.CirclrImageView;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.UIUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.c.f.a */
/* loaded from: classes2.dex */
public class MyFriendBaseAdapter extends BaseAdapter {

    /* renamed from: a */
    private List<ClusterItem> f15088a;

    public MyFriendBaseAdapter(List<ClusterItem> list) {
        this.f15088a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f15088a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(BaseApp.m8712b(), R.layout.friend_cluster_marker_item, null);
        }
        BeanUserLocation m10228a = this.f15088a.get(i).m10228a();
        CirclrImageView circlrImageView = (CirclrImageView) view.findViewById(R.id.friend_icon);
        ((TextView) view.findViewById(R.id.friend_name)).setText(m10228a.getName());
        if (m10228a.getImgUrl() != null && m10228a.getImgUrl().length() > 0 && !m10228a.getImgUrl().equals("null")) {
            ImageLoader.getInstance().displayImage(m10228a.getImgUrl(), circlrImageView);
        } else {
            circlrImageView.setImageDrawable(UIUtils.m8606l().getDrawable(R.drawable.my_head_default));
        }
        return view;
    }
}
