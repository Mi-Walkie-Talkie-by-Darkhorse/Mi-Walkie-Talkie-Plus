package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import com.ifengyu.intercom.ui.baseui.b;
import java.util.List;

/* compiled from: BleDeviceAdapter */
public class a extends b<BluetoothDeviceBean> {
    private Animation e = AnimationUtils.loadAnimation(this.b, R.anim.connect_ble_icon_alpha);

    /* renamed from: com.ifengyu.intercom.ui.adapter.a$a reason: collision with other inner class name */
    /* compiled from: BleDeviceAdapter */
    static class C0030a {
        TextView a;
        View b;
        ImageView c;
        ImageView d;
        LinearLayout e;

        C0030a() {
        }
    }

    public a(Context context, List<BluetoothDeviceBean> list) {
        super(context, list);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        C0030a aVar;
        if (view == null) {
            view = this.a.inflate(R.layout.connect_device_item, viewGroup, false);
            aVar = new C0030a();
            aVar.a = (TextView) view.findViewById(R.id.tv_device_name);
            aVar.b = view.findViewById(R.id.connect_device_item_topSplit);
            aVar.c = (ImageView) view.findViewById(R.id.iv_connect_icon_arrow);
            aVar.d = (ImageView) view.findViewById(R.id.iv_connect_icon_ble);
            aVar.e = (LinearLayout) view.findViewById(R.id.device_item);
            view.setTag(aVar);
        } else {
            aVar = (C0030a) view.getTag();
        }
        if (this.c != null && this.c.size() > i) {
            aVar.a.setText(((BluetoothDeviceBean) this.c.get(i)).getName());
            if (i == 0) {
                aVar.b.setVisibility(0);
            } else {
                aVar.b.setVisibility(8);
            }
            if (this.d == i) {
                aVar.a.setAlpha(0.4f);
                aVar.c.setVisibility(4);
                aVar.d.setVisibility(0);
                aVar.d.setAnimation(this.e);
            } else {
                aVar.a.setAlpha(1.0f);
                aVar.c.setVisibility(0);
                aVar.d.clearAnimation();
                aVar.d.setVisibility(8);
            }
        }
        return view;
    }
}
