package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.CreateCodeAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.message.msgBody.MemberChangeBodyItem;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.d */
/* loaded from: classes2.dex */
public class CreateCodeMemberProvider extends BaseItemProvider<CreateCodeAdapterEntity> {

    /* renamed from: d */
    private final Fragment f15620d;

    public CreateCodeMemberProvider(Fragment fragment) {
        this.f15620d = fragment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_create_group_bt_code_member;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, CreateCodeAdapterEntity createCodeAdapterEntity) {
        MemberChangeBodyItem memberInfo = createCodeAdapterEntity.getMemberInfo();
        baseViewHolder.setText(R.id.tv_member_name, memberInfo.getName());
        if (memberInfo.getUser() == null) {
            ImageLoader.m8705f(this.f15620d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), null);
            baseViewHolder.setGone(R.id.iv_is_device, true);
            return;
        }
        ImageLoader.m8705f(this.f15620d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), memberInfo.getUser().getAvatar());
        baseViewHolder.setGone(R.id.iv_is_device, memberInfo.getUser().getRole() != 0);
    }
}
