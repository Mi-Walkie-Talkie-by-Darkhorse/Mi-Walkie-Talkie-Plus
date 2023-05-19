package com.ifengyu.intercom.p216ui.fragment.tab.p221j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.DolphinDeviceProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.LiteDeviceProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.Mi3DeviceProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.NetDeviceProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.SealDeviceProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.SharkDeviceProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.b */
/* loaded from: classes2.dex */
public class DevicesAdapter extends BaseProviderMultiAdapter<DeviceModel> {

    /* renamed from: A */
    public boolean f15311A;

    public DevicesAdapter(@Nullable List<DeviceModel> list) {
        super(list);
        m17082r0(new NetDeviceProvider());
        m17082r0(new Mi3DeviceProvider());
        m17082r0(new LiteDeviceProvider());
        m17082r0(new SharkDeviceProvider());
        m17082r0(new SealDeviceProvider());
        m17082r0(new DolphinDeviceProvider());
    }

    /* renamed from: G0 */
    public boolean m9908G0() {
        return this.f15311A;
    }

    /* renamed from: H0 */
    public boolean m9907H0() {
        this.f15311A = !this.f15311A;
        notifyDataSetChanged();
        return this.f15311A;
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends DeviceModel> list, int i) {
        return list.get(i).getDeviceType();
    }
}
