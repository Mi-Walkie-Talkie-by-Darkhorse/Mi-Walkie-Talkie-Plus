package com.ifengyu.intercom.p216ui.talk.p225b3;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.shanlitech.p245et.model.User;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.g */
/* loaded from: classes2.dex */
public class GroupDetailAllMemberAdapter extends BaseQuickAdapter<GroupDetailAdapterMultipleEntity, BaseViewHolder> {

    /* renamed from: z */
    private Fragment f15614z;

    public GroupDetailAllMemberAdapter(Fragment fragment, int i, @Nullable List<GroupDetailAdapterMultipleEntity> list) {
        super(i, list);
        this.f15614z = fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity) {
        User user = groupDetailAdapterMultipleEntity.getMember().getUser();
        ImageLoader.m8705f(this.f15614z, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), user.getAvatar());
        baseViewHolder.setText(R.id.tv_contact_display_name, user.getName());
        baseViewHolder.setGone(R.id.iv_is_device, user.getRole() != 0);
    }
}
