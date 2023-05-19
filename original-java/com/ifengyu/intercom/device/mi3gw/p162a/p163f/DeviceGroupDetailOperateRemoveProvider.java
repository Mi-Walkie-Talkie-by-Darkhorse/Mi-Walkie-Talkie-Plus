package com.ifengyu.intercom.device.mi3gw.p162a.p163f;

import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.entity.DeviceGroupDetailAdapterMultipleEntity;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.f.c */
/* loaded from: classes2.dex */
public class DeviceGroupDetailOperateRemoveProvider extends BaseItemProvider<DeviceGroupDetailAdapterMultipleEntity> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1003;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_detail_operate;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, DeviceGroupDetailAdapterMultipleEntity deviceGroupDetailAdapterMultipleEntity) {
        baseViewHolder.setImageResource(R.id.iv_operate, R.drawable.group_icon_delete);
    }
}
