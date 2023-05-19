package com.ifengyu.intercom.p216ui.talk;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.CreateGroupCodeUserInfo;
import com.ifengyu.intercom.http.entity.JoinGroupByCodeEntity;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.models.OperatorMsgUser;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.talk.JoinGroupByCodeFragment */
/* loaded from: classes2.dex */
public class JoinGroupByCodeFragment extends BaseFragment implements OnGroupListener, OnExternalMsgListener {
    @BindView(R.id.bottom_tvs_layout)
    LinearLayout bottomTvsLayout;
    @BindView(R.id.btn_bottom)
    QMUIRoundButton btnBottom;
    @BindView(R.id.iv_initiator_avatar)
    QMUIRadiusImageView ivInitiatorAvatar;
    @BindView(R.id.ll_initiator_info)
    LinearLayout llInitiatorInfo;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.top_et)
    EditText topEt;
    @BindView(R.id.tv_initiator_name)
    TextView tvInitiatorName;

    /* renamed from: z */
    private long f15544z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.JoinGroupByCodeFragment$a */
    /* loaded from: classes2.dex */
    public class C4732a implements TextWatcher {
        C4732a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            JoinGroupByCodeFragment.this.m9543E3(charSequence.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.JoinGroupByCodeFragment$b */
    /* loaded from: classes2.dex */
    public class C4733b extends ErrorConsumer {
        C4733b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) JoinGroupByCodeFragment.this).f15047y, "getCreateGroupCodeUserInfo fail");
            JoinGroupByCodeFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.JoinGroupByCodeFragment$c */
    /* loaded from: classes2.dex */
    public class C4734c extends ErrorConsumer {
        C4734c() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) JoinGroupByCodeFragment.this).f15047y, "joinGroupByCode fail");
            JoinGroupByCodeFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9546B3(CreateGroupCodeUserInfo createGroupCodeUserInfo) throws Exception {
        C4161y.m11049f(this.f15047y, "getCreateGroupCodeUserInfo success");
        m10329C2();
        this.llInitiatorInfo.setVisibility(0);
        this.btnBottom.setVisibility(0);
        ImageLoader.m8705f(this, this.ivInitiatorAvatar, createGroupCodeUserInfo.getAvatar());
        this.tvInitiatorName.setText(createGroupCodeUserInfo.getNickname());
    }

    /* renamed from: C3 */
    public static JoinGroupByCodeFragment m9545C3() {
        return new JoinGroupByCodeFragment();
    }

    /* renamed from: D3 */
    private void m9544D3(String str) {
        MethodsUtils.m11281s(this.topEt);
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11360v(str).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.f1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                JoinGroupByCodeFragment.this.m9523z3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.b1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                JoinGroupByCodeFragment.this.m9546B3((CreateGroupCodeUserInfo) obj);
            }
        }, new C4733b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public void m9543E3(String str) {
        for (int i = 0; i < this.bottomTvsLayout.getChildCount(); i++) {
            TextView textView = (TextView) this.bottomTvsLayout.getChildAt(i);
            if (!TextUtils.isEmpty(str) && i < str.length()) {
                textView.setText(String.valueOf(str.charAt(i)));
            } else {
                textView.setText((CharSequence) null);
            }
        }
        if (TextUtils.isEmpty(str) || str.length() != 5) {
            return;
        }
        m9544D3(str);
    }

    /* renamed from: l3 */
    private void m9537l3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.join_group_by_code);
        this.mTopbar.m7343k(R.drawable.common_icon_cannel_white, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JoinGroupByCodeFragment.this.m9533p3(view);
            }
        });
        for (int i = 0; i < this.bottomTvsLayout.getChildCount(); i++) {
            ((TextView) this.bottomTvsLayout.getChildAt(i)).setTypeface(AppConstants.f13910d);
        }
        this.btnBottom.setChangeAlphaWhenPress(true);
        this.btnBottom.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JoinGroupByCodeFragment.this.m9531r3(view);
            }
        });
        this.topEt.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JoinGroupByCodeFragment.this.m9529t3(view);
            }
        });
        this.topEt.addTextChangedListener(new C4732a());
        MethodsUtils.m11303G(this.topEt);
    }

    /* renamed from: m3 */
    private void m9536m3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11398I(this.topEt.getText().toString()).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.y0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                JoinGroupByCodeFragment.this.m9527v3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.e1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                JoinGroupByCodeFragment.this.m9525x3((JoinGroupByCodeEntity) obj);
            }
        }, new C4734c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9533p3(View view) {
        MethodsUtils.m11281s(this.topEt);
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9531r3(View view) {
        m9536m3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9529t3(View view) {
        if (TextUtils.isEmpty(this.topEt.getText())) {
            this.topEt.setSelection(0);
            return;
        }
        EditText editText = this.topEt;
        editText.setSelection(editText.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9527v3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m9525x3(JoinGroupByCodeEntity joinGroupByCodeEntity) throws Exception {
        C4161y.m11049f(this.f15047y, "joinGroupByCode success");
        this.f15544z = joinGroupByCodeEntity.getGid();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m9523z3(Disposable disposable) throws Exception {
        m10308b3();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
        if (groupEvent.getTargetGroup().getGid() == this.f15544z) {
            m10329C2();
            TalkActivity.m9412N(getContext(), groupEvent.getTargetGroup());
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: K */
    public void mo8371K(OperatorMsgModel operatorMsgModel) {
        OperatorMsgUser[] failList;
        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(this.f15544z);
        if (m8429c != null) {
            m10329C2();
            TalkActivity.m9412N(getContext(), m8429c);
        } else if (OperatorMsgModel.MODE_ENTER_GROUP_TOKEN.equals(operatorMsgModel.getOprName()) && this.f15544z == Long.parseLong(operatorMsgModel.getGid())) {
            if (Integer.parseInt(operatorMsgModel.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT.m6942a()) {
                m10309a3(UIUtils.m8603o(R.string.group_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        JoinGroupByCodeFragment.this.mo8048o2();
                    }
                });
            } else if (Integer.parseInt(operatorMsgModel.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT_U_G.m6942a()) {
                m10309a3(UIUtils.m8603o(R.string.group_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        JoinGroupByCodeFragment.this.mo8048o2();
                    }
                });
            } else if (Integer.parseInt(operatorMsgModel.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT_G_U.m6942a()) {
                m10309a3(UIUtils.m8603o(R.string.group_member_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        JoinGroupByCodeFragment.this.mo8048o2();
                    }
                });
            } else if (operatorMsgModel.getFailList() != null && operatorMsgModel.getFailList().length > 0) {
                for (OperatorMsgUser operatorMsgUser : operatorMsgModel.getFailList()) {
                    if (operatorMsgUser.getAcc().equals(SlTalkClient.m8513r().m8530a().m8459b())) {
                        if (Integer.parseInt(operatorMsgUser.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT_U_G.m6942a()) {
                            m10309a3(UIUtils.m8603o(R.string.group_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                                /* renamed from: a */
                                public final void mo9160a() {
                                    JoinGroupByCodeFragment.this.mo8048o2();
                                }
                            });
                            return;
                        } else if (Integer.parseInt(operatorMsgUser.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT_G_U.m6942a()) {
                            m10309a3(UIUtils.m8603o(R.string.group_member_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                                /* renamed from: a */
                                public final void mo9160a() {
                                    JoinGroupByCodeFragment.this.mo8048o2();
                                }
                            });
                            return;
                        } else {
                            m10309a3(UIUtils.m8603o(R.string.group_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                                /* renamed from: a */
                                public final void mo9160a() {
                                    JoinGroupByCodeFragment.this.mo8048o2();
                                }
                            });
                            return;
                        }
                    }
                }
            } else {
                m10309a3(UIUtils.m8603o(R.string.join_group_fail), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.c1
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        JoinGroupByCodeFragment.this.mo8048o2();
                    }
                });
            }
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: b */
    public void mo8370b() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        QMUIStatusBarHelper.m7482l(getActivity());
        SlTalkClient.m8513r().m8525f().addListener(this);
        SlTalkClient.m8513r().m8529b().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_join_group_by_code, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9537l3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        QMUIStatusBarHelper.m7481m(getActivity());
        SlTalkClient.m8513r().m8525f().removeListener(this);
        SlTalkClient.m8513r().m8529b().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: t */
    public void mo8369t(HistoryMsgModel historyMsgModel) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
    }
}
