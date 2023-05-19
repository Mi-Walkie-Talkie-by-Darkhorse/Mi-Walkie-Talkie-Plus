package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.SlTalkClient;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.e */
/* loaded from: classes2.dex */
public class GroupDetailMemberNormalProvider extends BaseItemProvider<GroupDetailAdapterMultipleEntity> {

    /* renamed from: d */
    private final Fragment f15621d;

    public GroupDetailMemberNormalProvider(Fragment fragment) {
        this.f15621d = fragment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1001;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_detail_member;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity) {
        ImageLoader.m8705f(this.f15621d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), groupDetailAdapterMultipleEntity.getMember().getUser().getAvatar());
        baseViewHolder.setText(R.id.tv_member_name, SlTalkClient.m8523h(groupDetailAdapterMultipleEntity.getMember()));
        baseViewHolder.setGone(R.id.iv_is_device, groupDetailAdapterMultipleEntity.getMember().getUser().getRole() != 0);
    }
}
