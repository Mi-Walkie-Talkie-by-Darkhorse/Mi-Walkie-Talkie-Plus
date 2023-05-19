package com.ifengyu.intercom.device.mi3gw.p162a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseDraggableModule;
import com.chad.library.adapter.base.module.DraggableModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.d */
/* loaded from: classes2.dex */
public class DeviceGroupManagerAdapter extends BaseQuickAdapter<ItemSelectAdapterEntity<TempGroup>, BaseViewHolder> implements DraggableModule {
    public DeviceGroupManagerAdapter(int i, @Nullable List<ItemSelectAdapterEntity<TempGroup>> list) {
        super(i, list);
    }

    @Override // com.chad.library.adapter.base.module.DraggableModule
    @NonNull
    /* renamed from: d */
    public BaseDraggableModule mo13821d(@NonNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        return new BaseDraggableModule(baseQuickAdapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ItemSelectAdapterEntity<TempGroup> itemSelectAdapterEntity) {
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8527d(itemSelectAdapterEntity.getData()));
        if (itemSelectAdapterEntity.isEnable()) {
            baseViewHolder.getView(R.id.iv_check).setEnabled(true);
            baseViewHolder.getView(R.id.iv_check).setSelected(itemSelectAdapterEntity.isCheck());
            return;
        }
        baseViewHolder.getView(R.id.iv_check).setEnabled(false);
    }
}
