package com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.SealBleManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.old.BaseFragment1;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogProgress;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a */
/* loaded from: classes2.dex */
public abstract class SealChannelBaseFragment extends BaseFragment1 {

    /* renamed from: f */
    protected DialogProgress f13386f;

    /* renamed from: h */
    protected String f13388h;

    /* renamed from: i */
    protected SealBleManager f13389i;

    /* renamed from: e */
    protected final String f13385e = getClass().getSimpleName();

    /* renamed from: g */
    protected boolean f13387g = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$a */
    /* loaded from: classes2.dex */
    public class RunnableC3739a implements Runnable {
        RunnableC3739a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealChannelBaseFragment.this.m12752c2(R.string.operation_time_out);
        }
    }

    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$b */
    /* loaded from: classes2.dex */
    class RunnableC3740b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f13391a;

        RunnableC3740b(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f13391a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR result = this.f13391a.getResult();
            SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION option = this.f13391a.getOption();
            int i = C3744f.f13397a[result.ordinal()];
            if (i == 1) {
                C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "state response: success");
                SealChannelBaseFragment.this.m12764M1(option, this.f13391a);
            } else if (i == 2) {
                C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "state response: failed");
                SealChannelBaseFragment.this.m12765L1(option);
            } else if (i == 3) {
                C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "state response: SEAL_EMPTY");
            } else if (i != 4) {
            } else {
                C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "state response: SEAL_FORBIDE");
            }
        }
    }

    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$c */
    /* loaded from: classes2.dex */
    class RunnableC3741c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_ChannelInfoOperate f13393a;

        RunnableC3741c(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
            this.f13393a = sEAL_ChannelInfoOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR result = this.f13393a.getResult();
            SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION option = this.f13393a.getOption();
            switch (C3744f.f13398b[result.ordinal()]) {
                case 1:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: success");
                    SealChannelBaseFragment.this.m12768I1(option, this.f13393a);
                    return;
                case 2:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: failed");
                    SealChannelBaseFragment.this.m12770G1(option);
                    return;
                case 3:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: SEAL_EMPTY");
                    SealChannelBaseFragment.this.mo12742R1(this.f13393a);
                    return;
                case 4:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: SEAL_FORBIDE");
                    SealChannelBaseFragment.this.m12769H1(option);
                    return;
                case 5:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: SEAL_CH_QUERY_CONTINUE");
                    SealChannelBaseFragment.this.mo12761Q1(this.f13393a);
                    return;
                case 6:
                    C4161y.m11049f(SealChannelBaseFragment.this.f13385e, "ChannelInfo response: SEAL_CH_QUERY_FINISH");
                    SealChannelBaseFragment.this.mo12760S1(this.f13393a);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$d */
    /* loaded from: classes2.dex */
    public class RunnableC3742d implements Runnable {
        RunnableC3742d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealChannelBaseFragment.this.m12771F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$e */
    /* loaded from: classes2.dex */
    public class RunnableC3743e implements Runnable {
        RunnableC3743e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealChannelBaseFragment.this.m12772E1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.a$f */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3744f {

        /* renamed from: a */
        static final /* synthetic */ int[] f13397a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13398b;

        /* renamed from: c */
        static final /* synthetic */ int[] f13399c;

        /* renamed from: d */
        static final /* synthetic */ int[] f13400d;

        static {
            int[] iArr = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            f13400d = iArr;
            try {
                iArr[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13400d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13400d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13400d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.values().length];
            f13399c = iArr2;
            try {
                iArr2[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13399c[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.values().length];
            f13398b = iArr3;
            try {
                iArr3[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13398b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f13398b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13398b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13398b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13398b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.values().length];
            f13397a = iArr4;
            try {
                iArr4[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f13397a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f13397a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f13397a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G1 */
    public void m12770G1(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        UIUtils.m8597u();
        int i = C3744f.f13400d[seal_choption.ordinal()];
        m12752c2(i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.operation_failed : R.string.query_failed : R.string.modify_failed : R.string.delete_failed : R.string.insert_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H1 */
    public void m12769H1(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        UIUtils.m8597u();
        m12752c2(C3744f.f13400d[seal_choption.ordinal()] != 2 ? R.string.operation_failed : R.string.delete_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I1 */
    public void m12768I1(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption, SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        UIUtils.m8597u();
        int i = C3744f.f13400d[seal_choption.ordinal()];
        if (i == 1) {
            m12746i2(R.string.insert_success);
            mo12762O1(sEAL_ChannelInfoOperate);
        } else if (i == 2) {
            m12746i2(R.string.delete_success);
            mo12763N1(sEAL_ChannelInfoOperate);
        } else if (i != 3) {
        } else {
            m12746i2(R.string.modify_success);
            mo12743P1(sEAL_ChannelInfoOperate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L1 */
    public void m12765L1(SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption) {
        UIUtils.m8597u();
        m12752c2(C3744f.f13399c[seal_stoption.ordinal()] != 2 ? R.string.operation_failed : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M1 */
    public void m12764M1(SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption, SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        UIUtils.m8597u();
        int i = C3744f.f13399c[seal_stoption.ordinal()];
        if (i == 1) {
            mo12741T1(sEAL_ChannelStateOperate);
        } else if (i != 2) {
        } else {
            mo12740U1(sEAL_ChannelStateOperate);
            m12771F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E1 */
    public void m12772E1() {
        m12771F1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F1 */
    public void m12771F1() {
        DialogProgress dialogProgress = this.f13386f;
        if (dialogProgress == null || !dialogProgress.isShowing()) {
            return;
        }
        this.f13386f.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: J1 */
    public void m12767J1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        UIUtils.m8598t(new RunnableC3741c(sEAL_ChannelInfoOperate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: K1 */
    public void m12766K1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        UIUtils.m8598t(new RunnableC3740b(sEAL_ChannelStateOperate));
    }

    /* renamed from: N1 */
    protected void mo12763N1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: O1 */
    protected void mo12762O1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: P1 */
    protected void mo12743P1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: Q1 */
    protected void mo12761Q1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: R1 */
    protected void mo12742R1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: S1 */
    protected void mo12760S1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* renamed from: T1 */
    protected abstract void mo12741T1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    /* renamed from: U1 */
    protected abstract void mo12740U1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: V1 */
    public void m12759V1(SealSharkChannelModel sealSharkChannelModel) {
        m12747h2();
        this.f13389i.m12112a1(sealSharkChannelModel);
        m12750e2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: W1 */
    public void m12758W1(SealSharkChannelModel sealSharkChannelModel) {
        m12747h2();
        this.f13389i.m12111b1(sealSharkChannelModel);
        m12750e2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: X1 */
    public void m12757X1(SealSharkChannelModel sealSharkChannelModel) {
        m12747h2();
        this.f13389i.m12110c1(sealSharkChannelModel);
        m12750e2();
    }

    /* renamed from: Y1 */
    public void m12756Y1(SealSharkChannelModel sealSharkChannelModel) {
        this.f13389i.m12109d1(sealSharkChannelModel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z1 */
    public void m12755Z1(SealSharkChannelModel sealSharkChannelModel) {
        m12747h2();
        this.f13389i.m12105h1(sealSharkChannelModel);
        m12750e2();
    }

    /* renamed from: a2 */
    protected void m12754a2(int i) {
        DialogProgress dialogProgress = this.f13386f;
        if (dialogProgress == null || i == -1) {
            return;
        }
        dialogProgress.m8985a(i);
    }

    /* renamed from: b2 */
    protected void m12753b2(String str) {
        DialogProgress dialogProgress = this.f13386f;
        if (dialogProgress != null) {
            dialogProgress.m8984b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c2 */
    public void m12752c2(int i) {
        m12751d2(UIUtils.m8603o(i));
    }

    /* renamed from: d2 */
    protected void m12751d2(String str) {
        m12754a2(R.drawable.load_fail);
        m12753b2(str);
        UIUtils.m8599s(new RunnableC3743e(), 1000L);
    }

    /* renamed from: e2 */
    protected void m12750e2() {
        UIUtils.m8599s(new RunnableC3739a(), 2000L);
    }

    /* renamed from: f2 */
    protected void m12749f2(boolean z, boolean z2, int i, int i2) {
        m12748g2(z, z2, getString(i), i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g2 */
    public void m12748g2(boolean z, boolean z2, String str, int i) {
        DialogProgress dialogProgress = this.f13386f;
        if (dialogProgress == null) {
            this.f13386f = new DialogProgress(getActivity());
        } else {
            dialogProgress.dismiss();
            this.f13386f = new DialogProgress(getActivity());
        }
        this.f13386f.m8984b(str);
        this.f13386f.m8985a(i);
        this.f13386f.setCanceledOnTouchOutside(z);
        this.f13386f.setCancelable(z2);
        if (this.f13386f.isShowing()) {
            return;
        }
        this.f13386f.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h2 */
    public void m12747h2() {
        m12749f2(false, true, R.string.please_wait, R.drawable.load_spinner);
    }

    /* renamed from: i2 */
    protected void m12746i2(int i) {
        m12745j2(UIUtils.m8603o(i));
    }

    /* renamed from: j2 */
    protected void m12745j2(String str) {
        m12754a2(R.drawable.load_success);
        m12753b2(str);
        UIUtils.m8599s(new RunnableC3742d(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        C4161y.m11054a(this.f13385e, "onActivityCreated");
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        C4161y.m11054a(this.f13385e, "onAttach");
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C4161y.m11054a(this.f13385e, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f13388h = arguments.getString("device_mac_address");
        }
        if (!TextUtils.isEmpty(this.f13388h)) {
            this.f13389i = BleCoreClient.m12373n().m12375l(this.f13388h);
        }
        MiBus.getInstance().m6411j(this);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        C4161y.m11054a(this.f13385e, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C4161y.m11054a(this.f13385e, "onDestroy");
        MiBus.getInstance().m6409l(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        C4161y.m11054a(this.f13385e, "onDetach");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C4161y.m11054a(this.f13385e, "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C4161y.m11054a(this.f13385e, "onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C4161y.m11054a(this.f13385e, "onStart");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C4161y.m11054a(this.f13385e, "onStop");
    }
}
