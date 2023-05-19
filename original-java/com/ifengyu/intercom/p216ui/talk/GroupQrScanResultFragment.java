package com.ifengyu.intercom.p216ui.talk;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.QRContentEntity;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.GroupQrScanResultFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.p238h.OnResultListener;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupQrScanResultFragment */
/* loaded from: classes2.dex */
public class GroupQrScanResultFragment extends BaseFragment implements OnResultListener {

    /* renamed from: A */
    private boolean f15537A;

    /* renamed from: B */
    private Group f15538B;

    /* renamed from: C */
    private TempGroup f15539C;

    /* renamed from: D */
    private NineGridImageViewAdapter f15540D;
    @BindView(R.id.btn_bottom)
    QMUIRoundButton btn_bottom;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.ngiv_group_avatar)
    NineGridImageView ngivGroupAvatar;
    @BindView(R.id.rl_bottom_shadow)
    QMUILinearLayout rlBottomShadow;
    @BindView(R.id.tv_id_or_count)
    TextView tvIdOrCount;
    @BindView(R.id.tv_name)
    TextView tvName;

    /* renamed from: z */
    private QRContentEntity f15541z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.GroupQrScanResultFragment$a */
    /* loaded from: classes2.dex */
    public class C4731a extends ErrorConsumer {
        C4731a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m9548d() {
            GroupQrScanResultFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) GroupQrScanResultFragment.this).f15047y, "queryGroupWithMembers fail");
            newApiException.printStackTrace();
            GroupQrScanResultFragment.this.m10309a3(NewHttpHelper.m8714a(newApiException.m8703a()), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.s0
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    GroupQrScanResultFragment.C4731a.this.m9548d();
                }
            });
        }
    }

    /* renamed from: j3 */
    private void m9562j3() {
        if (this.f15539C == null || SlTalkClient.m8513r().m8525f().m8431a(this.f15541z.getCid(), String.valueOf(this.f15541z.getUid()))) {
            return;
        }
        m10312X2(R.string.apply_msg_send_fail);
    }

    /* renamed from: k3 */
    private void m9561k3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7336r(false);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupQrScanResultFragment.this.m9554r3(view);
            }
        });
        this.btn_bottom.setChangeAlphaWhenPress(true);
        this.btn_bottom.setVisibility(8);
        this.rlBottomShadow.setRadiusAndShadow(UIUtils.m8616b(BitmapDescriptorFactory.HUE_RED), UIUtils.m8616b(5.0f), 0.15f);
        NineGridImageViewAdapter nineGridImageViewAdapter = new NineGridImageViewAdapter(this);
        this.f15540D = nineGridImageViewAdapter;
        this.ngivGroupAvatar.setAdapter(nineGridImageViewAdapter);
        this.btn_bottom.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupQrScanResultFragment.this.m9552t3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m9558n3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9556p3(TempGroup tempGroup) throws Exception {
        String str = this.f15047y;
        C4161y.m11049f(str, "queryGroupWithMembers success myGroup:" + tempGroup);
        m10329C2();
        this.f15539C = tempGroup;
        m9550v3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9554r3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9552t3(View view) {
        if (this.f15537A) {
            TalkActivity.m9412N(getContext(), this.f15538B);
        } else {
            m9562j3();
        }
    }

    /* renamed from: u3 */
    public static GroupQrScanResultFragment m9551u3(QRContentEntity qRContentEntity) {
        GroupQrScanResultFragment groupQrScanResultFragment = new GroupQrScanResultFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("key_qr_entity", qRContentEntity);
        groupQrScanResultFragment.setArguments(bundle);
        return groupQrScanResultFragment;
    }

    /* renamed from: v3 */
    private void m9550v3() {
        this.btn_bottom.setVisibility(0);
        if (this.f15537A) {
            this.ngivGroupAvatar.setImagesData(SlTalkClient.m8528c(this.f15538B));
            this.tvName.setText(SlTalkClient.m8526e(this.f15538B));
            this.tvIdOrCount.setText(UIUtils.m8602p(R.string.qr_this_group_count, Integer.valueOf(this.f15538B.getAllMemberCount())));
            this.btn_bottom.setText(R.string.enter_group);
            return;
        }
        this.ngivGroupAvatar.setImagesData(SlTalkClient.m8519l(this.f15539C));
        this.tvName.setText(SlTalkClient.m8527d(this.f15539C));
        this.tvIdOrCount.setText(UIUtils.m8602p(R.string.qr_this_group_count, Integer.valueOf(this.f15539C.getUserList().size())));
        this.btn_bottom.setText(R.string.apply_to_join_group);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15541z = (QRContentEntity) bundle.getParcelable("key_qr_entity");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(this.f15541z.getCid());
        if (m8429c != null) {
            this.f15537A = true;
            this.f15538B = m8429c;
            m9550v3();
            return;
        }
        this.f15537A = false;
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11356z(String.valueOf(this.f15541z.getCid()), 1).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.v0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrScanResultFragment.this.m9558n3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.t0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrScanResultFragment.this.m9556p3((TempGroup) obj);
            }
        }, new C4731a());
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (this.f15537A || requestResultEvent.getRequest() != ETStatusCode.Request.ET_RR_JoinGroupAck) {
            return;
        }
        if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
            m10304f3(UIUtils.m8603o(R.string.apply_msg_send_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.u0
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
                /* renamed from: a */
                public final void mo9105a() {
                    GroupQrScanResultFragment.this.mo8048o2();
                }
            });
        } else if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.LIMIT_U_G) {
            m10312X2(R.string.group_count_upper_limit);
        } else if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.LIMIT_G_U) {
            m10312X2(R.string.group_member_count_upper_limit);
        } else {
            m10312X2(R.string.apply_msg_send_fail);
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8521j().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_qr_result, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9561k3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }
}
