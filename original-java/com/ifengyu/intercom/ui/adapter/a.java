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
import com.ifengyu.intercom.ui.baseui.c;
import java.util.List;

/* compiled from: BleDeviceAdapter.java */
/* loaded from: classes2.dex */
public class a extends c<BluetoothDeviceBean> {
    private Animation e = AnimationUtils.loadAnimation(this.f6388b, R.anim.connect_ble_icon_alpha);

    /* compiled from: BleDeviceAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0161a {

        /* renamed from: a  reason: collision with root package name */
        TextView f6254a;

        /* renamed from: b  reason: collision with root package name */
        View f6255b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f6256c;
        ImageView d;
        LinearLayout e;

        C0161a() {
        }
    }

    public a(Context context, List<BluetoothDeviceBean> list) {
        super(context, list);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0161a aVar;
        if (view == null) {
            view = this.f6387a.inflate(R.layout.connect_device_item, viewGroup, false);
            aVar = new C0161a();
            aVar.f6254a = (TextView) view.findViewById(R.id.tv_device_name);
            aVar.f6255b = view.findViewById(R.id.connect_device_item_topSplit);
            aVar.f6256c = (ImageView) view.findViewById(R.id.iv_connect_icon_arrow);
            aVar.d = (ImageView) view.findViewById(R.id.iv_connect_icon_ble);
            aVar.e = (LinearLayout) view.findViewById(R.id.device_item);
            view.setTag(aVar);
        } else {
            aVar = (C0161a) view.getTag();
        }
        List<ITEMBEANTYPE> list = this.f6389c;
        if (list != 0 && list.size() > i) {
            aVar.f6254a.setText(((BluetoothDeviceBean) this.f6389c.get(i)).getName());
            if (i == 0) {
                aVar.f6255b.setVisibility(0);
            } else {
                aVar.f6255b.setVisibility(8);
            }
            if (this.d == i) {
                aVar.f6254a.setAlpha(0.4f);
                aVar.f6256c.setVisibility(4);
                aVar.d.setVisibility(0);
                aVar.d.setAnimation(this.e);
            } else {
                aVar.f6254a.setAlpha(1.0f);
                aVar.f6256c.setVisibility(0);
                aVar.d.clearAnimation();
                aVar.d.setVisibility(8);
            }
        }
        return view;
    }
}
