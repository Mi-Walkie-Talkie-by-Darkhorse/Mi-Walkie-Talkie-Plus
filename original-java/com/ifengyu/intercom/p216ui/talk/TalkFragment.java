package com.ifengyu.intercom.p216ui.talk;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemChildClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.EarphoneManager;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.UserInfoActivity;
import com.ifengyu.intercom.p216ui.base.BaseMvpFragment;
import com.ifengyu.intercom.p216ui.talk.entity.TalkMessagesAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.TalkMessagesAdapter;
import com.ifengyu.intercom.p216ui.talk.p225b3.TalkTopOnlineAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.TalkPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.TalkView;
import com.ifengyu.intercom.p216ui.widget.dialog.MyCustomTipBuilder;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.CountDownTimer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.shanlitech.p245et.core.p249c.PocHistoryManager;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.User;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* renamed from: com.ifengyu.intercom.ui.talk.TalkFragment */
/* loaded from: classes2.dex */
public class TalkFragment extends BaseMvpFragment<TalkView, TalkPresenter> implements TalkView {

    /* renamed from: A */
    private TextView f15582A;

    /* renamed from: B */
    private TextView f15583B;

    /* renamed from: C */
    private ImageView f15584C;

    /* renamed from: D */
    private View f15585D;

    /* renamed from: E */
    private View f15586E;

    /* renamed from: F */
    private ProgressBar f15587F;

    /* renamed from: G */
    private QMUITipDialog f15588G;

    /* renamed from: H */
    private QMUITipDialog f15589H;

    /* renamed from: I */
    private TalkMessagesAdapter f15590I;

    /* renamed from: J */
    private boolean f15591J;

    /* renamed from: K */
    private TalkTopOnlineAdapter f15592K;

    /* renamed from: L */
    private Group f15593L;

    /* renamed from: M */
    private TempGroup f15594M;

    /* renamed from: N */
    private CountDownTimer f15595N;

    /* renamed from: O */
    private TextView f15596O;

    /* renamed from: P */
    private QMUIAlphaImageButton f15597P;
    @BindView(R.id.iv_talk_temporary)
    ImageView ivTalkTemporary;
    @BindView(R.id.ll_hold_on_to_speak)
    LinearLayout llHoldOnToSpeak;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvList;
    @BindView(R.id.rv_top_online_list)
    RecyclerView rvTopOnlineList;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.TalkFragment$a */
    /* loaded from: classes2.dex */
    public class C4739a extends RecyclerView.AbstractC0837p {
        C4739a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0837p
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                if ((layoutManager instanceof LinearLayoutManager) && ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() == 0) {
                    TalkFragment.this.m9400K3();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0837p
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.TalkFragment$b */
    /* loaded from: classes2.dex */
    public class C4740b extends CountDownTimer {
        C4740b(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: f */
        public void mo8685f() {
            if (TalkFragment.this.f15588G == null || !TalkFragment.this.f15588G.isShowing()) {
                return;
            }
            TalkFragment.this.f15588G.dismiss();
            TalkFragment.this.f15588G = null;
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: g */
        public void mo8684g(long j) {
            if (j <= 10) {
                TalkFragment.this.f15596O.setText(UIUtils.m8602p(R.string.talk_second_timing, Long.valueOf(j)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9409B3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9407D3(View view) {
        m8041v2(GroupDetailFragment.m9617D3(this.f15593L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9405F3() {
        ((TalkPresenter) this.f15048z).m9224s0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9403H3(Long l) throws Exception {
        QMUITipDialog qMUITipDialog = this.f15589H;
        if (qMUITipDialog == null || !qMUITipDialog.isShowing()) {
            return;
        }
        this.f15589H.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9401J3(DialogInterface dialogInterface) {
        m9392l3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public void m9400K3() {
        if (this.f15591J || this.f15586E.getVisibility() != 0) {
            return;
        }
        this.f15591J = true;
        this.f15585D.setVisibility(8);
        this.f15586E.setVisibility(8);
        this.f15587F.setVisibility(0);
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.talk.p2
            @Override // java.lang.Runnable
            public final void run() {
                TalkFragment.this.m9405F3();
            }
        }, 100L);
    }

    /* renamed from: L3 */
    private void m9399L3() {
        MyCustomTipBuilder myCustomTipBuilder = new MyCustomTipBuilder(getContext());
        myCustomTipBuilder.m8925d(R.layout.layout_center_tip_talking);
        this.f15588G = myCustomTipBuilder.m8928a();
        this.f15596O = (TextView) myCustomTipBuilder.m8926c().findViewById(R.id.bottom_prompt);
        this.f15588G.show();
        m9398M3();
        this.f15588G.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.ifengyu.intercom.ui.talk.v2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                TalkFragment.this.m9401J3(dialogInterface);
            }
        });
    }

    /* renamed from: M3 */
    private void m9398M3() {
        if (this.f15595N == null) {
            this.f15595N = new C4740b(60L, TimeUnit.SECONDS);
        }
        this.f15595N.m8683h();
    }

    /* renamed from: l3 */
    private void m9392l3() {
        CountDownTimer countDownTimer = this.f15595N;
        if (countDownTimer != null) {
            countDownTimer.m8689b();
        }
    }

    /* renamed from: m3 */
    private View m9391m3() {
        View inflate = getLayoutInflater().inflate(R.layout.layout_talk_fragment_title, (ViewGroup) null, false);
        this.f15582A = (TextView) inflate.findViewById(R.id.title);
        this.f15583B = (TextView) inflate.findViewById(R.id.subTitle);
        this.f15584C = (ImageView) inflate.findViewById(R.id.arrow);
        Group group = this.f15593L;
        if (group != null) {
            this.f15582A.setText(SlTalkClient.m8526e(group));
        } else {
            TempGroup tempGroup = this.f15594M;
            if (tempGroup != null) {
                this.f15582A.setText(SlTalkClient.m8527d(tempGroup));
            }
        }
        this.f15583B.setText(UIUtils.m8602p(R.string.group_online_count_s, 0));
        this.f15584C.setImageResource(R.drawable.arrow_icon_down_gray);
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.t2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TalkFragment.this.m9384t3(view);
            }
        });
        return inflate;
    }

    /* renamed from: n3 */
    private void m9390n3() {
        QMUITipDialog qMUITipDialog = this.f15588G;
        if (qMUITipDialog == null || !qMUITipDialog.isShowing()) {
            return;
        }
        this.f15588G.dismiss();
        this.f15588G = null;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: o3 */
    private void m9389o3() {
        this.ivTalkTemporary.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.o2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TalkFragment.this.m9382v3(view);
            }
        });
        this.llHoldOnToSpeak.setOnTouchListener(new View.OnTouchListener() { // from class: com.ifengyu.intercom.ui.talk.r2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return TalkFragment.this.m9380x3(view, motionEvent);
            }
        });
        this.f15590I.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.ifengyu.intercom.ui.talk.n2
            @Override // com.chad.library.adapter.base.p115l.OnItemChildClickListener
            /* renamed from: a */
            public final void mo9159a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TalkFragment.this.m9378z3(baseQuickAdapter, view, i);
            }
        });
        this.rvList.addOnScrollListener(new C4739a());
    }

    /* renamed from: p3 */
    private View m9388p3() {
        View inflate = getLayoutInflater().inflate(R.layout.item_talk_msg_load_more_header, (ViewGroup) this.rvList.getParent(), false);
        this.f15585D = inflate.findViewById(R.id.tv_nothing_msg_can_load);
        this.f15586E = inflate.findViewById(R.id.tv_load_more_msg);
        this.f15587F = (ProgressBar) inflate.findViewById(R.id.pb_loading);
        return inflate;
    }

    /* renamed from: r3 */
    private void m9386r3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7336r(false);
        this.mTopbar.setCenterView(m9391m3());
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.u2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TalkFragment.this.m9409B3(view);
            }
        });
        if (this.f15593L != null) {
            QMUIAlphaImageButton m7340n = this.mTopbar.m7340n(R.drawable.group_icon_details, QMUIViewHelper.m7473b());
            this.f15597P = m7340n;
            m7340n.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.q2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TalkFragment.this.m9407D3(view);
                }
            });
        }
        P p = this.f15048z;
        TalkMessagesAdapter talkMessagesAdapter = new TalkMessagesAdapter(this, (TalkPresenter) p, ((TalkPresenter) p).m9242O());
        this.f15590I = talkMessagesAdapter;
        talkMessagesAdapter.m17027m(m9388p3(), 0);
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvList.setAdapter(this.f15590I);
        this.f15592K = new TalkTopOnlineAdapter(this, R.layout.item_talk_top_online_list, ((TalkPresenter) this.f15048z).m9241Q());
        this.rvTopOnlineList.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.rvTopOnlineList.setAdapter(this.f15592K);
        m9389o3();
        mo9179I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9384t3(View view) {
        if (this.rvTopOnlineList.getVisibility() == 8) {
            this.rvTopOnlineList.setVisibility(0);
            this.f15584C.setImageResource(R.drawable.arrow_icon_up_gray);
        } else if (this.rvTopOnlineList.getVisibility() == 0) {
            this.rvTopOnlineList.setVisibility(8);
            this.f15584C.setImageResource(R.drawable.arrow_icon_down_gray);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9382v3(View view) {
        Group group = this.f15593L;
        if (group != null) {
            m8041v2(SessionGroupSelectFragment.m9457O3(group));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ boolean m9380x3(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                this.llHoldOnToSpeak.setSelected(false);
                Group group = this.f15593L;
                if (group != null) {
                    group.releaseMic();
                    EarphoneManager.m11077b().m11075d();
                }
            }
        } else if (m10316T2("android.permission.RECORD_AUDIO")) {
            this.llHoldOnToSpeak.setSelected(true);
            if (this.f15593L != null) {
                PocHistoryManager.m6602d().m6599g();
                if (EarphoneManager.m11077b().m11078a()) {
                    C4161y.m11054a(this.f15047y, "record from earphone");
                    EarphoneManager.m11077b().m11076c();
                }
                this.f15593L.requestMic();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m9378z3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_member_avatar) {
            Object m9243N = ((TalkPresenter) this.f15048z).m9243N(this.f15590I.m17070D().get(i).getAudioUid());
            if (m9243N instanceof Member) {
                UserInfoActivity.m10426N(getContext(), ((Member) m9243N).getUser(), 3);
            } else if (m9243N instanceof User) {
                UserInfoActivity.m10426N(getContext(), (User) m9243N, 3);
            }
        } else if (view.getId() == R.id.layout_other_audio || view.getId() == R.id.layout_self_audio) {
            TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = this.f15590I.m17070D().get(i);
            if (talkMessagesAdapterMultipleEntity.getAudioState() != 3) {
                ((TalkPresenter) this.f15048z).m9217y0(talkMessagesAdapterMultipleEntity);
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15593L = (Group) bundle.getSerializable("key_group");
            this.f15594M = (TempGroup) bundle.getParcelable("key_group_temp");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((TalkPresenter) this.f15048z).m9225r0();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: I0 */
    public void mo9179I0() {
        m9390n3();
        this.llHoldOnToSpeak.setEnabled(false);
        QMUIAlphaImageButton qMUIAlphaImageButton = this.f15597P;
        if (qMUIAlphaImageButton != null) {
            qMUIAlphaImageButton.setVisibility(8);
        }
        this.f15583B.setText(UIUtils.m8602p(R.string.group_online_count_s, 0));
        this.ivTalkTemporary.setClickable(false);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: K0 */
    public void mo9178K0() {
        this.llHoldOnToSpeak.setEnabled(true);
        QMUIAlphaImageButton qMUIAlphaImageButton = this.f15597P;
        if (qMUIAlphaImageButton != null) {
            qMUIAlphaImageButton.setVisibility(0);
        }
        this.ivTalkTemporary.setClickable(true);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: N */
    public void mo9177N() {
        m10312X2(R.string.speech_play_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: R */
    public void mo9176R() {
        this.f15583B.setText(UIUtils.m8602p(R.string.group_online_count_s, Integer.valueOf(this.f15592K.m17070D().size())));
        this.f15592K.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: U */
    public void mo9175U() {
        m10308b3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: Y0 */
    public void mo9174Y0() {
        this.f15590I.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: b */
    public void mo9173b() {
        if (this.f15589H == null) {
            MyCustomTipBuilder myCustomTipBuilder = new MyCustomTipBuilder(getContext());
            myCustomTipBuilder.m8925d(R.layout.layout_talk_busying);
            this.f15589H = myCustomTipBuilder.m8928a();
        }
        this.f15589H.show();
        ((ObservableSubscribeProxy) Observable.timer(1500L, TimeUnit.MILLISECONDS).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5996a(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.s2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TalkFragment.this.m9403H3((Long) obj);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: b0 */
    public void mo9172b0() {
        m10312X2(R.string.speech_download_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: c */
    public void mo9171c(Group group) {
        this.f15593L = group;
        this.f15582A.setText(SlTalkClient.m8526e(group));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        MainActivity.start(getContext());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_talk, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9386r3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: f */
    public void mo9170f() {
        m9390n3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: h0 */
    public void mo9169h0() {
        if (SlTalkClient.m8513r().m8522i().f16615d != null) {
            ((TalkPresenter) this.f15048z).mo8360d(SlTalkClient.m8513r().m8522i().f16615d);
        }
        this.f15590I.notifyDataSetChanged();
        this.rvList.scrollToPosition(this.f15590I.getItemCount() - 1);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: l */
    public void mo9168l() {
        m9399L3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: m1 */
    public void mo9167m1() {
        this.f15585D.setVisibility(0);
        this.f15586E.setVisibility(8);
        this.f15587F.setVisibility(8);
        this.f15591J = false;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.llHoldOnToSpeak.isSelected()) {
            this.llHoldOnToSpeak.setSelected(false);
            Group group = this.f15593L;
            if (group != null) {
                group.releaseMic();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ((TalkPresenter) this.f15048z).m9240R();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: q */
    public void mo9166q() {
        this.f15590I.notifyDataSetChanged();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.rvList.getLayoutManager();
        if (linearLayoutManager != null) {
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            int itemCount = this.f15590I.getItemCount() - 1;
            if (findLastVisibleItemPosition == itemCount || findLastVisibleItemPosition == itemCount - 1) {
                this.rvList.scrollToPosition(itemCount);
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: q0 */
    public void mo9165q0(List<TalkMessagesAdapterMultipleEntity> list) {
        this.f15590I.notifyDataSetChanged();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.rvList.getLayoutManager();
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(list.size() + this.f15590I.m17063K(), UIUtils.m8616b(35.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: q3 */
    public TalkPresenter mo9397g3() {
        return new TalkPresenter(getContext(), this.f15593L, this.f15594M);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: r0 */
    public void mo9164r0() {
        this.f15585D.setVisibility(8);
        this.f15586E.setVisibility(0);
        this.f15587F.setVisibility(8);
        this.f15591J = false;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: v1 */
    public void mo9163v1() {
        m10329C2();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.TalkView
    /* renamed from: w */
    public void mo9162w() {
        this.f15585D.setVisibility(8);
        this.f15586E.setVisibility(8);
        this.f15587F.setVisibility(8);
        this.f15591J = false;
    }
}
