package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.f */
/* loaded from: classes2.dex */
public class GroupDetailOperateAddProvider extends BaseItemProvider<GroupDetailAdapterMultipleEntity> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1002;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_detail_operate;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity) {
        baseViewHolder.setImageResource(R.id.iv_operate, R.drawable.group_icon_invite);
    }
}
