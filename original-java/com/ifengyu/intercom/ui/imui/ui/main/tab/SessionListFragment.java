package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.request.d;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.account.UserCache;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.entity.ApplyNotify;
import com.ifengyu.im.imservice.entity.InviteNotify;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.im.imservice.event.ChatEvent;
import com.ifengyu.im.imservice.event.GroupEvent;
import com.ifengyu.im.imservice.event.GroupNotifyEvent;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.imservice.event.ReconnectEvent;
import com.ifengyu.im.imservice.event.SessionEvent;
import com.ifengyu.im.imservice.event.SocketEvent;
import com.ifengyu.im.imservice.event.UnreadEvent;
import com.ifengyu.im.imservice.event.UserInfoEvent;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.im.imservice.services.IMSessionManager;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.im.imservice.services.NearbyService;
import com.ifengyu.im.utils.IMUIHelper;
import com.ifengyu.im.utils.NetworkUtil;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.ui.chat.RecentContactsCallback;
import com.ifengyu.intercom.ui.imui.ui.chat.adapter.RecentContactAdapter;
import com.ifengyu.intercom.ui.imui.ui.chat.guide.BluetoothGuideActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.CreateGroupActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.GroupJoinActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.SwitchTalkActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.SystemMsgActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.TeamMessageActivity;
import com.ifengyu.intercom.ui.imui.ui.drop.DropFake;
import com.ifengyu.intercom.ui.imui.ui.drop.a.C0034a;
import com.ifengyu.intercom.ui.imui.ui.qrcode.BaseScanActivity;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.e;
import com.ifengyu.library.util.k;
import com.ifengyu.library.util.l;
import com.ifengyu.library.util.m;
import com.ifengyu.library.widget.a.a.b;
import com.ifengyu.library.widget.dialog.a;
import com.ifengyu.library.widget.groupicon.NineGridImageView;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import io.reactivex.b.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class SessionListFragment extends BaseFragment implements b {
    private static final String a = SessionListFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public RecentContactsCallback b;
    private RecentContactAdapter c;
    private boolean d = false;
    private boolean e = false;
    /* access modifiers changed from: private */
    public com.ifengyu.library.widget.recyclerview.e.b<RecentContactAdapter> f = new com.ifengyu.library.widget.recyclerview.e.b<RecentContactAdapter>() {
        /* renamed from: a */
        public void onItemClick(RecentContactAdapter recentContactAdapter, View view, int i) {
            if (SessionListFragment.this.b != null) {
                SessionListFragment.this.b.onItemClick((RecentInfo) recentContactAdapter.getItem(i));
            }
        }

        /* renamed from: b */
        public void onItemLongClick(RecentContactAdapter recentContactAdapter, View view, int i) {
            SessionListFragment.this.a((RecentInfo) recentContactAdapter.getItem(i), i);
        }

        /* renamed from: c */
        public void onItemChildClick(RecentContactAdapter recentContactAdapter, View view, int i) {
        }

        /* renamed from: d */
        public void onItemChildLongClick(RecentContactAdapter recentContactAdapter, View view, int i) {
        }
    };
    @BindView(2131755570)
    View mDeviceStatusView;
    @BindView(2131755648)
    DropFake mDfTalkUnreadNumber;
    @BindView(2131755568)
    TextView mDisplayView;
    @BindView(2131755575)
    View mEmptyView;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755451)
    QMUIAlphaImageButton mIbRight;
    @BindView(2131755642)
    RelativeLayout mItemTalkGroup;
    @BindView(2131755644)
    ImageView mIvAvatarNone;
    @BindView(2131755645)
    NineGridImageView mIvTalkAvatar;
    @BindView(2131755567)
    ImageView mIvWarning;
    @BindView(2131755566)
    View mNoNetworkView;
    @BindView(2131755569)
    ProgressBar mReconnectProgressBar;
    @BindView(2131755574)
    RecyclerViewEmptySupport mRvRecentList;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755572)
    TextView mTvDeviceStatus;
    @BindView(2131755448)
    TextView mTvLeft;
    @BindView(2131755450)
    TextView mTvRight;
    @BindView(2131755647)
    TextView mTvTalkDataTime;
    @BindView(2131755650)
    TextView mTvTalkLastMsg;
    @BindView(2131755649)
    TextView mTvTalkNickName;
    @BindView(2131755443)
    TextView mTvTitle;

    public static SessionListFragment a() {
        Bundle bundle = new Bundle();
        SessionListFragment sessionListFragment = new SessionListFragment();
        sessionListFragment.setArguments(bundle);
        return sessionListFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_chat;
    }

    public void onEventMainThread(LoginEvent loginEvent) {
        c.a(a, String.format("LoginEvent# -> %s", new Object[]{loginEvent}));
        switch (loginEvent) {
            case LOCAL_LOGIN_SUCCESS:
            case LOGINING:
                c.a(a, "login#recv handleDoingLogin event");
                this.mDisplayView.setText(R.string.logging_in);
                if (this.mReconnectProgressBar != null) {
                    this.mReconnectProgressBar.setVisibility(0);
                    return;
                }
                return;
            case LOCAL_LOGIN_MSG_SERVICE:
            case LOGIN_OK:
                c.a(a, "login#login OK");
                this.e = false;
                this.mNoNetworkView.setVisibility(8);
                a(loginEvent);
                return;
            case LOGIN_AUTH_FAILED:
            case LOGIN_INNER_FAILED:
                b(loginEvent);
                return;
            case KICK_OUT:
                e();
                return;
            default:
                this.mReconnectProgressBar.setVisibility(8);
                return;
        }
    }

    public void onEventMainThread(SocketEvent socketEvent) {
        c.a(a, String.format("SocketEvent# -> %s", new Object[]{socketEvent}));
        switch (socketEvent) {
            case MSG_SERVER_DISCONNECTED:
                d();
                return;
            case CONNECT_MSG_SERVER_FAILED:
            case REQ_MSG_SERVER_ADDRS_FAILED:
                d();
                a(socketEvent);
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(ReconnectEvent reconnectEvent) {
        c.a(a, String.format("ReconnectEvent# -> %s", new Object[]{reconnectEvent}));
        switch (reconnectEvent) {
            case DISABLE:
                d();
                return;
            default:
                return;
        }
    }

    private void a(LoginEvent loginEvent) {
        this.d = true;
    }

    private void b(LoginEvent loginEvent) {
        if (loginEvent == LoginEvent.LOGIN_AUTH_FAILED) {
            g();
            this.mNoNetworkView.setVisibility(0);
            this.mReconnectProgressBar.setVisibility(8);
            this.mDisplayView.setText(R.string.disconnect_kickout);
            this.mNoNetworkView.setOnClickListener(new a(this));
        } else if (this.e) {
            this.e = false;
            this.mReconnectProgressBar.setVisibility(8);
            this.mDisplayView.setText(R.string.no_network);
            if (loginEvent == LoginEvent.LOGIN_INNER_FAILED) {
                l.c(IMUIHelper.getLoginErrorTip(loginEvent));
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void c(View view) {
        c.a(a, "noNetworkView clicked");
        if (NetworkUtil.isNetWorkAvalible(getContext())) {
            IMLoginManager.instance().relogin();
            this.mReconnectProgressBar.setVisibility(0);
            return;
        }
        l.c(R.string.no_network_toast);
    }

    private void a(SocketEvent socketEvent) {
        if (this.e) {
            this.e = false;
            String string = getString(IMUIHelper.getSocketErrorTip(socketEvent));
            c.a(a, String.format("login#errorTip:%s", new Object[]{string}));
            this.mReconnectProgressBar.setVisibility(8);
            l.a((CharSequence) string);
        }
    }

    private void d() {
        this.mReconnectProgressBar.setVisibility(8);
        if (IMLoginManager.instance().isKickout()) {
            this.mDisplayView.setText(R.string.disconnect_kickout);
        } else {
            this.mDisplayView.setText(R.string.no_network);
        }
        this.mNoNetworkView.setVisibility(0);
        this.mNoNetworkView.setOnClickListener(new b(this));
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void b(View view) {
        c.a(a, "noNetworkView clicked");
        if (NetworkUtil.isNetWorkAvalible(getContext())) {
            this.e = true;
            IMLoginManager.instance().relogin();
            this.mReconnectProgressBar.setVisibility(0);
            return;
        }
        l.c(R.string.no_network_toast);
    }

    private void e() {
        g();
    }

    private void f() {
        UserCache.instance().clear();
        IMLoginManager.instance().setKickout(false);
        IMLoginManager.instance().logOut();
    }

    private void g() {
        ((a.b) ((a.b) ((a.b) ((a.b) ((a.b) new a.b(getContext()).b("下线通知")).a("您的账号已在其他设备登录，是否重新登录?").a(false)).b(false)).a((CharSequence) "取消", (OnClickListener) null)).b((CharSequence) "重新登录", (OnClickListener) new c(this))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        f();
    }

    public void onEventMainThread(GroupNotifyEvent groupNotifyEvent) {
        c.a(a, "GroupNotifyEvent# -> " + groupNotifyEvent);
        switch (groupNotifyEvent.getEvent()) {
            case INVITED_JOIN_NOTIFY:
                a(groupNotifyEvent.getInvitedNotify());
                return;
            case APPLY_JOIN_NOTIFY:
                a(groupNotifyEvent.getApplyNotify());
                return;
            case AGREE_APPLY_NOTIFY:
                a(groupNotifyEvent.getApplyNotify(), true);
                return;
            case REJECT_APPLY_NOTIFY:
                a(groupNotifyEvent.getApplyNotify(), false);
                return;
            case AGREE_INVITE_NOTIFY:
                a(groupNotifyEvent.getInvitedNotify(), true);
                return;
            case REJECT_INVITE_NOTIFY:
                a(groupNotifyEvent.getInvitedNotify(), false);
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(SessionEvent sessionEvent) {
        c.a(a, "SessionEvent# -> " + sessionEvent);
        switch (sessionEvent) {
            case RECENT_SESSION_LIST_UPDATE:
            case RECENT_SESSION_LIST_SUCCESS:
            case SET_SESSION_TOP:
            case SET_SESSION_TALK:
                k();
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(GroupEvent groupEvent) {
        c.a(a, "GroupEvent# -> " + groupEvent);
        switch (groupEvent.getEvent()) {
            case GROUP_INFO_OK:
            case CHANGE_GROUP_MEMBER_SUCCESS:
                k();
                return;
            case GROUP_INFO_UPDATED:
                k();
                return;
            case CREATE_GROUP_OK:
                GroupEntity groupEntity = groupEvent.getGroupEntity();
                if (groupEntity != null) {
                    TeamMessageActivity.start(getActivity(), String.valueOf(groupEntity.getPeerId()), 3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(UnreadEvent unreadEvent) {
        switch (unreadEvent.event) {
            case UNREAD_MSG_RECEIVED:
            case UNREAD_MSG_LIST_OK:
            case SESSION_READED_UNREAD_MSG:
                k();
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(UserInfoEvent userInfoEvent) {
        c.a(a, "UserInfoEvent# -> " + userInfoEvent);
        switch (userInfoEvent) {
            case USER_INFO_OK:
            case USER_INFO_UPDATE:
                k();
                return;
            default:
                return;
        }
    }

    public void onEvent(ChatEvent chatEvent) {
        switch (chatEvent.getEvent()) {
            case START_CHAT:
                a(chatEvent.getUserEntity());
                return;
            default:
                return;
        }
    }

    private void a(UserEntity userEntity) {
        GroupEntity groupEntity;
        boolean z;
        List allGroupList = IMGroupManager.instance().getAllGroupList();
        UserEntity loginInfo = IMLoginManager.instance().getLoginInfo();
        int loginId = IMLoginManager.instance().getLoginId();
        int peerId = userEntity.getPeerId();
        Iterator it = allGroupList.iterator();
        while (true) {
            if (!it.hasNext()) {
                groupEntity = null;
                z = true;
                break;
            }
            groupEntity = (GroupEntity) it.next();
            if (groupEntity.getUserCnt() == 2) {
                Set set = groupEntity.getlistGroupMemberIds();
                if (set.contains(Integer.valueOf(peerId)) && set.contains(Integer.valueOf(loginId))) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(Integer.valueOf(peerId));
            IMGroupManager.instance().reqCreateTempGroup(loginInfo.mainName, arrayList);
            return;
        }
        TeamMessageActivity.start(getActivity(), String.valueOf(groupEntity.getPeerId()), 3);
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        l.a((ViewGroup) this.mTitleBar);
        this.mIbLeft.setVisibility(8);
        this.mTvTitle.setText(R.string.main_title_chat);
        this.mIbRight.setVisibility(0);
        this.mIbRight.setImageResource(R.drawable.common_icon_increase);
        this.mIbRight.setOnClickListener(new d(this));
        m();
        j();
        i();
        h();
        de.greenrobot.event.c.a().b(this);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(View view) {
        d(this.mIbRight);
    }

    private void h() {
        com.ifengyu.intercom.ui.imui.ui.drop.a.a().a((C0034a) new C0034a() {
            public void a() {
                SessionListFragment.this.f.setShouldDetectGesture(false);
            }

            public void b() {
                SessionListFragment.this.f.setShouldDetectGesture(true);
            }
        });
    }

    private void i() {
        this.c = new RecentContactAdapter(this.mRvRecentList, new ArrayList());
        this.mRvRecentList.setAdapter(this.c);
        this.mRvRecentList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRvRecentList.addOnItemTouchListener(this.f);
        this.mRvRecentList.setEmptyView(this.mEmptyView);
    }

    private void j() {
        this.mIvTalkAvatar.setAdapter(new com.ifengyu.library.widget.groupicon.a<String>() {
            /* access modifiers changed from: protected */
            /* renamed from: a */
            public void onDisplayImage(Context context, ImageView imageView, String str) {
                d b = new d().a((int) R.drawable.chat_current_talking_head_none).b((int) R.drawable.chat_current_talking_head_none);
                if (TextUtils.isEmpty(str)) {
                    imageView.setImageResource(R.drawable.chat_current_talking_head_none);
                } else {
                    com.bumptech.glide.c.a((View) imageView).a((Object) str).a(b).a(imageView);
                }
            }
        });
        this.mTvTalkNickName.setText("当前群组为空");
        this.mTvTalkDataTime.setText("");
        this.mTvTalkLastMsg.setText("");
        this.mIvTalkAvatar.setImagesData(null);
        this.mIvTalkAvatar.setVisibility(8);
        this.mIvAvatarNone.setVisibility(0);
        this.mDfTalkUnreadNumber.setVisibility(8);
    }

    private void k() {
        boolean isUserDataReady = IMContactManager.instance().isUserDataReady();
        boolean isSessionListReady = IMSessionManager.instance().isSessionListReady();
        boolean isGroupReady = IMGroupManager.instance().isGroupReady();
        if (isUserDataReady && isSessionListReady && isGroupReady) {
            int totalUnreadCount = IMUnreadMsgManager.instance().getTotalUnreadCount();
            c.a(a, String.format("unread#total cnt %d", new Object[]{Integer.valueOf(totalUnreadCount)}));
            ((MainActivity) getActivity()).a(totalUnreadCount);
            List recentListInfo = IMSessionManager.instance().getRecentListInfo();
            if (recentListInfo == null || recentListInfo.size() <= 0 || !((RecentInfo) recentListInfo.get(0)).isTalk()) {
                this.mTvTalkNickName.setText("当前群组为空");
                this.mTvTalkDataTime.setText("");
                this.mTvTalkLastMsg.setText("");
                this.mIvTalkAvatar.setImagesData(null);
                this.mIvTalkAvatar.setVisibility(8);
                this.mIvAvatarNone.setVisibility(0);
                b(0);
            } else {
                RecentInfo recentInfo = (RecentInfo) recentListInfo.remove(0);
                this.mTvTalkNickName.setText(recentInfo.getName());
                this.mTvTalkDataTime.setText(k.a(recentInfo.getUpdateTime(), true));
                this.mTvTalkLastMsg.setText(recentInfo.getLatestMsgData());
                this.mIvTalkAvatar.setImagesData(recentInfo.getAvatar());
                this.mIvTalkAvatar.setBackgroundResource(R.drawable.bg_group_head);
                this.mIvTalkAvatar.setVisibility(0);
                this.mIvAvatarNone.setVisibility(8);
                b(recentInfo.getUnReadCnt());
            }
            this.c.setNewData(recentListInfo);
        }
    }

    private void b(int i) {
        this.mDfTalkUnreadNumber.setVisibility(i > 0 ? 0 : 8);
        this.mDfTalkUnreadNumber.setText(a(i));
    }

    /* access modifiers changed from: protected */
    public String a(int i) {
        return String.valueOf(Math.min(i, 99));
    }

    /* access modifiers changed from: protected */
    public void initData() {
        super.initData();
    }

    public void onStart() {
        super.onStart();
        if (!com.ifengyu.intercom.node.k.a().b() || w.ad() != 1) {
            this.mDeviceStatusView.setVisibility(0);
            l();
            return;
        }
        this.mDeviceStatusView.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void l() {
        String string;
        boolean b2 = com.ifengyu.intercom.node.k.a().b();
        boolean c2 = com.ifengyu.library.util.a.c();
        if (b2 && c2) {
            string = getString(R.string.device_net_talk_had_open);
        } else if (b2) {
            string = getString(R.string.open_device_net_talk);
        } else {
            string = getString(R.string.please_connect_ble_to_use_net_talk);
        }
        this.mTvDeviceStatus.setText(string);
    }

    public void onDestroy() {
        de.greenrobot.event.c.a().d(this);
        super.onDestroy();
    }

    @OnClick({2131755570, 2131755573, 2131755642, 2131755451})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ib_right /*2131755451*/:
                d(this.mIbRight);
                return;
            case R.id.item_device_status_view /*2131755570*/:
                String str = (String) this.mTvDeviceStatus.getText();
                if (str.equals(getString(R.string.device_net_talk_had_open))) {
                    BluetoothGuideActivity.start(getContext());
                    return;
                } else if (str.equals(getString(R.string.open_device_net_talk))) {
                    BluetoothGuideActivity.start(getContext());
                    return;
                } else if (str.equals(getString(R.string.please_connect_ble_to_use_net_talk))) {
                    Intent intent = new Intent(getActivity(), ConnectDeviceActivity.class);
                    intent.setAction("com.ifengyu.intercom.FROM_DEVICE");
                    startActivity(intent);
                    return;
                } else {
                    return;
                }
            case R.id.item_switch_talk_group /*2131755573*/:
                SwitchTalkActivity.start(getContext());
                return;
            case R.id.item_talk_group /*2131755642*/:
                String talkGroupId = MessageService.instance().getTalkGroupId();
                if (!TextUtils.isEmpty(talkGroupId)) {
                    TeamMessageActivity.start(getActivity(), talkGroupId, 3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void a(InviteNotify inviteNotify) {
        ((a.b) ((a.b) ((a.b) ((a.b) new a.b(getContext()).a(false)).b("群聊邀请")).a(String.format("%s邀请您加入%s群聊，是否接受？", new Object[]{inviteNotify.getReqUserName(), inviteNotify.getGroupName()})).a((CharSequence) "拒绝", (OnClickListener) new e(this, inviteNotify))).b((CharSequence) "接受", (OnClickListener) new f(this, inviteNotify))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void b(InviteNotify inviteNotify, DialogInterface dialogInterface, int i) {
        b(inviteNotify, false);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(InviteNotify inviteNotify, DialogInterface dialogInterface, int i) {
        b(inviteNotify, true);
    }

    private void b(InviteNotify inviteNotify, final boolean z) {
        IMGroupManager.instance().rspAcceptOrRejectGroupInvite(inviteNotify, z, new Packetlistener() {
            public void onSuccess(Object obj) {
                if (z) {
                    l.a((CharSequence) "已接受");
                } else {
                    l.a((CharSequence) "已拒绝");
                }
            }

            public void onFaild() {
                l.a((CharSequence) "发送失败");
            }

            public void onTimeout() {
                l.a((CharSequence) "发送超时");
            }
        });
    }

    public void a(ApplyNotify applyNotify) {
        ((a.b) ((a.b) ((a.b) ((a.b) new a.b(getContext()).a(false)).b("申请加群")).a(String.format("%s请求加入%s群聊，是否同意？", new Object[]{applyNotify.getReqUserName(), applyNotify.getGroupName()})).a((CharSequence) "拒绝", (OnClickListener) new g(this, applyNotify))).b((CharSequence) "同意", (OnClickListener) new h(this, applyNotify))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void b(ApplyNotify applyNotify, DialogInterface dialogInterface, int i) {
        b(applyNotify, false);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(ApplyNotify applyNotify, DialogInterface dialogInterface, int i) {
        b(applyNotify, true);
    }

    private void b(ApplyNotify applyNotify, final boolean z) {
        IMGroupManager.instance().rspApplyJoinGroup(applyNotify, z, new Packetlistener() {
            public void onSuccess(Object obj) {
                if (z) {
                    l.a((CharSequence) "已同意");
                } else {
                    l.a((CharSequence) "已拒绝");
                }
            }

            public void onFaild() {
                l.a((CharSequence) "发送失败");
            }

            public void onTimeout() {
                l.a((CharSequence) "发送超时");
            }
        });
    }

    public void a(InviteNotify inviteNotify, boolean z) {
        String format = String.format("%s已接受加入%s群聊", new Object[]{inviteNotify.getInvitedUserName(), inviteNotify.getGroupName()});
        String format2 = String.format("%s已拒绝加入%s群聊", new Object[]{inviteNotify.getInvitedUserName(), inviteNotify.getGroupName()});
        a.b bVar = (a.b) new a.b(getContext()).b("提示");
        if (!z) {
            format = format2;
        }
        ((a.b) ((a.b) bVar.a(format).a((CharSequence) "取消", (OnClickListener) null)).b((CharSequence) "确定", (OnClickListener) null)).c();
    }

    public void a(ApplyNotify applyNotify, boolean z) {
        String format = String.format("%s已同意你加入%s群聊", new Object[]{Integer.valueOf(applyNotify.getCreatorId()), applyNotify.getGroupName()});
        String format2 = String.format("%s已拒绝你加入%s群聊", new Object[]{Integer.valueOf(applyNotify.getCreatorId()), applyNotify.getGroupName()});
        a.b bVar = (a.b) new a.b(getContext()).b("提示");
        if (!z) {
            format = format2;
        }
        ((a.b) ((a.b) bVar.a(format).a((CharSequence) "取消", (OnClickListener) null)).b((CharSequence) "确定", (OnClickListener) null)).c();
    }

    private void m() {
        if (this.b == null) {
            this.b = new RecentContactsCallback() {
                public void onRecentContactsLoaded() {
                }

                public void onUnreadCountChange(int i) {
                }

                public void onItemClick(RecentInfo recentInfo) {
                    if (recentInfo.getSessionType() == 3) {
                        TeamMessageActivity.start(SessionListFragment.this.getActivity(), recentInfo.getPeerId(), recentInfo.getSessionType());
                    } else if (recentInfo.getSessionType() == 1 && recentInfo.getLatestMsgType() == 0) {
                        SystemMsgActivity.start(SessionListFragment.this.getContext());
                    }
                }
            };
        }
    }

    /* access modifiers changed from: private */
    public void a(RecentInfo recentInfo, int i) {
        ((a.b) ((a.b) ((a.b) new a.b(getContext()).b("删除会话")).a("是否删除?").a((CharSequence) "取消", (OnClickListener) null)).b((CharSequence) "删除", (OnClickListener) new i(recentInfo))).c();
    }

    private void d(View view) {
        com.ifengyu.library.widget.a.a aVar = new com.ifengyu.library.widget.a.a(new ContextThemeWrapper(getContext(), R.style.MyPopupMenu), view, 3);
        aVar.a(R.menu.chat_more_pop);
        aVar.setOnMenuItemClickListener(this);
        aVar.b();
    }

    public boolean a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.action_create_group /*2131755880*/:
                CreateGroupActivity.start(getContext());
                NearbyService.instance().queryNearbyUser();
                break;
            case R.id.action_join_group /*2131755881*/:
                GroupJoinActivity.start(getContext());
                break;
            case R.id.action_scan_qr_code /*2131755882*/:
                n();
                break;
        }
        return true;
    }

    @SuppressLint({"CheckResult"})
    private void n() {
        if (m.b()) {
            getRxPermissions().b(com.ifengyu.intercom.ui.imui.a.a).subscribe((f<? super T>) new j<Object>(this));
        } else {
            o();
        }
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            com.ifengyu.intercom.ui.imui.a.a.a((Activity) getActivity(), "在设置-应用-极蜂对讲-权限中开启相机权限，以正常使用相机功能");
        } else if (e.a(getContext(), "android:camera")) {
            o();
        } else {
            com.ifengyu.intercom.ui.imui.a.a.b(getActivity(), "在安全中心-授权管理-应用权限管理-极蜂对讲中开启相机权限，以正常使用相机功能");
        }
    }

    private void o() {
        BaseScanActivity.a(getContext());
    }

    public void b() {
        getActivity().runOnUiThread(new Runnable() {
            public void run() {
                SessionListFragment.this.l();
            }
        });
    }

    public void c() {
        getActivity().runOnUiThread(new Runnable() {
            public void run() {
                SessionListFragment.this.l();
            }
        });
    }
}
