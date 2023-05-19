package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.ItemAdapterEntity;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.b */
/* loaded from: classes2.dex */
public class ContactSectionProvider extends BaseItemProvider<ItemAdapterEntity<Object>> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_contact_list_section;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, ItemAdapterEntity<Object> itemAdapterEntity) {
        if (itemAdapterEntity.getData() instanceof String) {
            baseViewHolder.setText(R.id.tv_section_index, (String) itemAdapterEntity.getData());
        }
    }
}
