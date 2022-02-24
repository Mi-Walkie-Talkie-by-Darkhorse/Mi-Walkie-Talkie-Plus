package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.i;

/* compiled from: SharkChannelBaseFragment.java */
/* loaded from: classes2.dex */
public abstract class a extends com.ifengyu.intercom.ui.baseui.a {
    protected boolean h;
    protected i i;
    protected final String g = getClass().getSimpleName();
    protected boolean j = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0188a implements Runnable {
        RunnableC0188a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b(R.string.operation_time_out);
        }
    }

    /* compiled from: SharkChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f6875a;

        b(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f6875a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR result = this.f6875a.getResult();
            SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION option = this.f6875a.getOption();
            int i = f.f6881a[result.ordinal()];
            if (i == 1) {
                z.c(a.this.g, "state response: success");
                a.this.a(option, this.f6875a);
            } else if (i == 2) {
                z.c(a.this.g, "state response: failed");
                a.this.a(option);
            } else if (i == 3) {
                z.c(a.this.g, "state response: SHARK_EMPTY");
            } else if (i == 4) {
                z.c(a.this.g, "state response: SHARK_FORBIDE");
            }
        }
    }

    /* compiled from: SharkChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_ChannelInfoOperate f6877a;

        c(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
            this.f6877a = sHARK_ChannelInfoOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR result = this.f6877a.getResult();
            SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION option = this.f6877a.getOption();
            switch (f.f6882b[result.ordinal()]) {
                case 1:
                    z.c(a.this.g, "ChannelInfo response: success");
                    a.this.a(option, this.f6877a);
                    return;
                case 2:
                    z.c(a.this.g, "ChannelInfo response: failed");
                    a.this.a(option);
                    return;
                case 3:
                    z.c(a.this.g, "ChannelInfo response: SHARK_EMPTY");
                    a.this.f(this.f6877a);
                    return;
                case 4:
                    z.c(a.this.g, "ChannelInfo response: SHARK_FORBIDE");
                    a.this.b(option);
                    return;
                case 5:
                    z.c(a.this.g, "ChannelInfo response: SHARK_CH_QUERY_CONTINUE");
                    a.this.e(this.f6877a);
                    return;
                case 6:
                    z.c(a.this.g, "ChannelInfo response: SHARK_CH_QUERY_FINISH");
                    a.this.g(this.f6877a);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6881a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f6882b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f6883c;
        static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            d = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                d[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.values().length];
            f6883c = iArr2;
            try {
                iArr2[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6883c[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.values().length];
            f6882b = iArr3;
            try {
                iArr3[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6882b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6882b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6882b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6882b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f6882b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.values().length];
            f6881a = iArr4;
            try {
                iArr4[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f6881a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f6881a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f6881a[SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    protected void b(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    protected abstract void b(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    protected void c(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    protected abstract void c(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(SealSharkChannel sealSharkChannel) {
        m();
        h0.c(sealSharkChannel);
        l();
    }

    protected void d(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    public void d(SealSharkChannel sealSharkChannel) {
        h0.d(sealSharkChannel);
    }

    protected void e(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(SealSharkChannel sealSharkChannel) {
        m();
        h0.a(sealSharkChannel, this.h);
        l();
    }

    protected void f(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    protected void g(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        i iVar = this.i;
        if (iVar != null && iVar.isShowing()) {
            this.i.dismiss();
        }
    }

    protected void l() {
        k0.a(new RunnableC0188a(), 2000L);
    }

    protected void m() {
        a(false, true, R.string.please_wait, R.drawable.load_spinner);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        z.a(this.g, "onActivityCreated");
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        z.a(this.g, "onAttach");
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        z.a(this.g, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.h = arguments.getBoolean("shark_arg_is_major_channel", true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        z.a(this.g, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        z.a(this.g, "onDestroy");
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        z.a(this.g, "onDestroyView");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        z.a(this.g, "onDetach");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        z.a(this.g, "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        z.a(this.g, "onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        z.a(this.g, "onStart");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        z.a(this.g, "onStop");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(SealSharkChannel sealSharkChannel) {
        m();
        h0.b(sealSharkChannel);
        l();
    }

    protected void d(String str) {
        a(R.drawable.mine_icon_win);
        b(str);
        k0.a(new d(), 500L);
    }

    protected void c(int i) {
        d(k0.c(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        k0.f();
        b(f.d[shark_choption.ordinal()] != 2 ? R.string.operation_failed : R.string.delete_failed);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SealSharkChannel sealSharkChannel) {
        m();
        h0.a(sealSharkChannel);
        l();
    }

    protected void c(String str) {
        a(R.drawable.mine_icon_lose);
        b(str);
        k0.a(new e(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        k0.a(new b(sHARK_ChannelStateOperate));
    }

    protected void b(int i) {
        c(k0.c(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        k0.a(new c(sHARK_ChannelInfoOperate));
    }

    protected void b(String str) {
        i iVar = this.i;
        if (iVar != null) {
            iVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption, SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        k0.f();
        int i = f.f6883c[shark_stoption.ordinal()];
        if (i == 1) {
            b(sHARK_ChannelStateOperate);
        } else if (i == 2) {
            c(sHARK_ChannelStateOperate);
            k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption, SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        k0.f();
        int i = f.d[shark_choption.ordinal()];
        if (i == 1) {
            c(R.string.insert_success);
            c(sHARK_ChannelInfoOperate);
        } else if (i == 2) {
            c(R.string.delete_success);
            b(sHARK_ChannelInfoOperate);
        } else if (i == 3) {
            c(R.string.modify_success);
            d(sHARK_ChannelInfoOperate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption) {
        k0.f();
        b(f.f6883c[shark_stoption.ordinal()] != 2 ? R.string.operation_failed : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        k0.f();
        int i = f.d[shark_choption.ordinal()];
        b(i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.operation_failed : R.string.query_failed : R.string.modify_failed : R.string.delete_failed : R.string.insert_failed);
    }

    protected void a(int i) {
        i iVar = this.i;
        if (iVar != null && i != -1) {
            iVar.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z, boolean z2, String str, int i) {
        i iVar = this.i;
        if (iVar == null) {
            this.i = new i(getActivity());
        } else {
            iVar.dismiss();
            this.i = new i(getActivity());
        }
        this.i.a(str);
        this.i.a(i);
        this.i.setCanceledOnTouchOutside(z);
        this.i.setCancelable(z2);
        if (!this.i.isShowing()) {
            this.i.show();
        }
    }

    protected void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }
}
