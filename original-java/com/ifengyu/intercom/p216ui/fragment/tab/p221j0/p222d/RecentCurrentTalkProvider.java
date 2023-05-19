package com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.models.RecentTalkModel;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.d.f */
/* loaded from: classes2.dex */
public class RecentCurrentTalkProvider extends BaseItemProvider<RecentTalkModel> {

    /* renamed from: d */
    private NineGridImageViewAdapter<Fragment> f15316d;

    public RecentCurrentTalkProvider(Fragment fragment) {
        this.f15316d = new NineGridImageViewAdapter<>(fragment);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_recent_current_talk_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, RecentTalkModel recentTalkModel) {
        baseViewHolder.setGone(R.id.bottom_title, m16936c() == null || m16936c().m17070D().size() <= 1);
        baseViewHolder.setText(R.id.tv_name, recentTalkModel.getGroupName());
        if (recentTalkModel.getLastMsgModel() != null) {
            String toWord = recentTalkModel.getLastMsgModel().getToWord();
            if (toWord.endsWith(UIUtils.m8603o(R.string.message_type_is_speaking_suffix))) {
                baseViewHolder.setTextColor(R.id.tv_last_msg, UIUtils.m8614d(R.color.blue_1));
            } else {
                baseViewHolder.setTextColor(R.id.tv_last_msg, UIUtils.m8614d(R.color.gray_1));
            }
            baseViewHolder.setText(R.id.tv_last_msg, toWord);
        } else {
            baseViewHolder.setText(R.id.tv_last_msg, (CharSequence) null);
        }
        baseViewHolder.setText(R.id.tv_last_time, C4148i0.m11162f(recentTalkModel.getUpdateTime(), false));
        NineGridImageView nineGridImageView = (NineGridImageView) baseViewHolder.getView(R.id.ngiv_group_avatar);
        nineGridImageView.setAdapter(this.f15316d);
        if (recentTalkModel.getGroupAvatar() != null) {
            nineGridImageView.setImagesData(recentTalkModel.getGroupAvatar().split(RecentTalkModel.GROUP_AVATAR_SPLIT));
        } else {
            nineGridImageView.setImagesData(ImageLoader.f16374c);
        }
    }
}
