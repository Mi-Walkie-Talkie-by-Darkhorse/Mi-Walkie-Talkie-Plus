package com.ifengyu.intercom.ui.setting.seal.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.i;

/* compiled from: SealChannelBaseFragment.java */
/* loaded from: classes2.dex */
public abstract class a extends com.ifengyu.intercom.ui.baseui.a {
    protected i h;
    protected final String g = getClass().getSimpleName();
    protected boolean i = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0181a implements Runnable {
        RunnableC0181a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b(R.string.operation_time_out);
        }
    }

    /* compiled from: SealChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f6768a;

        b(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f6768a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR result = this.f6768a.getResult();
            SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION option = this.f6768a.getOption();
            int i = f.f6774a[result.ordinal()];
            if (i == 1) {
                z.c(a.this.g, "state response: success");
                a.this.a(option, this.f6768a);
            } else if (i == 2) {
                z.c(a.this.g, "state response: failed");
                a.this.a(option);
            } else if (i == 3) {
                z.c(a.this.g, "state response: SEAL_EMPTY");
            } else if (i == 4) {
                z.c(a.this.g, "state response: SEAL_FORBIDE");
            }
        }
    }

    /* compiled from: SealChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_ChannelInfoOperate f6770a;

        c(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
            this.f6770a = sEAL_ChannelInfoOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR result = this.f6770a.getResult();
            SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION option = this.f6770a.getOption();
            switch (f.f6775b[result.ordinal()]) {
                case 1:
                    z.c(a.this.g, "ChannelInfo response: success");
                    a.this.a(option, this.f6770a);
                    return;
                case 2:
                    z.c(a.this.g, "ChannelInfo response: failed");
                    a.this.a(option);
                    return;
                case 3:
                    z.c(a.this.g, "ChannelInfo response: SEAL_EMPTY");
                    a.this.f(this.f6770a);
                    return;
                case 4:
                    z.c(a.this.g, "ChannelInfo response: SEAL_FORBIDE");
                    a.this.b(option);
                    return;
                case 5:
                    z.c(a.this.g, "ChannelInfo response: SEAL_CH_QUERY_CONTINUE");
                    a.this.e(this.f6770a);
                    return;
                case 6:
                    z.c(a.this.g, "ChannelInfo response: SEAL_CH_QUERY_FINISH");
                    a.this.g(this.f6770a);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealChannelBaseFragment.java */
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
    /* compiled from: SealChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6774a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f6775b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f6776c;
        static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            d = iArr;
            try {
                iArr[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                d[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.values().length];
            f6776c = iArr2;
            try {
                iArr2[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6776c[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.values().length];
            f6775b = iArr3;
            try {
                iArr3[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6775b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6775b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6775b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6775b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f6775b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.values().length];
            f6774a = iArr4;
            try {
                iArr4[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f6774a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f6774a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f6774a[SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    protected void b(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    protected abstract void b(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    protected void c(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    protected abstract void c(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(SealSharkChannel sealSharkChannel) {
        m();
        g0.c(sealSharkChannel);
        l();
    }

    protected void d(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    public void d(SealSharkChannel sealSharkChannel) {
        g0.d(sealSharkChannel);
    }

    protected void e(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(SealSharkChannel sealSharkChannel) {
        m();
        g0.f(sealSharkChannel);
        l();
    }

    protected void f(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    protected void g(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        i iVar = this.h;
        if (iVar != null && iVar.isShowing()) {
            this.h.dismiss();
        }
    }

    protected void l() {
        k0.a(new RunnableC0181a(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m() {
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
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        z.a(this.g, "onCreate");
        com.ifengyu.intercom.eventbus.a.a().b(this);
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
        g0.b(sealSharkChannel);
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
    public void b(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        k0.f();
        b(f.d[seal_choption.ordinal()] != 2 ? R.string.operation_failed : R.string.delete_failed);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SealSharkChannel sealSharkChannel) {
        m();
        g0.a(sealSharkChannel);
        l();
    }

    protected void c(String str) {
        a(R.drawable.mine_icon_lose);
        b(str);
        k0.a(new e(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        k0.a(new b(sEAL_ChannelStateOperate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i) {
        c(k0.c(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        k0.a(new c(sEAL_ChannelInfoOperate));
    }

    protected void b(String str) {
        i iVar = this.h;
        if (iVar != null) {
            iVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption, SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        k0.f();
        int i = f.f6776c[seal_stoption.ordinal()];
        if (i == 1) {
            b(sEAL_ChannelStateOperate);
        } else if (i == 2) {
            c(sEAL_ChannelStateOperate);
            k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption, SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        k0.f();
        int i = f.d[seal_choption.ordinal()];
        if (i == 1) {
            c(R.string.insert_success);
            c(sEAL_ChannelInfoOperate);
        } else if (i == 2) {
            c(R.string.delete_success);
            b(sEAL_ChannelInfoOperate);
        } else if (i == 3) {
            c(R.string.modify_success);
            d(sEAL_ChannelInfoOperate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption) {
        k0.f();
        b(f.f6776c[seal_stoption.ordinal()] != 2 ? R.string.operation_failed : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        k0.f();
        int i = f.d[seal_choption.ordinal()];
        b(i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.operation_failed : R.string.query_failed : R.string.modify_failed : R.string.delete_failed : R.string.insert_failed);
    }

    protected void a(int i) {
        i iVar = this.h;
        if (iVar != null && i != -1) {
            iVar.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z, boolean z2, String str, int i) {
        i iVar = this.h;
        if (iVar == null) {
            this.h = new i(getActivity());
        } else {
            iVar.dismiss();
            this.h = new i(getActivity());
        }
        this.h.a(str);
        this.h.a(i);
        this.h.setCanceledOnTouchOutside(z);
        this.h.setCancelable(z2);
        if (!this.h.isShowing()) {
            this.h.show();
        }
    }

    protected void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }
}
