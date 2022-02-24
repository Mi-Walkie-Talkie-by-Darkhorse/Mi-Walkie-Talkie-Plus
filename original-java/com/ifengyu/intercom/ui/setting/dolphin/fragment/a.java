package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.q;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.i;

/* compiled from: DolphinChannelBaseFragment.java */
/* loaded from: classes2.dex */
public abstract class a extends com.ifengyu.intercom.ui.baseui.a {
    protected boolean h;
    protected int i;
    protected i j;
    protected final String g = getClass().getSimpleName();
    protected boolean k = true;

    /* compiled from: DolphinChannelBaseFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.fragment.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0176a implements Runnable {
        RunnableC0176a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(R.string.operation_time_out);
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(R.string.operation_time_out);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinChannelBaseFragment.java */
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
    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.j();
        }
    }

    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateUpdateEvent f6675a;

        g(StateUpdateEvent stateUpdateEvent) {
            this.f6675a = stateUpdateEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            MitalkProtos.STATECODE d = this.f6675a.d();
            MitalkProtos.CHOPTION c2 = this.f6675a.c();
            int i = h.f6677a[d.ordinal()];
            if (i == 1) {
                z.c(a.this.g, "state response: success");
                a.this.a(c2, this.f6675a);
            } else if (i == 2) {
                z.c(a.this.g, "state response: failed");
                if (c2 == MitalkProtos.CHOPTION.CH_QUERY) {
                    a.this.e(this.f6675a);
                } else {
                    a.this.b(c2);
                }
            } else if (i == 3) {
                z.c(a.this.g, "state response: param error");
            } else if (i == 4) {
                z.c(a.this.g, "state response: not support");
                a.this.c(c2);
            } else if (i == 5) {
                z.c(a.this.g, "state response: final");
                a.this.a(c2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinChannelBaseFragment.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class h {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6677a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f6678b;

        static {
            int[] iArr = new int[MitalkProtos.CHOPTION.values().length];
            f6678b = iArr;
            try {
                iArr[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6678b[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6678b[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6678b[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6678b[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[MitalkProtos.STATECODE.values().length];
            f6677a = iArr2;
            try {
                iArr2[MitalkProtos.STATECODE.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6677a[MitalkProtos.STATECODE.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6677a[MitalkProtos.STATECODE.PARAMERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6677a[MitalkProtos.STATECODE.NOTSUPPORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6677a[MitalkProtos.STATECODE.FINAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private void l() {
        i iVar = this.j;
        if (iVar != null && iVar.isShowing()) {
            this.j.dismiss();
        }
    }

    protected void b(StateUpdateEvent stateUpdateEvent) {
    }

    protected void c(StateUpdateEvent stateUpdateEvent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(UserChannel userChannel) {
        k();
        q.b(userChannel);
        k0.a(new c(), 2000L);
    }

    protected void d(StateUpdateEvent stateUpdateEvent) {
    }

    public void d(UserChannel userChannel) {
        q.c(userChannel);
    }

    protected void e(StateUpdateEvent stateUpdateEvent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(UserChannel userChannel) {
        z.a(this.g, "showProgressDialog");
        k();
        q.b(userChannel, this.h);
        k0.a(new RunnableC0176a(), 2000L);
    }

    protected void f(StateUpdateEvent stateUpdateEvent) {
    }

    protected abstract void g(StateUpdateEvent stateUpdateEvent);

    protected abstract void h(StateUpdateEvent stateUpdateEvent);

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        l();
    }

    protected void k() {
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.h = arguments.getBoolean("is_first_channel", true);
            this.i = arguments.getInt("version_mcu", 0);
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
        com.ifengyu.intercom.eventbus.a.a().c(this);
        z.a(this.g, "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.eventbus.a.a().b(this);
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

    private void d(String str) {
        i iVar = this.j;
        if (iVar != null) {
            iVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(UserChannel userChannel) {
        k();
        q.a(userChannel);
        k0.a(new b(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(UserChannel userChannel) {
        k();
        if (this.i <= 16908288) {
            q.a(userChannel, this.h);
        } else {
            q.a(userChannel, true);
        }
        k0.a(new d(), 2000L);
    }

    protected void c(String str) {
        c(R.drawable.mine_icon_win);
        d(str);
        k0.a(new e(), 500L);
    }

    protected void b(int i) {
        c(k0.c(i));
    }

    protected void b(String str) {
        c(R.drawable.mine_icon_lose);
        d(str);
        k0.a(new f(), 1000L);
    }

    private void c(int i) {
        i iVar = this.j;
        if (iVar != null && i != -1) {
            iVar.a(i);
        }
    }

    public void a(UserChannel userChannel, UserChannel userChannel2) {
        q.a(userChannel, userChannel2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MitalkProtos.CHOPTION choption) {
        k0.f();
        int i = h.f6678b[choption.ordinal()];
        a(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? R.string.operation_failed : R.string.query_failed : R.string.insert_failed : R.string.modify_failed : R.string.in_using : R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(MitalkProtos.CHOPTION choption) {
        k0.f();
        int i = h.f6678b[choption.ordinal()];
        a(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? R.string.operation_failed : R.string.not_support_query : R.string.not_support_add : R.string.not_support_modify : R.string.not_support_delete : R.string.not_support_switch);
    }

    protected void a(int i) {
        b(k0.c(i));
    }

    private void a(boolean z, boolean z2, String str, int i) {
        i iVar = this.j;
        if (iVar == null) {
            this.j = new i(getActivity());
        } else {
            iVar.dismiss();
            this.j = new i(getActivity());
        }
        this.j.a(str);
        this.j.a(i);
        this.j.setCanceledOnTouchOutside(z);
        this.j.setCancelable(z2);
        if (!this.j.isShowing()) {
            this.j.show();
        }
    }

    private void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(StateUpdateEvent stateUpdateEvent) {
        k0.a(new g(stateUpdateEvent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MitalkProtos.CHOPTION choption, StateUpdateEvent stateUpdateEvent) {
        k0.f();
        if (choption == MitalkProtos.CHOPTION.ST_QUERY) {
            g(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.ST_UPDATE) {
            b(R.string.set_success);
            h(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_INSERT) {
            b(R.string.insert_success);
            c(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_DELETE) {
            b(R.string.delete_success);
            b(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_MODIFY) {
            b(R.string.modify_success);
            d(stateUpdateEvent);
        } else if (choption == MitalkProtos.CHOPTION.CH_QUERY) {
            f(stateUpdateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(MitalkProtos.CHOPTION choption) {
        k0.f();
        j();
    }
}
