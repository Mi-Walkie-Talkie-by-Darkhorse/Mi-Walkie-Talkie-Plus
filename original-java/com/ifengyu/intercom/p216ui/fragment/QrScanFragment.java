package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.gson.Gson;
import com.huawei.hms.hmsscankit.OnResultCallback;
import com.huawei.hms.hmsscankit.RemoteView;
import com.huawei.hms.hmsscankit.ScanUtil;
import com.huawei.hms.p147ml.scan.HmsScan;
import com.huawei.hms.p147ml.scan.HmsScanAnalyzerOptions;
import com.ifengyu.intercom.AppData;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.QRConstants;
import com.ifengyu.intercom.bean.QRContentEntity;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.mi3gw.Mi3GWDetailActivity;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.QrScanFragment;
import com.ifengyu.intercom.p216ui.talk.GroupQrScanResultFragment;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.EncoderUtil;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.arch.QMUIFragment;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.zhihu.matisse.Matisse;
import com.zhihu.matisse.MimeType;
import com.zhihu.matisse.SelectionCreator;
import com.zhihu.matisse.p276b.p277b.GlideEngine;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.fragment.QrScanFragment */
/* loaded from: classes2.dex */
public class QrScanFragment extends BaseFragment {

    /* renamed from: A */
    private RemoteView f15159A;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rim)
    FrameLayout rimFrameLayout;
    @BindView(R.id.scan_area)
    ImageView scanArea;

    /* renamed from: z */
    private final int f15160z = UIUtils.m8616b(240.0f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.QrScanFragment$a */
    /* loaded from: classes2.dex */
    public class C4488a extends ErrorConsumer {
        C4488a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m10041d() {
            QrScanFragment.this.mo8048o2();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m10039f() {
            QrScanFragment.this.mo8048o2();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m10037h() {
            QrScanFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) QrScanFragment.this).f15047y, "bindMi3GwDevice fail");
            if (newApiException.m8703a() == 10080) {
                QrScanFragment.this.m10309a3(UIUtils.m8603o(R.string.ble_bind_device_fail_bind_by_other), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.fragment.n0
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        QrScanFragment.C4488a.this.m10041d();
                    }
                });
            } else if (newApiException.m8703a() == 10070) {
                QrScanFragment.this.m10309a3(UIUtils.m8603o(R.string.ble_bind_device_fail_qr_expire), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.fragment.p0
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        QrScanFragment.C4488a.this.m10039f();
                    }
                });
            } else {
                QrScanFragment.this.m10309a3(UIUtils.m8603o(R.string.device_bind_fail), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.fragment.o0
                    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                    /* renamed from: a */
                    public final void mo9160a() {
                        QrScanFragment.C4488a.this.m10037h();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A3 */
    public static /* synthetic */ DeviceModel m10085A3(NetDeviceModel netDeviceModel) throws Exception {
        DeviceModel deviceModel = new DeviceModel();
        deviceModel.setName(netDeviceModel.getNickname());
        deviceModel.setAddress(netDeviceModel.getSn());
        deviceModel.setDeviceId(netDeviceModel.getSn());
        deviceModel.setDeviceType(13);
        deviceModel.setDeviceColor(netDeviceModel.getColor());
        deviceModel.setCreateTime(netDeviceModel.getBindTime());
        deviceModel.setUpdateTime(netDeviceModel.getBindTime());
        deviceModel.setNetDeviceModel(netDeviceModel);
        AppDatabase.m14276F().mo14270E().mo14235j(deviceModel);
        AppDatabase.m14276F().mo14269H().mo14227d(netDeviceModel);
        return deviceModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m10080F3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m10078H3(View view) {
        m10316T2("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m10075K3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ HmsScan[] m10073M3(Uri uri, Long l) throws Exception {
        return ScanUtil.decodeWithBitmap(getContext(), MediaStore.Images.Media.getBitmap(getContext().getContentResolver(), uri), new HmsScanAnalyzerOptions.Creator().setPhotoMode(true).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public /* synthetic */ void m10071O3(HmsScan[] hmsScanArr) throws Exception {
        m10329C2();
        m10083C3(hmsScanArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P3 */
    public /* synthetic */ void m10069Q3(Throwable th) throws Exception {
        th.printStackTrace();
        m10329C2();
        m10065U3();
    }

    /* renamed from: R3 */
    public static QrScanFragment m10068R3() {
        return new QrScanFragment();
    }

    /* renamed from: r3 */
    private void m10051r3(String str) {
        if (str.startsWith(QRConstants.OLD_APP_CREATE_QR_HEADER)) {
            m10053p3(str);
            return;
        }
        boolean m12433e = AppData.m12436b().m12433e();
        if (!str.startsWith(QRConstants.APP_QR_URL_BASE) && (!m12433e || !str.startsWith(QRConstants.APP_QR_URL_BEEBEST))) {
            m10065U3();
            return;
        }
        try {
            Uri parse = Uri.parse(str);
            mo10066T3(parse, parse.getQueryParameterNames());
        } catch (Exception e) {
            e.printStackTrace();
            m10065U3();
        }
    }

    /* renamed from: t3 */
    private void m10049t3() {
        QMUIStatusBarHelper.m7482l(getActivity());
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7336r(false);
        this.mTopbar.m7343k(R.drawable.icon_back_white, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QrScanFragment.this.m10080F3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.qr_to_scan_from_album, QMUIViewHelper.m7473b());
        m7339o.setTextColor(AppCompatResources.m26123c(getContext(), R.color.white));
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QrScanFragment.this.m10078H3(view);
            }
        });
        this.rimFrameLayout.addView(this.f15159A, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m10047v3(DeviceModel deviceModel) {
        Mi3GWDetailActivity.m13824N(getContext(), deviceModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m10045x3(final DeviceModel deviceModel) throws Exception {
        C4161y.m11049f(this.f15047y, "bindMi3GwDevice success");
        BaseApp.m8713a().postDelayed(RunnableC4559t0.f15260a, 1500L);
        m10304f3(UIUtils.m8603o(R.string.device_bind_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.fragment.q0
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                QrScanFragment.this.m10047v3(deviceModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m10043z3(Disposable disposable) throws Exception {
        m10307c3(false, UIUtils.m8603o(R.string.device_bind_ing));
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m10064V3();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: R2 */
    protected void mo9610R2() {
        SelectionCreator m1023a = Matisse.m1020d(this).m1023a(MimeType.m1033g());
        m1023a.m1026e(true);
        m1023a.m1030a(false);
        m1023a.m1027d(1);
        m1023a.m1024g(0.85f);
        m1023a.m1025f(2131886372);
        m1023a.m1028c(new GlideEngine());
        m1023a.m1029b(2);
    }

    /* renamed from: S3 */
    public void m10082D3(HmsScan[] hmsScanArr) {
        m10063W3();
        if (hmsScanArr != null && hmsScanArr.length > 0 && hmsScanArr[0] != null && !TextUtils.isEmpty(hmsScanArr[0].getOriginalValue())) {
            m10051r3(hmsScanArr[0].getOriginalValue());
        } else {
            m10065U3();
        }
    }

    /* renamed from: T3 */
    protected void mo10066T3(Uri uri, Set<String> set) {
        String queryParameter = uri.getQueryParameter(QRConstants.PARAMETER_NAME_TYPE);
        if (set.size() != 1 && !"3".equals(queryParameter)) {
            if ("1".equals(queryParameter)) {
                m10054o3(uri.getQueryParameter("content"));
                return;
            } else {
                m10065U3();
                return;
            }
        }
        m10055n3(uri.getQueryParameter(QRConstants.PARAMETER_NAME_UUID));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: U3 */
    public void m10065U3() {
        m10309a3(UIUtils.m8603o(R.string.qr_scan_qr_is_not_match), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.fragment.b1
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
            /* renamed from: a */
            public final void mo9160a() {
                QrScanFragment.this.mo8048o2();
            }
        });
    }

    /* renamed from: V3 */
    protected void m10064V3() {
        this.f15159A.onStart();
    }

    /* renamed from: W3 */
    protected void m10063W3() {
        this.f15159A.onStop();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_qr_scan, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10049t3();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: n3 */
    public void m10055n3(String str) {
        if (TextUtils.isEmpty(str)) {
            m10065U3();
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(QRConstants.PARAMETER_NAME_UUID, str);
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11361u(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.c1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                QrScanFragment.this.m10043z3((Disposable) obj);
            }
        }).map(C4623u0.f15367a).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.w0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                QrScanFragment.this.m10045x3((DeviceModel) obj);
            }
        }, new C4488a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o3 */
    public void m10054o3(String str) {
        if (TextUtils.isEmpty(str)) {
            m10065U3();
            return;
        }
        String m8675a = EncoderUtil.m8675a(str);
        mo8048o2();
        m8041v2(mo10052q3((QRContentEntity) new Gson().fromJson(m8675a, (Class<Object>) QRContentEntity.class)));
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i2 == -1 && i == 2) {
            if (intent == null) {
                UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
                return;
            }
            List<Uri> m1017g = Matisse.m1017g(intent);
            if (m1017g != null && m1017g.size() != 0) {
                final Uri uri = m1017g.get(0);
                ((ObservableSubscribeProxy) Observable.timer(500L, TimeUnit.MILLISECONDS).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.v0
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        QrScanFragment.this.m10075K3((Disposable) obj);
                    }
                }).map(new Function() { // from class: com.ifengyu.intercom.ui.fragment.a1
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        return QrScanFragment.this.m10073M3(uri, (Long) obj);
                    }
                }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.z0
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        QrScanFragment.this.m10071O3((HmsScan[]) obj);
                    }
                }, new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.x0
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        QrScanFragment.this.m10069Q3((Throwable) obj);
                    }
                });
                return;
            }
            UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        m10050s3(bundle);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f15159A.onDestroy();
        QMUIStatusBarHelper.m7481m(getActivity());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* renamed from: p3 */
    protected void m10053p3(String str) {
        QRContentEntity qRContentEntity = (QRContentEntity) new Gson().fromJson(EncoderUtil.m8675a(str.replace(QRConstants.OLD_APP_CREATE_QR_HEADER, "")), (Class<Object>) QRContentEntity.class);
        if (qRContentEntity.getTyp() == 2) {
            mo8048o2();
            m8041v2(mo10052q3(qRContentEntity));
            return;
        }
        m10065U3();
    }

    /* renamed from: q3 */
    protected QMUIFragment mo10052q3(QRContentEntity qRContentEntity) {
        return GroupQrScanResultFragment.m9551u3(qRContentEntity);
    }

    /* renamed from: s3 */
    public void m10050s3(Bundle bundle) {
        int m8605m = UIUtils.m8605m();
        int m8604n = UIUtils.m8604n();
        Rect rect = new Rect();
        int i = m8604n / 2;
        int i2 = this.f15160z;
        rect.left = i - (i2 / 2);
        rect.right = i + (i2 / 2);
        int i3 = m8605m / 2;
        rect.top = i3 - (i2 / 2);
        rect.bottom = i3 + (i2 / 2);
        RemoteView build = new RemoteView.Builder().setContext(getActivity()).setBoundingBox(rect).setFormat(0, new int[0]).build();
        this.f15159A = build;
        build.setOnResultCallback(new OnResultCallback() { // from class: com.ifengyu.intercom.ui.fragment.s0
            @Override // com.huawei.hms.hmsscankit.OnResultCallback
            public final void onResult(HmsScan[] hmsScanArr) {
                QrScanFragment.this.m10082D3(hmsScanArr);
            }
        });
        this.f15159A.onCreate(bundle);
    }
}
