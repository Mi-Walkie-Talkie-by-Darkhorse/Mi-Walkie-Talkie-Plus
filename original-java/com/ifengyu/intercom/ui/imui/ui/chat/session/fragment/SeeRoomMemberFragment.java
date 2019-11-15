package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.event.ChatEvent;
import com.ifengyu.im.imservice.event.ChatEvent.Event;
import com.ifengyu.im.imservice.manager.GroupHelper;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.utils.IMUIHelper;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.intercom.ui.imui.ui.chat.dialog.UserInfoDialog.Builder;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.InviteContactActivity;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.ClearEditText;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.QMUIRadiusImageView;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.ArrayList;
import java.util.List;

public class SeeRoomMemberFragment extends BaseFragment implements a {
    public static final int REQUEST_ADD_MEMBER = 16;
    public static final int REQUEST_DELETE_MEMBER = 17;
    /* access modifiers changed from: private */
    public List<UserEntity> mGroupMembers;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755633)
    LinearLayout mLlNoSearchResult;
    @BindView(2131755366)
    RecyclerViewEmptySupport mRvSearchList;
    /* access modifiers changed from: private */
    public SearchAdapter mSearchAdapter;
    @BindView(2131755632)
    ClearEditText mSearchEditText;
    /* access modifiers changed from: private */
    public int mSessionId;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755443)
    TextView mTvTitle;

    private class SearchAdapter extends BaseRecyclerAdapter<UserEntity> {
        private String searchKey;

        public String getSearchKey() {
            return this.searchKey;
        }

        public void setSearchKey(String str) {
            this.searchKey = str;
        }

        public SearchAdapter(Context context, List<UserEntity> list) {
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
            String str;
            QMUIRadiusImageView qMUIRadiusImageView = (QMUIRadiusImageView) aVar.a(R.id.riv_avatar);
            TextView b = aVar.b(R.id.tv_name);
            String str2 = "";
            switch (getItemViewType(i)) {
                case 0:
                    qMUIRadiusImageView.setCornerRadius(l.a(3.0f));
                    String groupMemberDisplayName = GroupHelper.getGroupMemberDisplayName(SeeRoomMemberFragment.this.mSessionId, userEntity.peerId);
                    b.setText(groupMemberDisplayName);
                    c.a((View) qMUIRadiusImageView).a((Object) userEntity.avatar).a((ImageView) qMUIRadiusImageView);
                    str = groupMemberDisplayName;
                    break;
                case 1:
                    qMUIRadiusImageView.setCornerRadius(0);
                    c.a((View) qMUIRadiusImageView).a((Object) Integer.valueOf(R.drawable.chat_info_btn_add)).a((ImageView) qMUIRadiusImageView);
                    str = str2;
                    break;
                case 2:
                    qMUIRadiusImageView.setCornerRadius(0);
                    c.a((View) qMUIRadiusImageView).a((Object) Integer.valueOf(R.drawable.chat_info_btn_delete)).a((ImageView) qMUIRadiusImageView);
                    break;
            }
            str = str2;
            if (TextUtils.isEmpty(getSearchKey())) {
                userEntity.getSearchElement().reset();
            }
            IMUIHelper.setTextHilighted(aVar.b(R.id.tv_name), str, userEntity.getSearchElement());
        }
    }

    public static SeeRoomMemberFragment newInstance(int i) {
        Bundle bundle = new Bundle();
        SeeRoomMemberFragment seeRoomMemberFragment = new SeeRoomMemberFragment();
        bundle.putInt(Extras.EXTRA_SESSION_ID, i);
        seeRoomMemberFragment.setArguments(bundle);
        return seeRoomMemberFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_see_room_member;
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
        this.mIbLeft.setOnClickListener(new SeeRoomMemberFragment$$Lambda$0(this));
        this.mRvSearchList.addItemDecoration(new com.ifengyu.library.widget.recyclerview.b.a(l.a(22.0f), l.a(16.0f), false));
        RecyclerViewEmptySupport recyclerViewEmptySupport = this.mRvSearchList;
        SearchAdapter searchAdapter = new SearchAdapter(getContext(), null);
        this.mSearchAdapter = searchAdapter;
        recyclerViewEmptySupport.setAdapter(searchAdapter);
        this.mRvSearchList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.mRvSearchList.setEmptyView(this.mLlNoSearchResult);
        this.mSearchAdapter.setOnItemClickListener(this);
        this.mSearchEditText.setHint(R.string.common_search);
        this.mSearchEditText.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String charSequence2 = charSequence.toString();
                SeeRoomMemberFragment.this.mSearchAdapter.setSearchKey(charSequence2);
                if (TextUtils.isEmpty(charSequence2)) {
                    SeeRoomMemberFragment.this.mSearchAdapter.setNewData(SeeRoomMemberFragment.this.mGroupMembers);
                } else {
                    SeeRoomMemberFragment.this.searchEntityLists(charSequence2);
                }
            }

            public void afterTextChanged(Editable editable) {
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initWidget$0$SeeRoomMemberFragment(View view) {
        popBackStack();
    }

    /* access modifiers changed from: protected */
    public void initData() {
        refreshUI();
    }

    private void refreshUI() {
        GroupEntity findGroup = IMGroupManager.instance().findGroup(this.mSessionId);
        int loginId = IMLoginManager.instance().getLoginId();
        int creatorId = findGroup.getCreatorId();
        this.mGroupMembers = IMGroupManager.instance().getGroupMembers(this.mSessionId);
        if (this.mGroupMembers != null) {
            this.mTvTitle.setText(String.format("群组成员（%s）", new Object[]{Integer.valueOf(this.mGroupMembers.size())}));
            UserEntity userEntity = new UserEntity();
            userEntity.setItemType(1);
            this.mGroupMembers.add(userEntity);
            if (loginId == creatorId) {
                UserEntity userEntity2 = new UserEntity();
                userEntity2.setItemType(2);
                this.mGroupMembers.add(userEntity2);
            }
            this.mSearchAdapter.setNewData(this.mGroupMembers);
        }
    }

    /* access modifiers changed from: private */
    public void searchEntityLists(String str) {
        this.mSearchAdapter.setNewData(getSearchContactList(str));
    }

    public List<UserEntity> getSearchContactList(String str) {
        ArrayList arrayList = new ArrayList();
        for (UserEntity userEntity : this.mGroupMembers) {
            if (userEntity.getItemType() == 0 && IMUIHelper.handleContactSearch(str, userEntity)) {
                arrayList.add(userEntity);
            }
        }
        return arrayList;
    }

    public void onItemClick(View view, int i) {
        switch (this.mSearchAdapter.getItemViewType(i)) {
            case 0:
                showUserInfoDialog((UserEntity) this.mSearchAdapter.getItem(i));
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
            com.ifengyu.library.util.c.d(this.TAG, "my user info is null, please check whether to login success");
            return;
        }
        boolean z = peerId == loginId;
        new Builder(getContext()).setTitle(userEntity.mainName).setSubTitle(String.format("ID:%s", new Object[]{Integer.valueOf(userEntity.peerId)})).setImageUrl(userEntity.avatar).setPositiveButton(z ? R.string.common_ok : R.string.btn_send_message, new SeeRoomMemberFragment$$Lambda$1(z, userEntity)).show();
    }

    static final /* synthetic */ void lambda$showUserInfoDialog$1$SeeRoomMemberFragment(boolean z, UserEntity userEntity, DialogInterface dialogInterface, int i) {
        if (!z) {
            de.greenrobot.event.c.a().e(new ChatEvent(Event.START_CHAT, userEntity));
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
                default:
                    return;
            }
        }
    }

    private void openKickoutUserUI() {
        SelectDelMemberFragment newInstance = SelectDelMemberFragment.newInstance(this.mSessionId);
        newInstance.setTargetFragment(this, 17);
        startFragment(newInstance);
    }
}
