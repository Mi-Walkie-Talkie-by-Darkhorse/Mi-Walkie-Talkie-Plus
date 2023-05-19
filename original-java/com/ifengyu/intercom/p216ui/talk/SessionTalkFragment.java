package com.ifengyu.intercom.p216ui.talk;

import android.annotation.SuppressLint;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.event.NetEvent;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.EarphoneManager;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseMvpFragment;
import com.ifengyu.intercom.p216ui.talk.p225b3.DialogTalkAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.SessionTalkPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView;
import com.ifengyu.intercom.p216ui.widget.dialog.MyCustomTipBuilder;
import com.ifengyu.library.utils.CountDownTimer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p236f.SessionHelper;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.intercom.ui.talk.SessionTalkFragment */
/* loaded from: classes2.dex */
public class SessionTalkFragment extends BaseMvpFragment<SessionTalkView, SessionTalkPresenter> implements SessionTalkView {

    /* renamed from: A */
    private QMUITipDialog f15573A;

    /* renamed from: B */
    private QMUITipDialog f15574B;

    /* renamed from: C */
    private DialogTalkAdapter f15575C;

    /* renamed from: D */
    private GroupSessionEvent f15576D;

    /* renamed from: E */
    private CountDownTimer f15577E;

    /* renamed from: F */
    private TextView f15578F;

    /* renamed from: G */
    private QMUIDialog f15579G;
    @BindView(R.id.iv_audio_play)
    ImageView ivAudioPlay;
    @BindView(R.id.ll_hold_on_to_speak)
    LinearLayout llHoldOnToSpeak;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_top_member_list)
    RecyclerView rvTopMemberList;
    @BindView(R.id.tv_audio_content)
    TextView tvAudioContent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.SessionTalkFragment$a */
    /* loaded from: classes2.dex */
    public class C4738a extends CountDownTimer {
        C4738a(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: f */
        public void mo8685f() {
            if (SessionTalkFragment.this.f15573A == null || !SessionTalkFragment.this.f15573A.isShowing()) {
                return;
            }
            SessionTalkFragment.this.f15573A.dismiss();
            SessionTalkFragment.this.f15573A = null;
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: g */
        public void mo8684g(long j) {
            if (j <= 10) {
                SessionTalkFragment.this.f15578F.setText(UIUtils.m8602p(R.string.talk_second_timing, Long.valueOf(j)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m9440C3() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m9438E3() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m9436G3() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m9434I3(Long l) throws Exception {
        QMUITipDialog qMUITipDialog = this.f15574B;
        if (qMUITipDialog == null || !qMUITipDialog.isShowing()) {
            return;
        }
        this.f15574B.dismiss();
    }

    /* renamed from: J3 */
    private void m9433J3() {
        MyCustomTipBuilder myCustomTipBuilder = new MyCustomTipBuilder(getContext());
        myCustomTipBuilder.m8925d(R.layout.layout_center_tip_talking);
        this.f15573A = myCustomTipBuilder.m8927b(R.style.SessionTipDialogTheme);
        this.f15578F = (TextView) myCustomTipBuilder.m8926c().findViewById(R.id.bottom_prompt);
        this.f15573A.show();
        m9432K3();
    }

    /* renamed from: K3 */
    private void m9432K3() {
        if (this.f15577E == null) {
            this.f15577E = new C4738a(60L, TimeUnit.SECONDS);
        }
        this.f15577E.m8683h();
    }

    /* renamed from: k3 */
    private void m9428k3() {
        CountDownTimer countDownTimer = this.f15577E;
        if (countDownTimer != null) {
            countDownTimer.m8689b();
        }
    }

    /* renamed from: l3 */
    private void m9427l3() {
        ((SessionTalkPresenter) this.f15048z).m9253A();
        SessionHelper m8520k = SlTalkClient.m8513r().m8520k();
        m8520k.m8383d().cancel();
        m8520k.m8386a();
        m10310Z2(UIUtils.m8603o(R.string.device_dialog_talk_finished), R.drawable.load_other, new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.j2
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
            /* renamed from: a */
            public final void mo9160a() {
                SessionTalkFragment.this.m9421r3();
            }
        });
    }

    /* renamed from: m3 */
    private void m9426m3() {
        QMUITipDialog qMUITipDialog = this.f15573A;
        if (qMUITipDialog != null && qMUITipDialog.isShowing()) {
            this.f15573A.dismiss();
            this.f15573A = null;
        }
        m9428k3();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: n3 */
    private void m9425n3() {
        this.llHoldOnToSpeak.setOnTouchListener(new View.OnTouchListener() { // from class: com.ifengyu.intercom.ui.talk.i2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SessionTalkFragment.this.m9419t3(view, motionEvent);
            }
        });
    }

    /* renamed from: p3 */
    private void m9423p3() {
        QMUIStatusBarHelper.m7482l(getActivity());
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.device_dialog_talk_count, 0));
        this.mTopbar.m7343k(R.drawable.temporary_icon_end, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.l2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SessionTalkFragment.this.m9417v3(view);
            }
        });
        this.llHoldOnToSpeak.setEnabled(false);
        this.f15575C = new DialogTalkAdapter(this, R.layout.item_dialog_talk_list, ((SessionTalkPresenter) this.f15048z).m9250y());
        this.rvTopMemberList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvTopMemberList.setAdapter(this.f15575C);
        m9425n3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9421r3() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ boolean m9419t3(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                this.llHoldOnToSpeak.setSelected(false);
                this.f15576D.getGroup().releaseMic();
                EarphoneManager.m11077b().m11075d();
            }
        } else if (m10316T2("android.permission.RECORD_AUDIO")) {
            this.llHoldOnToSpeak.setSelected(true);
            if (EarphoneManager.m11077b().m11078a()) {
                C4161y.m11054a(this.f15047y, "record from earphone");
                EarphoneManager.m11077b().m11076c();
            }
            this.f15576D.getGroup().requestMic();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9417v3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m9414y3() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m9442A3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        ((SessionTalkPresenter) this.f15048z).m9253A();
        m10310Z2(UIUtils.m8603o(R.string.device_dialog_talk_finished), R.drawable.load_other, new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.f2
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
            /* renamed from: a */
            public final void mo9160a() {
                SessionTalkFragment.this.m9414y3();
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15576D = (GroupSessionEvent) bundle.getSerializable("key_session_event");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((SessionTalkPresenter) this.f15048z).m9252v();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: I */
    public void mo9188I(boolean z, String str) {
        if ((this.ivAudioPlay.getDrawable() instanceof AnimationDrawable) && ((AnimationDrawable) this.ivAudioPlay.getDrawable()).isRunning()) {
            ((AnimationDrawable) this.ivAudioPlay.getDrawable()).stop();
        }
        if (z) {
            this.ivAudioPlay.setImageDrawable(UIUtils.m8611g(R.drawable.animation_dialog_talk_audio_msg_playing));
            ((AnimationDrawable) this.ivAudioPlay.getDrawable()).start();
        } else {
            this.ivAudioPlay.setImageDrawable(UIUtils.m8611g(R.drawable.temporary_icon_talking_blue_3));
        }
        this.tvAudioContent.setText(str);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: Q0 */
    public void mo9187Q0() {
        this.llHoldOnToSpeak.setEnabled(true);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: Z0 */
    public void mo9186Z0() {
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.device_dialog_talk_count, Integer.valueOf(this.f15575C.m17070D().size())));
        this.f15575C.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: b */
    public void mo9185b() {
        if (this.f15574B == null) {
            MyCustomTipBuilder myCustomTipBuilder = new MyCustomTipBuilder(getContext());
            myCustomTipBuilder.m8925d(R.layout.layout_talk_busying);
            this.f15574B = myCustomTipBuilder.m8927b(R.style.SessionTipDialogTheme);
        }
        this.f15574B.show();
        ((ObservableSubscribeProxy) Observable.timer(1500L, TimeUnit.MILLISECONDS).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5996a(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.g2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SessionTalkFragment.this.m9434I3((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        if (this.f15579G == null) {
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
            messageDialogBuilder.m7248E(R.string.device_quit_dialog_talk_prompt);
            messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4817k2.f15752a);
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7300b(0, R.string.device_quit_dialog_talk, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.talk.m2
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    SessionTalkFragment.this.m9442A3(qMUIDialog, i);
                }
            });
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7285u(false);
            this.f15579G = messageDialogBuilder3.m7296f(R.style.DialogTheme1);
        }
        if (this.f15579G.isShowing()) {
            return;
        }
        this.f15579G.show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_session_talk, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9423p3();
        EventBus.m174c().m159r(this);
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: f */
    public void mo9184f() {
        m9426m3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: g0 */
    public void mo9183g0() {
        m10310Z2(UIUtils.m8603o(R.string.device_dialog_talk_finished), R.drawable.load_other, new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.d2
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
            /* renamed from: a */
            public final void mo9160a() {
                SessionTalkFragment.this.m9438E3();
            }
        });
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void getStickyEvent(NetEvent netEvent) {
        if (!(netEvent instanceof NetEvent) || netEvent.isNet()) {
            return;
        }
        m9427l3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: k */
    public void mo9182k() {
        m10310Z2(UIUtils.m8603o(R.string.device_dialog_talk_timeout), R.drawable.load_other, new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.e2
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
            /* renamed from: a */
            public final void mo9160a() {
                SessionTalkFragment.this.m9436G3();
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: l */
    public void mo9181l() {
        m9433J3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: o3 */
    public SessionTalkPresenter mo9397g3() {
        return new SessionTalkPresenter(getContext(), this.f15576D);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        QMUIStatusBarHelper.m7481m(getActivity());
        EventBus.m174c().m156u(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.llHoldOnToSpeak.isSelected()) {
            this.llHoldOnToSpeak.setSelected(false);
            this.f15576D.getGroup().releaseMic();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15576D == null);
        sb.append("");
        C4161y.m11054a("sessionEvent", sb.toString());
        GroupSessionEvent groupSessionEvent = this.f15576D;
        if (groupSessionEvent == null) {
            m10310Z2(UIUtils.m8603o(R.string.device_dialog_talk_finished), R.drawable.load_other, new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.h2
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    SessionTalkFragment.this.m9440C3();
                }
            });
            return;
        }
        int allMemberCount = groupSessionEvent.getGroup().getAllMemberCount();
        C4161y.m11054a("sessionEvent", "allMemberCount:" + allMemberCount);
        if (allMemberCount <= 1) {
            m9427l3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView
    /* renamed from: u0 */
    public void mo9180u0() {
        this.llHoldOnToSpeak.setEnabled(false);
    }
}
