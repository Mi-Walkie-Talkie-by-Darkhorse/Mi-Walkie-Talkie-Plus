package com.ifengyu.intercom.p216ui.fragment.tab.p221j0;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.fragment.tab.entity.DeviceTitleSelectPopEntity;
import com.ifengyu.library.utils.UIUtils;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.a */
/* loaded from: classes2.dex */
public class DeviceTitleSelectPopAdapter extends BaseQuickAdapter<DeviceTitleSelectPopEntity, BaseViewHolder> {
    public DeviceTitleSelectPopAdapter(int i, List list) {
        super(i, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(BaseViewHolder baseViewHolder, DeviceTitleSelectPopEntity deviceTitleSelectPopEntity) {
        baseViewHolder.getView(R.id.bg_item_layout).setBackground(UIUtils.m8611g(R.drawable.qmui_s_list_item_bg_with_border_none));
        baseViewHolder.setText(R.id.device_type, deviceTitleSelectPopEntity.getType());
        baseViewHolder.setTextColor(R.id.device_type, UIUtils.m8614d(deviceTitleSelectPopEntity.isSelected() ? R.color.text_select : R.color.black));
    }
}
