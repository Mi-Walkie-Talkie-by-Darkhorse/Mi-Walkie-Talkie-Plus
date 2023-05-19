package com.ifengyu.intercom.device.mi3gw.p162a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.device.mi3gw.entity.DeviceGroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.device.mi3gw.p162a.p163f.DeviceGroupDetailMemberNormalProvider;
import com.ifengyu.intercom.device.mi3gw.p162a.p163f.DeviceGroupDetailOperateAddProvider;
import com.ifengyu.intercom.device.mi3gw.p162a.p163f.DeviceGroupDetailOperateRemoveProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.c */
/* loaded from: classes2.dex */
public class DeviceGroupDetailMemberAdapter extends BaseProviderMultiAdapter<DeviceGroupDetailAdapterMultipleEntity> {
    public DeviceGroupDetailMemberAdapter(Fragment fragment, @Nullable List<DeviceGroupDetailAdapterMultipleEntity> list) {
        super(list);
        m17082r0(new DeviceGroupDetailMemberNormalProvider(fragment));
        m17082r0(new DeviceGroupDetailOperateAddProvider());
        m17082r0(new DeviceGroupDetailOperateRemoveProvider());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends DeviceGroupDetailAdapterMultipleEntity> list, int i) {
        return list.get(i).getType();
    }
}
