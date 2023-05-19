package com.ifengyu.intercom.p216ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.SessionTalkActivity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnResultListener;
import com.ifengyu.talk.p238h.OnSessionListener;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.GroupRemovedEvent;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;

/* renamed from: com.ifengyu.intercom.ui.fragment.UserInfoFragment */
/* loaded from: classes2.dex */
public class UserInfoFragment extends BaseFragment implements OnSessionListener, OnResultListener {

    /* renamed from: A */
    private int f15189A;
    @BindView(R.id.btn_bottom1)
    QMUIRoundButton btnBottom1;
    @BindView(R.id.btn_bottom2)
    QMUIRoundButton btnBottom2;
    @BindView(R.id.iv_avatar)
    QMUIRadiusImageView ivAvatar;
    @BindView(R.id.iv_is_device)
    ImageView ivIsDevice;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.top_bg)
    QMUILinearLayout topBg;
    @BindView(R.id.tv_id)
    TextView tvId;
    @BindView(R.id.tv_name)
    TextView tvName;

    /* renamed from: z */
    private User f15190z;

    /* renamed from: A3 */
    private void m10027A3() {
        m10308b3();
        if (SlTalkClient.m8513r().m8520k().m8385b(this.f15190z.getAccount())) {
            return;
        }
        m10312X2(R.string.device_start_dialog_talk_fail);
    }

    /* renamed from: g3 */
    private void m10026g3() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f15190z = (User) arguments.getSerializable("key_user_model");
            this.f15189A = arguments.getInt("key_from_where");
        }
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserInfoFragment.this.m10019n3(view);
            }
        });
        this.btnBottom1.setChangeAlphaWhenPress(true);
        this.btnBottom2.setChangeAlphaWhenPress(true);
        this.btnBottom1.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserInfoFragment.this.m10017p3(view);
            }
        });
        this.btnBottom2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.u1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserInfoFragment.this.m10015r3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m10023j3(View view) {
        m10007z3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m10021l3(View view) {
        m10007z3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m10019n3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m10017p3(View view) {
        if (this.btnBottom1.getText().equals(UIUtils.m8603o(R.string.add_friend))) {
            m10009x3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m10015r3(View view) {
        if (this.btnBottom2.getText().equals(UIUtils.m8603o(R.string.add_friend))) {
            m10009x3();
        } else if (this.btnBottom2.getText().equals(UIUtils.m8603o(R.string.start_dialog_talk))) {
            m10008y3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m10013t3(View view) {
        m10007z3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m10010w3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        if (this.f15190z.removeContact()) {
            return;
        }
        m10312X2(R.string.delete_friend_fail);
    }

    /* renamed from: x3 */
    private void m10009x3() {
        if (ContactList.isContact(this.f15190z)) {
            m10306d3(R.string.cur_user_is_friend);
            this.mTopbar.m7340n(R.drawable.member_icon_delete, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.s1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserInfoFragment.this.m10013t3(view);
                }
            });
            this.btnBottom1.setVisibility(8);
            this.btnBottom2.setVisibility(0);
            this.btnBottom2.setText(R.string.start_dialog_talk);
            return;
        }
        m10308b3();
        if (this.f15190z.addContact(null)) {
            return;
        }
        m10312X2(R.string.apply_msg_send_fail);
    }

    /* renamed from: y3 */
    private void m10008y3() {
        m10027A3();
    }

    /* renamed from: z3 */
    private void m10007z3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.delete_friend_warn);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4554r1.f15255a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.o1
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                UserInfoFragment.this.m10010w3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: C0 */
    public void mo8347C0(GroupRemovedEvent groupRemovedEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        User user = this.f15190z;
        if (user == null) {
            return;
        }
        this.tvId.setText(UIUtils.m8602p(R.string.friend_or_device_id_s, user.getAccount()));
        this.tvName.setText(this.f15190z.getName());
        ImageLoader.m8705f(this, this.ivAvatar, this.f15190z.getAvatar());
        if (this.f15189A == 3) {
            if (this.f15190z.getRole() == 0) {
                this.ivIsDevice.setVisibility(0);
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(0);
                this.btnBottom2.setText(R.string.start_dialog_talk);
                return;
            }
            this.ivIsDevice.setVisibility(8);
            if (this.f15190z.isMe()) {
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(8);
                return;
            }
            if (ContactList.isContact(this.f15190z)) {
                this.mTopbar.m7340n(R.drawable.member_icon_delete, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.n1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        UserInfoFragment.this.m10023j3(view);
                    }
                });
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(0);
            } else {
                this.btnBottom1.setVisibility(0);
                this.btnBottom2.setVisibility(0);
                this.btnBottom1.setText(R.string.add_friend);
            }
            this.btnBottom2.setText(R.string.start_dialog_talk);
        } else if (this.f15190z.getRole() == 0) {
            this.ivIsDevice.setVisibility(0);
            this.btnBottom1.setVisibility(8);
            if (AppDatabase.m14276F().mo14269H().mo14226e(this.f15190z.getUid()) != null) {
                this.btnBottom2.setVisibility(0);
                this.btnBottom2.setText(R.string.start_dialog_talk);
                return;
            }
            this.btnBottom2.setVisibility(8);
        } else {
            this.ivIsDevice.setVisibility(8);
            if (this.f15190z.isMe()) {
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(8);
            } else if (ContactList.isContact(this.f15190z)) {
                this.mTopbar.m7340n(R.drawable.member_icon_delete, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.v1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        UserInfoFragment.this.m10021l3(view);
                    }
                });
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(0);
                this.btnBottom2.setText(R.string.start_dialog_talk);
            } else {
                this.btnBottom1.setVisibility(8);
                this.btnBottom2.setVisibility(0);
                this.btnBottom2.setText(R.string.add_friend);
            }
        }
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_InviteContactsAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10306d3(R.string.apply_msg_send_success);
            } else {
                m10312X2(R.string.apply_msg_send_fail);
            }
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_RemoveContactsAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10304f3(UIUtils.m8603o(R.string.delete_friend_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.fragment.t1
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
                    /* renamed from: a */
                    public final void mo9105a() {
                        UserInfoFragment.this.mo8048o2();
                    }
                });
            } else {
                m10312X2(R.string.delete_friend_fail);
            }
        }
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: T */
    public void mo8346T(int i) {
        if (i == 2) {
            m10312X2(R.string.device_start_dialog_talk_fail_because_offline);
        } else {
            m10312X2(R.string.device_start_dialog_talk_fail);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: Z */
    public void mo8345Z(GroupSessionEvent groupSessionEvent) {
        m10329C2();
        SessionTalkActivity.m9443N(getContext(), groupSessionEvent);
        mo8048o2();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8520k().addListener(this);
        SlTalkClient.m8513r().m8521j().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_user_info, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10026g3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: k */
    public void mo8344k() {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: n0 */
    public void mo8343n0(GroupSessionEvent groupSessionEvent) {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SlTalkClient.m8513r().m8520k().removeListener(this);
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: r1 */
    public void mo8342r1(GroupSessionEvent groupSessionEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }
}
