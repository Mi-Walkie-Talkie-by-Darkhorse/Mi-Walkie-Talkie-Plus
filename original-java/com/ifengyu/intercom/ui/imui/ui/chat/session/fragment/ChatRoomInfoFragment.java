package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.GroupMember;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.ChatEvent;
import com.ifengyu.im.imservice.event.ChatEvent.Event;
import com.ifengyu.im.imservice.manager.GroupHelper;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.intercom.ui.imui.ui.chat.dialog.UserInfoDialog.Builder;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.InviteContactActivity;
import com.ifengyu.intercom.ui.imui.ui.qrcode.SelfQRCodeActivity;
import com.ifengyu.library.util.i;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.dialog.a.C0041a;
import com.ifengyu.library.widget.dialog.a.b;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.library.widget.view.QMUIAlphaButton;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.QMUIRadiusImageView;
import java.util.List;

public class ChatRoomInfoFragment extends BaseFragment implements OnClickListener, a {
    private static final int MAX_DISPLAY_MEMBER_IF_CREATOR = 18;
    private static final int MAX_DISPLAY_MEMBER_IF_NOT_CREATOR = 19;
    public static final int REQUEST_ADD_MEMBER = 16;
    public static final int REQUEST_DELETE_MEMBER = 17;
    public static final int REQUEST_TRANSFER_CREATOR = 18;
    /* access modifiers changed from: private */
    public GroupListAdapter mAdapter;
    @BindView(2131755586)
    QMUIAlphaButton mBtnDeleteQuit;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755582)
    ItemView mItemGroupName;
    @BindView(2131755583)
    RelativeLayout mItemGroupQrCode;
    @BindView(2131755584)
    ItemView mItemMyNickname;
    @BindView(2131755585)
    ItemView mItemTransferOwner;
    @BindView(2131755581)
    View mMoreView;
    @BindView(2131755388)
    RecyclerView mRvGroupList;
    /* access modifiers changed from: private */
    public int mSessionId;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755580)
    TextView mTvGroupId;
    @BindView(2131755443)
    TextView mTvTitle;

    private class GroupListAdapter extends BaseRecyclerAdapter<UserEntity> {
        GroupListAdapter(Context context, List<UserEntity> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.item_group_avatar_list;
        }

        public int getItemViewType(int i) {
            UserEntity userEntity = (UserEntity) getItem(i);
            if (userEntity != null) {
                return userEntity.getItemType();
            }
            return 0;
        }

        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, UserEntity userEntity) {
            QMUIRadiusImageView qMUIRadiusImageView = (QMUIRadiusImageView) aVar.a(R.id.riv_avatar);
            TextView b = aVar.b(R.id.tv_name);
            switch (getItemViewType(i)) {
                case 0:
                    qMUIRadiusImageView.setCornerRadius(l.a(3.0f));
                    b.setText(GroupHelper.getGroupMemberDisplayName(ChatRoomInfoFragment.this.mSessionId, userEntity.peerId));
                    c.a((View) qMUIRadiusImageView).a((Object) userEntity.avatar).a((ImageView) qMUIRadiusImageView);
                    return;
                case 1:
                    qMUIRadiusImageView.setCornerRadius(0);
                    c.a((View) qMUIRadiusImageView).a((Object) Integer.valueOf(R.drawable.chat_info_btn_add)).a((ImageView) qMUIRadiusImageView);
                    return;
                case 2:
                    qMUIRadiusImageView.setCornerRadius(0);
                    c.a((View) qMUIRadiusImageView).a((Object) Integer.valueOf(R.drawable.chat_info_btn_delete)).a((ImageView) qMUIRadiusImageView);
                    return;
                default:
                    return;
            }
        }
    }

    public static ChatRoomInfoFragment newInstance(int i) {
        Bundle bundle = new Bundle();
        ChatRoomInfoFragment chatRoomInfoFragment = new ChatRoomInfoFragment();
        bundle.putInt(Extras.EXTRA_SESSION_ID, i);
        chatRoomInfoFragment.setArguments(bundle);
        return chatRoomInfoFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_group_detail;
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        if (bundle != null) {
            this.mSessionId = bundle.getInt(Extras.EXTRA_SESSION_ID);
        }
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        l.a((ViewGroup) this.mTitleBar);
        this.mIbLeft.setOnClickListener(new ChatRoomInfoFragment$$Lambda$0(this));
        this.mRvGroupList.addItemDecoration(new com.ifengyu.library.widget.recyclerview.b.a(l.a(22.0f), l.a(16.0f), false));
        this.mRvGroupList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.mRvGroupList.setNestedScrollingEnabled(false);
        RecyclerView recyclerView = this.mRvGroupList;
        GroupListAdapter groupListAdapter = new GroupListAdapter(getContext(), null);
        this.mAdapter = groupListAdapter;
        recyclerView.setAdapter(groupListAdapter);
        this.mAdapter.setOnItemClickListener(this);
        this.mItemGroupName.setOnClickListener(this);
        this.mItemGroupQrCode.setOnClickListener(this);
        this.mItemMyNickname.setOnClickListener(this);
        this.mItemTransferOwner.setOnClickListener(this);
        this.mBtnDeleteQuit.setOnClickListener(this);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initWidget$0$ChatRoomInfoFragment(View view) {
        popBackStack();
    }

    /* access modifiers changed from: protected */
    public void initData() {
        refreshUI();
    }

    private void refreshUI() {
        List list;
        boolean z;
        int i;
        GroupEntity findGroup = IMGroupManager.instance().findGroup(this.mSessionId);
        if (findGroup != null) {
            int peerId = findGroup.getPeerId();
            int loginId = IMLoginManager.instance().getLoginId();
            int creatorId = findGroup.getCreatorId();
            this.mTvTitle.setText(String.format("群组信息（%s）", new Object[]{Integer.valueOf(findGroup.getUserCnt())}));
            this.mTvGroupId.setText(String.format("ID:%s", new Object[]{Integer.valueOf(peerId)}));
            GroupMember findUserInGroup = IMContactManager.instance().findUserInGroup(peerId, loginId);
            List groupMembers = IMGroupManager.instance().getGroupMembers(peerId);
            if (creatorId == loginId) {
                if (groupMembers.size() > 18) {
                    list = groupMembers.subList(0, 18);
                    z = true;
                }
                list = groupMembers;
                z = false;
            } else {
                if (groupMembers.size() > 19) {
                    list = groupMembers.subList(0, 19);
                    z = true;
                }
                list = groupMembers;
                z = false;
            }
            View view = this.mMoreView;
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            view.setVisibility(i);
            this.mMoreView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    ChatRoomInfoFragment.this.startFragment(SeeRoomMemberFragment.newInstance(ChatRoomInfoFragment.this.mSessionId));
                }
            });
            UserEntity userEntity = new UserEntity();
            userEntity.setItemType(1);
            list.add(userEntity);
            if (creatorId == loginId) {
                UserEntity userEntity2 = new UserEntity();
                userEntity2.setItemType(2);
                list.add(userEntity2);
                this.mItemGroupQrCode.setVisibility(0);
                this.mItemMyNickname.setVisibility(0);
                this.mItemGroupName.setVisibility(0);
                this.mItemTransferOwner.setVisibility(0);
            } else {
                this.mItemGroupQrCode.setVisibility(0);
                this.mItemMyNickname.setVisibility(0);
                this.mItemGroupName.setVisibility(8);
                this.mItemTransferOwner.setVisibility(8);
            }
            this.mItemGroupName.setValueText(findGroup.mainName);
            if (findUserInGroup == null || TextUtils.isEmpty(findUserInGroup.getGroupNick())) {
                UserEntity loginInfo = IMLoginManager.instance().getLoginInfo();
                if (loginInfo != null) {
                    this.mItemMyNickname.setValueText(loginInfo.mainName);
                }
            } else {
                this.mItemMyNickname.setValueText(findUserInGroup.getGroupNick());
            }
            this.mAdapter.setNewData(list);
        }
    }

    public void onItemClick(View view, int i) {
        switch (this.mAdapter.getItemViewType(i)) {
            case 0:
                showUserInfoDialog((UserEntity) this.mAdapter.getItem(i));
                return;
            case 1:
                InviteContactActivity.start(getContext(), this.mSessionId);
                return;
            case 2:
                openKickoutUserUI();
                return;
            default:
                return;
        }
    }

    private void showUserInfoDialog(UserEntity userEntity) {
        int loginId = IMLoginManager.instance().getLoginId();
        int peerId = userEntity.getPeerId();
        if (IMLoginManager.instance().getLoginInfo() == null) {
            com.ifengyu.library.util.c.d(this.TAG, "my user info is null");
            return;
        }
        boolean z = peerId == loginId;
        new Builder(getContext()).setTitle(userEntity.mainName).setSubTitle(String.format("ID:%s", new Object[]{Integer.valueOf(userEntity.peerId)})).setImageUrl(userEntity.avatar).setPositiveButton(z ? R.string.common_ok : R.string.btn_send_message, new ChatRoomInfoFragment$$Lambda$1(z, userEntity)).show();
    }

    static final /* synthetic */ void lambda$showUserInfoDialog$1$ChatRoomInfoFragment(boolean z, UserEntity userEntity, DialogInterface dialogInterface, int i) {
        if (!z) {
            de.greenrobot.event.c.a().e(new ChatEvent(Event.START_CHAT, userEntity));
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.item_group_name /*2131755582*/:
                showGroupNameDialog();
                return;
            case R.id.item_group_qr_code /*2131755583*/:
                openQRCodeUI();
                return;
            case R.id.item_my_nickname_in_group /*2131755584*/:
                showMyNicknameInGroupDialog();
                return;
            case R.id.item_transfer_owner /*2131755585*/:
                openSelectMemberUI();
                return;
            case R.id.btn_delete_quit /*2131755586*/:
                showLeaveGroupDialog();
                return;
            default:
                return;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 16:
                    refreshUI();
                    return;
                case 17:
                    refreshUI();
                    return;
                case 18:
                    int intExtra = intent.getIntExtra(SelectMemberFragment.EXTRA_CREATOR_ID, 0);
                    com.ifengyu.library.util.c.a(this.TAG, String.format("transfer success,new creator is %s", new Object[]{Integer.valueOf(intExtra)}));
                    l.c(R.string.toast_transfer_success);
                    refreshUI();
                    return;
                default:
                    return;
            }
        }
    }

    private void showGroupNameDialog() {
        C0041a aVar = new C0041a(getContext());
        String charSequence = this.mItemGroupName.getValueText().toString();
        ((C0041a) ((C0041a) ((C0041a) aVar.a((int) R.string.dialog_title_modify_group_name)).a(charSequence).a(new InputFilter[]{new com.ifengyu.intercom.ui.imui.ui.a.a(24)}).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null)).b((int) R.string.common_ok, (DialogInterface.OnClickListener) new ChatRoomInfoFragment$$Lambda$2(this, aVar, charSequence))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$showGroupNameDialog$2$ChatRoomInfoFragment(C0041a aVar, String str, DialogInterface dialogInterface, int i) {
        String trim = aVar.a().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            l.c(R.string.toast_group_name_is_required);
        } else if (!i.a(trim, str)) {
            updateGroupName(trim);
        }
    }

    private void openQRCodeUI() {
        SelfQRCodeActivity.a(getContext(), 3, this.mSessionId);
    }

    private void showMyNicknameInGroupDialog() {
        C0041a aVar = new C0041a(getContext());
        String charSequence = this.mItemMyNickname.getValueText().toString();
        ((C0041a) ((C0041a) ((C0041a) aVar.a((int) R.string.dialog_title_my_nick_name_in_group)).a(charSequence).a(new InputFilter[]{new com.ifengyu.intercom.ui.imui.ui.a.a(24)}).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null)).b((int) R.string.common_ok, (DialogInterface.OnClickListener) new ChatRoomInfoFragment$$Lambda$3(this, aVar, charSequence))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$showMyNicknameInGroupDialog$3$ChatRoomInfoFragment(C0041a aVar, String str, DialogInterface dialogInterface, int i) {
        String trim = aVar.a().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            l.c(R.string.toast_nick_name_is_required);
        } else if (!i.a(trim, str)) {
            updateMyNickNameInGroup(trim);
        }
    }

    private void openSelectMemberUI() {
        SelectMemberFragment newInstance = SelectMemberFragment.newInstance(this.mSessionId);
        newInstance.setTargetFragment(this, 18);
        startFragment(newInstance);
    }

    private void openKickoutUserUI() {
        SelectDelMemberFragment newInstance = SelectDelMemberFragment.newInstance(this.mSessionId);
        newInstance.setTargetFragment(this, 17);
        startFragment(newInstance);
    }

    private void showLeaveGroupDialog() {
        ((b) ((b) ((b) new b(getContext()).b("离开群聊")).a("确定离开该群聊吗？").a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null)).b((int) R.string.common_ok, (DialogInterface.OnClickListener) new ChatRoomInfoFragment$$Lambda$4(this))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$showLeaveGroupDialog$4$ChatRoomInfoFragment(DialogInterface dialogInterface, int i) {
        leaveGroup(this.mSessionId);
    }

    private void updateMyNickNameInGroup(String str) {
        getBaseActivity().showTipDiaog();
        IMContactManager.instance().reqUpdateMyNicknameInGroup(this.mSessionId, str, new Packetlistener() {
            public void onSuccess(Object obj) {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                if (obj instanceof String) {
                    ChatRoomInfoFragment.this.mItemMyNickname.setValueText((String) obj);
                    ChatRoomInfoFragment.this.mAdapter.notifyDataSetChanged();
                }
            }

            public void onFaild() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.update_network_error);
            }

            public void onTimeout() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.update_network_error);
            }
        });
    }

    private void updateGroupName(String str) {
        getBaseActivity().showTipDiaog();
        IMGroupManager.instance().reqUpdateGroupName(this.mSessionId, str, new Packetlistener() {
            public void onSuccess(Object obj) {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                if (obj instanceof String) {
                    ChatRoomInfoFragment.this.mItemGroupName.setValueText((String) obj);
                }
            }

            public void onFaild() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.update_network_error);
            }

            public void onTimeout() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.update_network_error);
            }
        });
    }

    private void leaveGroup(int i) {
        getBaseActivity().showTipDiaog();
        IMGroupManager.instance().reqLeaveGroup(i, new Packetlistener() {
            public void onSuccess(Object obj) {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                ChatRoomInfoFragment.this.getBaseActivity().finish();
            }

            public void onFaild() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.no_network_error_toast);
            }

            public void onTimeout() {
                ChatRoomInfoFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.no_network_error_toast);
            }
        });
    }
}
