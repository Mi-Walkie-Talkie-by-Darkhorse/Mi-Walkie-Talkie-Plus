package com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment;

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
import com.ifengyu.intercom.p185i.SharkBleManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.old.BaseFragment1;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogProgress;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a */
/* loaded from: classes2.dex */
public abstract class SharkChannelBaseFragment extends BaseFragment1 {

    /* renamed from: f */
    protected boolean f13544f;

    /* renamed from: g */
    protected DialogProgress f13545g;

    /* renamed from: i */
    protected String f13547i;

    /* renamed from: j */
    protected SharkBleManager f13548j;

    /* renamed from: e */
    protected final String f13543e = getClass().getSimpleName();

    /* renamed from: h */
    protected boolean f13546h = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$a */
    /* loaded from: classes2.dex */
    public class RunnableC3810a implements Runnable {
        RunnableC3810a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkChannelBaseFragment.this.m12607c2(R.string.operation_time_out);
        }
    }

    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$b */
    /* loaded from: classes2.dex */
    class RunnableC3811b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f13550a;

        RunnableC3811b(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f13550a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR result = this.f13550a.getResult();
            SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION option = this.f13550a.getOption();
            int i = C3815f.f13556a[result.ordinal()];
            if (i == 1) {
                C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "state response: success");
                SharkChannelBaseFragment.this.m12619M1(option, this.f13550a);
            } else if (i == 2) {
                C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "state response: failed");
                SharkChannelBaseFragment.this.m12620L1(option);
            } else if (i == 3) {
                C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "state response: SHARK_EMPTY");
            } else if (i != 4) {
            } else {
                C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "state response: SHARK_FORBIDE");
            }
        }
    }

    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$c */
    /* loaded from: classes2.dex */
    class RunnableC3812c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_ChannelInfoOperate f13552a;

        RunnableC3812c(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
            this.f13552a = sHARK_ChannelInfoOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR result = this.f13552a.getResult();
            SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION option = this.f13552a.getOption();
            switch (C3815f.f13557b[result.ordinal()]) {
                case 1:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: success");
                    SharkChannelBaseFragment.this.m12623I1(option, this.f13552a);
                    return;
                case 2:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: failed");
                    SharkChannelBaseFragment.this.m12625G1(option);
                    return;
                case 3:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: SHARK_EMPTY");
                    SharkChannelBaseFragment.this.mo12597R1(this.f13552a);
                    return;
                case 4:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: SHARK_FORBIDE");
                    SharkChannelBaseFragment.this.m12624H1(option);
                    return;
                case 5:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: SHARK_CH_QUERY_CONTINUE");
                    SharkChannelBaseFragment.this.mo12616Q1(this.f13552a);
                    return;
                case 6:
                    C4161y.m11049f(SharkChannelBaseFragment.this.f13543e, "ChannelInfo response: SHARK_CH_QUERY_FINISH");
                    SharkChannelBaseFragment.this.mo12615S1(this.f13552a);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$d */
    /* loaded from: classes2.dex */
    public class RunnableC3813d implements Runnable {
        RunnableC3813d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkChannelBaseFragment.this.m12627E1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$e */
    /* loaded from: classes2.dex */
    public class RunnableC3814e implements Runnable {
        RunnableC3814e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkChannelBaseFragment.this.m12627E1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.a$f */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3815f {

        /* renamed from: a */
        static final /* synthetic */ int[] f13556a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13557b;

        /* renamed from: c */
        static final /* synthetic */ int[] f13558c;

        /* renamed from: d */
        static final /* synthetic */ int[] f13559d;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            f13559d = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13559d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13559d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13559d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.values().length];
            f13558c = iArr2;
            try {
                iArr2[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13558c[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.values().length];
            f13557b = iArr3;
            try {
                iArr3[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13557b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f13557b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13557b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13557b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13557b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.values().length];
            f13556a = iArr4;
            try {
                iArr4[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f13556a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f13556a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f13556a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G1 */
    public void m12625G1(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        UIUtils.m8597u();
        int i = C3815f.f13559d[shark_choption.ordinal()];
        m12607c2(i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.operation_failed : R.string.query_failed : R.string.modify_failed : R.string.delete_failed : R.string.insert_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H1 */
    public void m12624H1(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        UIUtils.m8597u();
        m12607c2(C3815f.f13559d[shark_choption.ordinal()] != 2 ? R.string.operation_failed : R.string.delete_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I1 */
    public void m12623I1(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption, SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        UIUtils.m8597u();
        int i = C3815f.f13559d[shark_choption.ordinal()];
        if (i == 1) {
            m12601i2(R.string.insert_success);
            mo12617O1(sHARK_ChannelInfoOperate);
        } else if (i == 2) {
            m12601i2(R.string.delete_success);
            mo12618N1(sHARK_ChannelInfoOperate);
        } else if (i != 3) {
        } else {
            m12601i2(R.string.modify_success);
            mo12598P1(sHARK_ChannelInfoOperate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L1 */
    public void m12620L1(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption) {
        UIUtils.m8597u();
        m12607c2(C3815f.f13558c[shark_stoption.ordinal()] != 2 ? R.string.operation_failed : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M1 */
    public void m12619M1(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption, SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        UIUtils.m8597u();
        int i = C3815f.f13558c[shark_stoption.ordinal()];
        if (i == 1) {
            mo12596T1(sHARK_ChannelStateOperate);
        } else if (i != 2) {
        } else {
            mo12595U1(sHARK_ChannelStateOperate);
            m12626F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E1 */
    public void m12627E1() {
        m12626F1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F1 */
    public void m12626F1() {
        DialogProgress dialogProgress = this.f13545g;
        if (dialogProgress == null || !dialogProgress.isShowing()) {
            return;
        }
        this.f13545g.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: J1 */
    public void m12622J1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        UIUtils.m8598t(new RunnableC3812c(sHARK_ChannelInfoOperate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: K1 */
    public void m12621K1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        UIUtils.m8598t(new RunnableC3811b(sHARK_ChannelStateOperate));
    }

    /* renamed from: N1 */
    protected void mo12618N1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: O1 */
    protected void mo12617O1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: P1 */
    protected void mo12598P1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: Q1 */
    protected void mo12616Q1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: R1 */
    protected void mo12597R1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: S1 */
    protected void mo12615S1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* renamed from: T1 */
    protected abstract void mo12596T1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    /* renamed from: U1 */
    protected abstract void mo12595U1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: V1 */
    public void m12614V1(SealSharkChannelModel sealSharkChannelModel) {
        m12602h2();
        this.f13548j.m12048X0(sealSharkChannelModel);
        m12605e2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: W1 */
    public void m12613W1(SealSharkChannelModel sealSharkChannelModel) {
        m12602h2();
        this.f13548j.m12047Y0(sealSharkChannelModel);
        m12605e2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: X1 */
    public void m12612X1(SealSharkChannelModel sealSharkChannelModel) {
        m12602h2();
        this.f13548j.m12046Z0(sealSharkChannelModel);
        m12605e2();
    }

    /* renamed from: Y1 */
    public void m12611Y1(SealSharkChannelModel sealSharkChannelModel) {
        this.f13548j.m12045a1(sealSharkChannelModel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z1 */
    public void m12610Z1(SealSharkChannelModel sealSharkChannelModel) {
        m12602h2();
        this.f13548j.m12041e1(sealSharkChannelModel, this.f13544f);
        m12605e2();
    }

    /* renamed from: a2 */
    protected void m12609a2(int i) {
        DialogProgress dialogProgress = this.f13545g;
        if (dialogProgress == null || i == -1) {
            return;
        }
        dialogProgress.m8985a(i);
    }

    /* renamed from: b2 */
    protected void m12608b2(String str) {
        DialogProgress dialogProgress = this.f13545g;
        if (dialogProgress != null) {
            dialogProgress.m8984b(str);
        }
    }

    /* renamed from: c2 */
    protected void m12607c2(int i) {
        m12606d2(UIUtils.m8603o(i));
    }

    /* renamed from: d2 */
    protected void m12606d2(String str) {
        m12609a2(R.drawable.load_fail);
        m12608b2(str);
        UIUtils.m8599s(new RunnableC3814e(), 1000L);
    }

    /* renamed from: e2 */
    protected void m12605e2() {
        UIUtils.m8599s(new RunnableC3810a(), 2000L);
    }

    /* renamed from: f2 */
    protected void m12604f2(boolean z, boolean z2, int i, int i2) {
        m12603g2(z, z2, getString(i), i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g2 */
    public void m12603g2(boolean z, boolean z2, String str, int i) {
        DialogProgress dialogProgress = this.f13545g;
        if (dialogProgress == null) {
            this.f13545g = new DialogProgress(getActivity());
        } else {
            dialogProgress.dismiss();
            this.f13545g = new DialogProgress(getActivity());
        }
        this.f13545g.m8984b(str);
        this.f13545g.m8985a(i);
        this.f13545g.setCanceledOnTouchOutside(z);
        this.f13545g.setCancelable(z2);
        if (this.f13545g.isShowing()) {
            return;
        }
        this.f13545g.show();
    }

    /* renamed from: h2 */
    protected void m12602h2() {
        m12604f2(false, true, R.string.please_wait, R.drawable.load_spinner);
    }

    /* renamed from: i2 */
    protected void m12601i2(int i) {
        m12600j2(UIUtils.m8603o(i));
    }

    /* renamed from: j2 */
    protected void m12600j2(String str) {
        m12609a2(R.drawable.load_success);
        m12608b2(str);
        UIUtils.m8599s(new RunnableC3813d(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        C4161y.m11054a(this.f13543e, "onActivityCreated");
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        C4161y.m11054a(this.f13543e, "onAttach");
        MiBus.getInstance().m6411j(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C4161y.m11054a(this.f13543e, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f13544f = arguments.getBoolean("shark_arg_is_major_channel", true);
            this.f13547i = arguments.getString("device_mac_address");
        }
        if (TextUtils.isEmpty(this.f13547i)) {
            return;
        }
        this.f13548j = BleCoreClient.m12373n().m12374m(this.f13547i);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        C4161y.m11054a(this.f13543e, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C4161y.m11054a(this.f13543e, "onDestroy");
        MiBus.getInstance().m6409l(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        C4161y.m11054a(this.f13543e, "onDetach");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C4161y.m11054a(this.f13543e, "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C4161y.m11054a(this.f13543e, "onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C4161y.m11054a(this.f13543e, "onStart");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C4161y.m11054a(this.f13543e, "onStop");
    }
}
