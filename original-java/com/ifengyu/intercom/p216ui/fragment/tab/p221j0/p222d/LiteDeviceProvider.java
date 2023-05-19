package com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.c */
/* loaded from: classes2.dex */
public class LiteDeviceProvider extends GeneralDeviceProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 9;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.GeneralDeviceProvider
    /* renamed from: t */
    public void mo9902t(@NonNull BaseViewHolder baseViewHolder, DeviceModel deviceModel) {
        super.mo9351a(baseViewHolder, deviceModel);
        ((ImageView) baseViewHolder.getView(R.id.iv_device_color)).setImageResource(deviceModel.getDeviceColor() == 1 ? R.drawable.device_img_lite_black : R.drawable.device_img_lite_white);
        baseViewHolder.setText(R.id.device_type, UIUtils.m8603o(R.string.device_lite_name));
    }
}
