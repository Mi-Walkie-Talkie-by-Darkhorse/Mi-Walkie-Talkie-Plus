package com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p216ui.fragment.tab.DeviceFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUILinearLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.b */
/* loaded from: classes2.dex */
public abstract class GeneralDeviceProvider extends BaseItemProvider<DeviceModel> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GeneralDeviceProvider.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.b$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4585a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceModel f15312a;

        View$OnClickListenerC4585a(GeneralDeviceProvider generalDeviceProvider, DeviceModel deviceModel) {
            this.f15312a = deviceModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceFragment.f15264R.m9964s3(this.f15312a);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_device_list_general;
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
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.device_ble_status);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.device_ble_status_icon);
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.iv_right_point);
        textView.setText(deviceModel.getName());
        boolean m12372o = BleCoreClient.m12373n().m12372o(deviceModel.getAddress());
        int i = R.drawable.device_icon_delete;
        if (m12372o) {
            textView.setTextColor(UIUtils.m8614d(R.color.black));
            textView2.setTextColor(UIUtils.m8614d(R.color.black40));
            textView3.setTextColor(UIUtils.m8614d(R.color.black80));
            textView3.setText(UIUtils.m8603o(R.string.device_a108_had_connected));
            imageView.setImageResource(R.drawable.device_icon_online);
            imageView2.setVisibility(0);
            if (!DeviceFragment.f15264R.m9963t3()) {
                i = R.drawable.dot_device_connect;
            }
            imageView2.setImageResource(i);
        } else {
            textView.setTextColor(UIUtils.m8614d(R.color.black40));
            textView2.setTextColor(UIUtils.m8614d(R.color.black30));
            textView3.setTextColor(UIUtils.m8614d(R.color.black30));
            textView3.setText(UIUtils.m8603o(R.string.device_a108_had_disconnect));
            imageView.setImageResource(R.drawable.device_icon_offline);
            imageView2.setVisibility(DeviceFragment.f15264R.m9963t3() ? 0 : 4);
            imageView2.setImageResource(R.drawable.device_icon_delete);
        }
        imageView2.setOnClickListener(new View$OnClickListenerC4585a(this, deviceModel));
    }
}
