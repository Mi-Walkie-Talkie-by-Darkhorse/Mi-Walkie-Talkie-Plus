package com.ifengyu.intercom.p216ui.talk.p225b3;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.SystemMsgEntity;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.model.User;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.k */
/* loaded from: classes2.dex */
public class NewApplyAdapter extends BaseQuickAdapter<SystemMsgEntity, BaseViewHolder> {

    /* renamed from: z */
    private Fragment f15617z;

    public NewApplyAdapter(Fragment fragment, int i, @Nullable List<SystemMsgEntity> list) {
        super(i, list);
        this.f15617z = fragment;
        m17039g(R.id.btn_accept);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, SystemMsgEntity systemMsgEntity) {
        User user = systemMsgEntity.getUser();
        if (user != null) {
            ImageLoader.m8705f(this.f15617z, (ImageView) baseViewHolder.getView(R.id.iv_avatar), user.getAvatar());
            baseViewHolder.setText(R.id.tv_name, user.getName());
            baseViewHolder.setGone(R.id.iv_is_device, user.getRole() != 0);
        } else {
            ImageLoader.m8705f(this.f15617z, (ImageView) baseViewHolder.getView(R.id.iv_avatar), null);
            baseViewHolder.setText(R.id.tv_name, String.valueOf(systemMsgEntity.getInviterId()));
            baseViewHolder.setVisible(R.id.iv_is_device, false);
        }
        if (systemMsgEntity.getMsgType() == 1) {
            baseViewHolder.setText(R.id.tv_verify_msg, UIUtils.m8603o(R.string.someone_apply_to_your_friend));
        } else if (systemMsgEntity.getMsgType() == 2 && systemMsgEntity.getGroup() != null) {
            baseViewHolder.setText(R.id.tv_verify_msg, UIUtils.m8602p(R.string.public_ch_group_apply_join_to_s, SlTalkClient.m8526e(systemMsgEntity.getGroup())));
        }
        if (systemMsgEntity.getStatus() == 0) {
            baseViewHolder.setGone(R.id.processed_state, true);
            baseViewHolder.setGone(R.id.btn_accept, false);
            ((QMUIRoundButton) baseViewHolder.getView(R.id.btn_accept)).setChangeAlphaWhenPress(true);
        } else if (systemMsgEntity.getStatus() == 1) {
            baseViewHolder.setGone(R.id.processed_state, false);
            baseViewHolder.setGone(R.id.btn_accept, true);
            baseViewHolder.setText(R.id.processed_state, R.string.had_accept_friend_apply);
        } else if (systemMsgEntity.getStatus() == 2) {
            baseViewHolder.setGone(R.id.processed_state, false);
            baseViewHolder.setGone(R.id.btn_accept, true);
            baseViewHolder.setText(R.id.processed_state, R.string.my_system_msg_had_refused);
        } else if (systemMsgEntity.getStatus() == 3) {
            baseViewHolder.setGone(R.id.processed_state, false);
            baseViewHolder.setGone(R.id.btn_accept, true);
            baseViewHolder.setText(R.id.processed_state, R.string.my_system_msg_had_expired);
        }
    }
}
