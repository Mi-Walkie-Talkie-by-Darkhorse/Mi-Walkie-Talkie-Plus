package com.ifengyu.intercom.p216ui.talk.p225b3;

import android.graphics.drawable.AnimationDrawable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.DialogGroupAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Member;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.f */
/* loaded from: classes2.dex */
public class DialogTalkAdapter extends BaseQuickAdapter<DialogGroupAdapterEntity, BaseViewHolder> {

    /* renamed from: z */
    private final Fragment f15613z;

    public DialogTalkAdapter(Fragment fragment, int i, List list) {
        super(i, list);
        this.f15613z = fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(BaseViewHolder baseViewHolder, DialogGroupAdapterEntity dialogGroupAdapterEntity) {
        Member member = dialogGroupAdapterEntity.getMember();
        ImageLoader.m8705f(this.f15613z, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), member.getUser().getAvatar());
        baseViewHolder.setGone(R.id.iv_is_device, member.getUser().getRole() != 0);
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8523h(member));
        FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R.id.bg_not_enter_dialog_group);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_loading_animation);
        if (dialogGroupAdapterEntity.getState() == 2) {
            frameLayout.setVisibility(0);
            if (((AnimationDrawable) imageView.getDrawable()).isRunning()) {
                return;
            }
            ((AnimationDrawable) imageView.getDrawable()).start();
            return;
        }
        frameLayout.setVisibility(8);
        if (((AnimationDrawable) imageView.getDrawable()).isRunning()) {
            ((AnimationDrawable) imageView.getDrawable()).stop();
        }
    }
}
