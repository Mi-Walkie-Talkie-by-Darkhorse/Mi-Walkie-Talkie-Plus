package com.ifengyu.intercom.p216ui.p217b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.b.a */
/* loaded from: classes2.dex */
public class BleDeviceAdapter extends BaseAdapter {

    /* renamed from: a */
    protected LayoutInflater f14965a;

    /* renamed from: b */
    protected Context f14966b;

    /* renamed from: c */
    protected List<BluetoothDeviceBean> f14967c;

    /* renamed from: d */
    protected int f14968d = -1;

    /* renamed from: e */
    private Animation f14969e;

    /* compiled from: BleDeviceAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.a$a */
    /* loaded from: classes2.dex */
    static class C4430a {

        /* renamed from: a */
        TextView f14970a;

        /* renamed from: b */
        View f14971b;

        /* renamed from: c */
        ImageView f14972c;

        /* renamed from: d */
        ImageView f14973d;

        C4430a() {
        }
    }

    public BleDeviceAdapter(Context context, List<BluetoothDeviceBean> list) {
        this.f14965a = LayoutInflater.from(context);
        this.f14966b = context;
        this.f14967c = list;
        this.f14969e = AnimationUtils.loadAnimation(context, R.anim.connect_ble_icon_alpha);
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public BluetoothDeviceBean getItem(int i) {
        List<BluetoothDeviceBean> list = this.f14967c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        this.f14967c.get(i);
        return null;
    }

    /* renamed from: b */
    public void m10400b(int i) {
        this.f14968d = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<BluetoothDeviceBean> list = this.f14967c;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f14967c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C4430a c4430a;
        if (view == null) {
            view = this.f14965a.inflate(R.layout.connect_device_item, viewGroup, false);
            c4430a = new C4430a();
            c4430a.f14970a = (TextView) view.findViewById(R.id.tv_device_name);
            c4430a.f14971b = view.findViewById(R.id.connect_device_item_topSplit);
            c4430a.f14972c = (ImageView) view.findViewById(R.id.iv_connect_icon_arrow);
            c4430a.f14973d = (ImageView) view.findViewById(R.id.iv_connect_icon_ble);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.device_item);
            view.setTag(c4430a);
        } else {
            c4430a = (C4430a) view.getTag();
        }
        List<BluetoothDeviceBean> list = this.f14967c;
        if (list != null && list.size() > i) {
            c4430a.f14970a.setText(this.f14967c.get(i).getName());
            if (i == 0) {
                c4430a.f14971b.setVisibility(0);
            } else {
                c4430a.f14971b.setVisibility(8);
            }
            if (this.f14968d == i) {
                c4430a.f14970a.setAlpha(0.4f);
                c4430a.f14972c.setVisibility(4);
                c4430a.f14973d.setVisibility(0);
                c4430a.f14973d.setAnimation(this.f14969e);
            } else {
                c4430a.f14970a.setAlpha(1.0f);
                c4430a.f14972c.setVisibility(0);
                c4430a.f14973d.clearAnimation();
                c4430a.f14973d.setVisibility(8);
            }
        }
        return view;
    }
}
