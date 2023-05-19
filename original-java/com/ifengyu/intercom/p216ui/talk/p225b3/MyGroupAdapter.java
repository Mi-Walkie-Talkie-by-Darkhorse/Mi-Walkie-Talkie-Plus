package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Group;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.j */
/* loaded from: classes2.dex */
public class MyGroupAdapter extends BaseQuickAdapter<Group, BaseViewHolder> {

    /* renamed from: z */
    private NineGridImageViewAdapter<Fragment> f15616z;

    public MyGroupAdapter(Fragment fragment, int i, @Nullable List<Group> list) {
        super(i, list);
        this.f15616z = new NineGridImageViewAdapter<>(fragment);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, Group group) {
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8526e(group));
        baseViewHolder.setText(R.id.tv_count, UIUtils.m8602p(R.string.s_member_count, Integer.valueOf(group.getAllMemberCount())));
        NineGridImageView nineGridImageView = (NineGridImageView) baseViewHolder.getView(R.id.ngiv_group_avatar);
        nineGridImageView.setAdapter(this.f15616z);
        nineGridImageView.setImagesData(SlTalkClient.m8528c(group));
    }
}
