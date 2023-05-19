package com.ifengyu.intercom.p216ui.talk.p225b3;

import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Member;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.m */
/* loaded from: classes2.dex */
public class TalkTopOnlineAdapter extends BaseQuickAdapter<Member, BaseViewHolder> {

    /* renamed from: z */
    private final Fragment f15618z;

    public TalkTopOnlineAdapter(Fragment fragment, int i, List list) {
        super(i, list);
        this.f15618z = fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(BaseViewHolder baseViewHolder, Member member) {
        ImageLoader.m8705f(this.f15618z, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), member.getUser().getAvatar());
        baseViewHolder.setGone(R.id.iv_is_device, member.getUser().getRole() != 0);
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8523h(member));
    }
}
