package com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.models.RecentTalkModel;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.g */
/* loaded from: classes2.dex */
public class RecentNormalTalkProvider extends BaseItemProvider<RecentTalkModel> {

    /* renamed from: d */
    private NineGridImageViewAdapter<Fragment> f15317d;

    public RecentNormalTalkProvider(Fragment fragment) {
        this.f15317d = new NineGridImageViewAdapter<>(fragment);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_recent_normal_talk_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, RecentTalkModel recentTalkModel) {
        baseViewHolder.setText(R.id.tv_name, recentTalkModel.getGroupName());
        if (recentTalkModel.getLastMsgModel() != null) {
            baseViewHolder.setText(R.id.tv_last_msg, recentTalkModel.getLastMsgModel().getToWord());
        } else {
            baseViewHolder.setText(R.id.tv_last_msg, (CharSequence) null);
        }
        baseViewHolder.setText(R.id.tv_last_time, C4148i0.m11162f(recentTalkModel.getUpdateTime(), false));
        NineGridImageView nineGridImageView = (NineGridImageView) baseViewHolder.getView(R.id.ngiv_group_avatar);
        nineGridImageView.setAdapter(this.f15317d);
        if (recentTalkModel.getGroupAvatar() != null) {
            nineGridImageView.setImagesData(recentTalkModel.getGroupAvatar().split(RecentTalkModel.GROUP_AVATAR_SPLIT));
        } else {
            nineGridImageView.setImagesData(ImageLoader.f16372a);
        }
    }
}
