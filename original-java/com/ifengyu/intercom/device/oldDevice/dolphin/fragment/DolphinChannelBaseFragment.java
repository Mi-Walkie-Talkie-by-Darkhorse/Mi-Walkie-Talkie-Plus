package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.DolphinBleManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.old.BaseFragment1;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogProgress;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b */
/* loaded from: classes2.dex */
public abstract class DolphinChannelBaseFragment extends BaseFragment1 {

    /* renamed from: f */
    protected String f12947f;

    /* renamed from: g */
    protected boolean f12948g;

    /* renamed from: h */
    protected int f12949h;

    /* renamed from: i */
    protected DialogProgress f12950i;

    /* renamed from: k */
    protected DolphinBleManager f12952k;

    /* renamed from: e */
    protected final String f12946e = getClass().getSimpleName();

    /* renamed from: j */
    protected boolean f12951j = true;

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$a */
    /* loaded from: classes2.dex */
    class RunnableC3586a implements Runnable {
        RunnableC3586a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13196Y1(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$b */
    /* loaded from: classes2.dex */
    class RunnableC3587b implements Runnable {
        RunnableC3587b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13196Y1(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$c */
    /* loaded from: classes2.dex */
    class RunnableC3588c implements Runnable {
        RunnableC3588c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13196Y1(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$d */
    /* loaded from: classes2.dex */
    class RunnableC3589d implements Runnable {
        RunnableC3589d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13196Y1(R.string.operation_time_out);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$e */
    /* loaded from: classes2.dex */
    public class RunnableC3590e implements Runnable {
        RunnableC3590e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13218C1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$f */
    /* loaded from: classes2.dex */
    public class RunnableC3591f implements Runnable {
        RunnableC3591f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinChannelBaseFragment.this.m13218C1();
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$g */
    /* loaded from: classes2.dex */
    class RunnableC3592g implements Runnable {

        /* renamed from: a */
        final /* synthetic */ StateUpdateEvent f12959a;

        RunnableC3592g(StateUpdateEvent stateUpdateEvent) {
            this.f12959a = stateUpdateEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            MitalkProtos.STATECODE stateCode = this.f12959a.getStateCode();
            MitalkProtos.CHOPTION option = this.f12959a.getOption();
            int i = C3593h.f12961a[stateCode.ordinal()];
            if (i == 1) {
                C4161y.m11049f(DolphinChannelBaseFragment.this.f12946e, "state response: success");
                DolphinChannelBaseFragment.this.m13212I1(option, this.f12959a);
            } else if (i == 2) {
                C4161y.m11049f(DolphinChannelBaseFragment.this.f12946e, "state response: failed");
                if (option != MitalkProtos.CHOPTION.CH_QUERY) {
                    DolphinChannelBaseFragment.this.m13216E1(option);
                } else {
                    DolphinChannelBaseFragment.this.mo13208M1(this.f12959a);
                }
            } else if (i == 3) {
                C4161y.m11049f(DolphinChannelBaseFragment.this.f12946e, "state response: param error");
            } else if (i == 4) {
                C4161y.m11049f(DolphinChannelBaseFragment.this.f12946e, "state response: not support");
                DolphinChannelBaseFragment.this.m13214G1(option);
            } else if (i != 5) {
            } else {
                C4161y.m11049f(DolphinChannelBaseFragment.this.f12946e, "state response: final");
                DolphinChannelBaseFragment.this.mo13215F1(option);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.b$h */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3593h {

        /* renamed from: a */
        static final /* synthetic */ int[] f12961a;

        /* renamed from: b */
        static final /* synthetic */ int[] f12962b;

        static {
            int[] iArr = new int[MitalkProtos.CHOPTION.values().length];
            f12962b = iArr;
            try {
                iArr[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12962b[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12962b[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12962b[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12962b[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[MitalkProtos.STATECODE.values().length];
            f12961a = iArr2;
            try {
                iArr2[MitalkProtos.STATECODE.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12961a[MitalkProtos.STATECODE.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12961a[MitalkProtos.STATECODE.PARAMERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12961a[MitalkProtos.STATECODE.NOTSUPPORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12961a[MitalkProtos.STATECODE.FINAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: D1 */
    private void m13217D1() {
        DialogProgress dialogProgress = this.f12950i;
        if (dialogProgress == null || !dialogProgress.isShowing()) {
            return;
        }
        this.f12950i.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E1 */
    public void m13216E1(MitalkProtos.CHOPTION choption) {
        UIUtils.m8597u();
        int i = C3593h.f12962b[choption.ordinal()];
        m13196Y1(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? R.string.operation_failed : R.string.query_failed : R.string.insert_failed : R.string.modify_failed : R.string.in_using : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G1 */
    public void m13214G1(MitalkProtos.CHOPTION choption) {
        UIUtils.m8597u();
        int i = C3593h.f12962b[choption.ordinal()];
        m13196Y1(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? R.string.operation_failed : R.string.not_support_query : R.string.not_support_add : R.string.not_support_modify : R.string.not_support_delete : R.string.not_support_switch);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I1 */
    public void m13212I1(MitalkProtos.CHOPTION choption, StateUpdateEvent stateUpdateEvent) {
        UIUtils.m8597u();
        if (choption == MitalkProtos.CHOPTION.ST_QUERY) {
            mo13206O1(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.ST_UPDATE) {
            m13191d2(R.string.set_success);
            mo13205P1(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_INSERT) {
            m13191d2(R.string.insert_success);
            mo13210K1(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_DELETE) {
            m13191d2(R.string.delete_success);
            mo13211J1(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_MODIFY) {
            m13191d2(R.string.modify_success);
            mo13209L1(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_QUERY) {
            mo13207N1(stateUpdateEvent);
        }
    }

    /* renamed from: W1 */
    private void m13198W1(int i) {
        DialogProgress dialogProgress = this.f12950i;
        if (dialogProgress == null || i == -1) {
            return;
        }
        dialogProgress.m8985a(i);
    }

    /* renamed from: X1 */
    private void m13197X1(String str) {
        DialogProgress dialogProgress = this.f12950i;
        if (dialogProgress != null) {
            dialogProgress.m8984b(str);
        }
    }

    /* renamed from: a2 */
    private void m13194a2(boolean z, boolean z2, int i, int i2) {
        m13193b2(z, z2, getString(i), i2);
    }

    /* renamed from: b2 */
    private void m13193b2(boolean z, boolean z2, String str, int i) {
        DialogProgress dialogProgress = this.f12950i;
        if (dialogProgress == null) {
            this.f12950i = new DialogProgress(getActivity());
        } else {
            dialogProgress.dismiss();
            this.f12950i = new DialogProgress(getActivity());
        }
        this.f12950i.m8984b(str);
        this.f12950i.m8985a(i);
        this.f12950i.setCanceledOnTouchOutside(z);
        this.f12950i.setCancelable(z2);
        if (this.f12950i.isShowing()) {
            return;
        }
        this.f12950i.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: C1 */
    public void m13218C1() {
        m13217D1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F1 */
    public void mo13215F1(MitalkProtos.CHOPTION choption) {
        UIUtils.m8597u();
        m13218C1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: H1 */
    public void m13213H1(StateUpdateEvent stateUpdateEvent) {
        UIUtils.m8598t(new RunnableC3592g(stateUpdateEvent));
    }

    /* renamed from: J1 */
    protected void mo13211J1(StateUpdateEvent stateUpdateEvent) {
    }

    /* renamed from: K1 */
    protected void mo13210K1(StateUpdateEvent stateUpdateEvent) {
    }

    /* renamed from: L1 */
    protected void mo13209L1(StateUpdateEvent stateUpdateEvent) {
    }

    /* renamed from: M1 */
    protected void mo13208M1(StateUpdateEvent stateUpdateEvent) {
    }

    /* renamed from: N1 */
    protected void mo13207N1(StateUpdateEvent stateUpdateEvent) {
    }

    /* renamed from: O1 */
    protected abstract void mo13206O1(StateUpdateEvent stateUpdateEvent);

    /* renamed from: P1 */
    protected abstract void mo13205P1(StateUpdateEvent stateUpdateEvent);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Q1 */
    public void m13204Q1(DolphinChannelModel dolphinChannelModel) {
        m13192c2();
        if (this.f12949h <= 16908288) {
            this.f12952k.m12333e1(dolphinChannelModel, this.f12948g);
        } else {
            this.f12952k.m12333e1(dolphinChannelModel, true);
        }
        UIUtils.m8599s(new RunnableC3589d(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: R1 */
    public void m13203R1(DolphinChannelModel dolphinChannelModel) {
        m13192c2();
        this.f12952k.m12332f1(dolphinChannelModel);
        UIUtils.m8599s(new RunnableC3587b(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: S1 */
    public void m13202S1(DolphinChannelModel dolphinChannelModel) {
        m13192c2();
        this.f12952k.m12331g1(dolphinChannelModel);
        UIUtils.m8599s(new RunnableC3588c(), 2000L);
    }

    /* renamed from: T1 */
    public void m13201T1(DolphinChannelModel dolphinChannelModel) {
        this.f12952k.m12330h1(dolphinChannelModel);
    }

    /* renamed from: U1 */
    public void m13200U1(DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2) {
        this.f12952k.m12329i1(dolphinChannelModel, dolphinChannelModel2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: V1 */
    public void m13199V1(DolphinChannelModel dolphinChannelModel) {
        C4161y.m11054a(this.f12946e, "showProgressDialog");
        m13192c2();
        this.f12952k.m12307u1(dolphinChannelModel, this.f12948g);
        UIUtils.m8599s(new RunnableC3586a(), 2000L);
    }

    /* renamed from: Y1 */
    protected void m13196Y1(int i) {
        m13195Z1(UIUtils.m8603o(i));
    }

    /* renamed from: Z1 */
    protected void m13195Z1(String str) {
        m13198W1(R.drawable.load_fail);
        m13197X1(str);
        UIUtils.m8599s(new RunnableC3591f(), 1000L);
    }

    /* renamed from: c2 */
    protected void m13192c2() {
        m13194a2(false, true, R.string.please_wait, R.drawable.load_spinner);
    }

    /* renamed from: d2 */
    protected void m13191d2(int i) {
        m13190e2(UIUtils.m8603o(i));
    }

    /* renamed from: e2 */
    protected void m13190e2(String str) {
        m13198W1(R.drawable.load_success);
        m13197X1(str);
        UIUtils.m8599s(new RunnableC3590e(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        C4161y.m11054a(this.f12946e, "onActivityCreated");
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        C4161y.m11054a(this.f12946e, "onAttach");
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C4161y.m11054a(this.f12946e, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f12947f = arguments.getString("device_mac_address");
            this.f12948g = arguments.getBoolean("is_first_channel", true);
            this.f12949h = arguments.getInt("version_mcu", 0);
        }
        if (TextUtils.isEmpty(this.f12947f)) {
            return;
        }
        this.f12952k = BleCoreClient.m12373n().m12378i(this.f12947f);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        C4161y.m11054a(this.f12946e, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C4161y.m11054a(this.f12946e, "onDestroy");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        C4161y.m11054a(this.f12946e, "onDetach");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MiBus.getInstance().m6409l(this);
        C4161y.m11054a(this.f12946e, "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MiBus.getInstance().m6411j(this);
        C4161y.m11054a(this.f12946e, "onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C4161y.m11054a(this.f12946e, "onStart");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C4161y.m11054a(this.f12946e, "onStop");
    }
}
