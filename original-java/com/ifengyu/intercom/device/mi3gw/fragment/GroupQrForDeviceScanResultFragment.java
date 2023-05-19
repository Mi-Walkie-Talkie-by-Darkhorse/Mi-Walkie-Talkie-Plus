package com.ifengyu.intercom.device.mi3gw.fragment;

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
import com.ifengyu.intercom.device.mi3gw.fragment.GroupQrForDeviceScanResultFragment;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.tencent.open.SocialConstants;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class GroupQrForDeviceScanResultFragment extends BaseFragment {

    /* renamed from: A */
    private boolean f12610A;

    /* renamed from: B */
    private TempGroup f12611B;

    /* renamed from: C */
    private TempGroup f12612C;

    /* renamed from: D */
    private NineGridImageViewAdapter f12613D;
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
    private QRContentEntity f12614z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.GroupQrForDeviceScanResultFragment$a */
    /* loaded from: classes2.dex */
    public class C3408a extends ErrorConsumer {
        C3408a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m13478d() {
            GroupQrForDeviceScanResultFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) GroupQrForDeviceScanResultFragment.this).f15047y, "queryGroupWithMembers fail");
            newApiException.printStackTrace();
            GroupQrForDeviceScanResultFragment.this.m10309a3(NewHttpHelper.m8714a(newApiException.m8703a()), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.o1
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    GroupQrForDeviceScanResultFragment.C3408a.this.m13478d();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.GroupQrForDeviceScanResultFragment$b */
    /* loaded from: classes2.dex */
    public class C3409b extends ErrorConsumer {
        C3409b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) GroupQrForDeviceScanResultFragment.this).f15047y, "deviceApplyJoinGroup fail");
            newApiException.printStackTrace();
            GroupQrForDeviceScanResultFragment.this.m10312X2(R.string.apply_msg_send_fail);
        }
    }

    /* renamed from: A3 */
    public static GroupQrForDeviceScanResultFragment m13501A3(QRContentEntity qRContentEntity) {
        GroupQrForDeviceScanResultFragment groupQrForDeviceScanResultFragment = new GroupQrForDeviceScanResultFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("key_qr_entity", qRContentEntity);
        groupQrForDeviceScanResultFragment.setArguments(bundle);
        return groupQrForDeviceScanResultFragment;
    }

    /* renamed from: B3 */
    private void m13500B3() {
        this.btn_bottom.setVisibility(0);
        if (this.f12610A) {
            this.ngivGroupAvatar.setImagesData(SlTalkClient.m8519l(this.f12611B));
            this.tvName.setText(SlTalkClient.m8527d(this.f12611B));
            this.tvIdOrCount.setText(UIUtils.m8602p(R.string.qr_this_group_count, Integer.valueOf(this.f12611B.getUserCount())));
            this.btn_bottom.setText(R.string.apply_to_join_group);
            return;
        }
        this.ngivGroupAvatar.setImagesData(SlTalkClient.m8519l(this.f12612C));
        this.tvName.setText(SlTalkClient.m8527d(this.f12612C));
        this.tvIdOrCount.setText(UIUtils.m8602p(R.string.qr_this_group_count, Integer.valueOf(this.f12612C.getUserList().size())));
        this.btn_bottom.setText(R.string.apply_to_join_group);
    }

    /* renamed from: l3 */
    private void m13494l3() {
        if (this.f12612C == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(this.f12612C.getGid()));
        hashMap.put("gidList", arrayList);
        hashMap.put("initiator", DeviceDataShare.m13732s().m13748k());
        hashMap.put(SocialConstants.PARAM_RECEIVER, Long.valueOf(this.f12614z.getUid()));
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11402E(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.t1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrForDeviceScanResultFragment.this.m13490p3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.r1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrForDeviceScanResultFragment.this.m13488r3((NewHttpResult) obj);
            }
        }, new C3409b());
    }

    /* renamed from: m3 */
    private void m13493m3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7336r(false);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupQrForDeviceScanResultFragment.this.m13482x3(view);
            }
        });
        this.btn_bottom.setChangeAlphaWhenPress(true);
        this.btn_bottom.setVisibility(8);
        this.rlBottomShadow.setRadiusAndShadow(UIUtils.m8616b(BitmapDescriptorFactory.HUE_RED), UIUtils.m8616b(5.0f), 0.15f);
        NineGridImageViewAdapter nineGridImageViewAdapter = new NineGridImageViewAdapter(this);
        this.f12613D = nineGridImageViewAdapter;
        this.ngivGroupAvatar.setAdapter(nineGridImageViewAdapter);
        this.btn_bottom.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.u1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupQrForDeviceScanResultFragment.this.m13480z3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13490p3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m13488r3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "deviceApplyJoinGroup success");
        m10304f3(UIUtils.m8603o(R.string.apply_msg_send_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.n1
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                GroupQrForDeviceScanResultFragment.this.mo8048o2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m13486t3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m13484v3(TempGroup tempGroup) throws Exception {
        C4161y.m11049f(this.f15047y, "queryGroupWithMembers success");
        m10329C2();
        this.f12612C = tempGroup;
        m13500B3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m13482x3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m13480z3(View view) {
        if (this.f12610A) {
            UIUtils.m8593y(R.string.device_had_in_this_group);
        } else {
            m13494l3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12614z = (QRContentEntity) bundle.getParcelable("key_qr_entity");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        TempGroup m13746l = DeviceDataShare.m13732s().m13746l(this.f12614z.getCid());
        if (m13746l != null) {
            this.f12610A = true;
            this.f12611B = m13746l;
            m13500B3();
            return;
        }
        this.f12610A = false;
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11356z(String.valueOf(this.f12614z.getCid()), 1).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.q1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrForDeviceScanResultFragment.this.m13486t3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.s1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupQrForDeviceScanResultFragment.this.m13484v3((TempGroup) obj);
            }
        }, new C3408a());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_qr_result, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13493m3();
        return inflate;
    }
}
