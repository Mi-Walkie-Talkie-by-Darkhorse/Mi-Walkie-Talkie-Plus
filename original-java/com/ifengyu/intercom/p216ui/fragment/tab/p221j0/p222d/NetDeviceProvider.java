package com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p216ui.fragment.tab.DeviceFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUILinearLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.e */
/* loaded from: classes2.dex */
public class NetDeviceProvider extends BaseItemProvider<DeviceModel> {

    /* renamed from: d */
    private static final int[] f15313d = {R.drawable.device_icon_power_10, R.drawable.device_icon_power_20, R.drawable.device_icon_power_30, R.drawable.device_icon_power_40, R.drawable.device_icon_power_50, R.drawable.device_icon_power_60, R.drawable.device_icon_power_70, R.drawable.device_icon_power_80, R.drawable.device_icon_power_90, R.drawable.device_icon_power_100};

    /* renamed from: e */
    private static final int[] f15314e = {R.drawable.device_icon_power_off_10, R.drawable.device_icon_power_off_20, R.drawable.device_icon_power_off_30, R.drawable.device_icon_power_off_40, R.drawable.device_icon_power_off_50, R.drawable.device_icon_power_off_60, R.drawable.device_icon_power_off_70, R.drawable.device_icon_power_off_80, R.drawable.device_icon_power_off_90, R.drawable.device_icon_power_off_100};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetDeviceProvider.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.e$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4586a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceModel f15315a;

        View$OnClickListenerC4586a(NetDeviceProvider netDeviceProvider, DeviceModel deviceModel) {
            this.f15315a = deviceModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceFragment.f15264R.m9964s3(this.f15315a);
        }
    }

    /* renamed from: u */
    private int m9905u(int i) {
        if (i <= 0) {
            i = 1;
        } else if (i > 100) {
            i = 100;
        }
        int ceil = ((int) Math.ceil(i / 10.0d)) - 1;
        if (ceil < 0) {
            return 0;
        }
        if (ceil > 9) {
            return 9;
        }
        return ceil;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 13;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_device_list_public_net;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, DeviceModel deviceModel) {
        QMUILinearLayout qMUILinearLayout = (QMUILinearLayout) baseViewHolder.getView(R.id.container_layout);
        qMUILinearLayout.setEnabled(!DeviceFragment.f15264R.m9963t3());
        qMUILinearLayout.setClickable(!DeviceFragment.f15264R.m9963t3());
        qMUILinearLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        TextView textView = (TextView) baseViewHolder.getView(R.id.device_name);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.device_type);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.device_status_icon);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.device_status);
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.device_power_icon);
        TextView textView4 = (TextView) baseViewHolder.getView(R.id.device_power);
        ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.iv_right_point);
        textView.setText(deviceModel.getName());
        textView2.setText(UIUtils.m8603o(R.string.device_xiaomi3_4g_name));
        ((ImageView) baseViewHolder.getView(R.id.iv_device_color)).setImageResource(R.drawable.device_img_gw);
        if (deviceModel.getNetDeviceModel() != null) {
            NetDeviceModel netDeviceModel = deviceModel.getNetDeviceModel();
            int battery = netDeviceModel.getBattery();
            if (battery > 60) {
                textView4.setText(UIUtils.m8603o(R.string.device_power_high));
            } else if (battery > 20) {
                textView4.setText(UIUtils.m8603o(R.string.device_power_middle));
            } else {
                textView4.setText(UIUtils.m8603o(R.string.device_power_low));
            }
            int m9905u = m9905u(battery);
            int online = netDeviceModel.getOnline();
            int i = R.drawable.device_icon_delete;
            if (online == 1) {
                textView.setTextColor(UIUtils.m8614d(R.color.black));
                textView2.setTextColor(UIUtils.m8614d(R.color.black40));
                textView3.setTextColor(UIUtils.m8614d(R.color.black80));
                textView3.setText(UIUtils.m8603o(R.string.device_status_online));
                imageView.setImageResource(R.drawable.device_icon_online);
                textView4.setTextColor(UIUtils.m8614d(R.color.black80));
                imageView2.setImageResource(f15313d[m9905u]);
                imageView3.setVisibility(0);
                if (!DeviceFragment.f15264R.m9963t3()) {
                    i = R.drawable.dot_device_connect;
                }
                imageView3.setImageResource(i);
            } else {
                textView.setTextColor(UIUtils.m8614d(R.color.black40));
                textView2.setTextColor(UIUtils.m8614d(R.color.black30));
                textView3.setTextColor(UIUtils.m8614d(R.color.black30));
                textView3.setText(UIUtils.m8603o(R.string.device_status_offline));
                imageView.setImageResource(R.drawable.device_icon_offline);
                textView4.setTextColor(UIUtils.m8614d(R.color.black30));
                imageView2.setImageResource(f15314e[m9905u]);
                imageView3.setVisibility(DeviceFragment.f15264R.m9963t3() ? 0 : 4);
                imageView3.setImageResource(R.drawable.device_icon_delete);
            }
        }
        imageView3.setOnClickListener(new View$OnClickListenerC4586a(this, deviceModel));
    }
}
