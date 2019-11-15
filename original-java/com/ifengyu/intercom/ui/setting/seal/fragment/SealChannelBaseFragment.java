package com.ifengyu.intercom.ui.setting.seal.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.h;

public abstract class SealChannelBaseFragment extends BaseFragment {
    protected final String b = getClass().getSimpleName();
    protected h c;
    protected boolean d = true;

    /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.SealChannelBaseFragment$6 reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] a = new int[SEAL_ST_UERR.values().length];
        static final /* synthetic */ int[] b = new int[SEAL_CH_UERR.values().length];

        static {
            d = new int[SEAL_CHOPTION.values().length];
            try {
                d[SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                d[SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                d[SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                d[SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            c = new int[SEAL_STOPTION.values().length];
            try {
                c[SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                c[SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
            try {
                b[SEAL_CH_UERR.SEAL_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[SEAL_ST_UERR.SEAL_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[SEAL_ST_UERR.SEAL_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[SEAL_ST_UERR.SEAL_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e15) {
            }
            try {
                a[SEAL_ST_UERR.SEAL_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void b(SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    /* access modifiers changed from: protected */
    public abstract void c(SEAL_ChannelStateOperate sEAL_ChannelStateOperate);

    public void onAttach(Context context) {
        super.onAttach(context);
        s.b(this.b, "onAttach");
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        s.b(this.b, "onCreate");
        a.a().a((Object) this);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        s.b(this.b, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        s.b(this.b, "onActivityCreated");
    }

    public void onStart() {
        super.onStart();
        s.b(this.b, "onStart");
    }

    public void onResume() {
        super.onResume();
        s.b(this.b, "onResume");
    }

    public void onPause() {
        super.onPause();
        s.b(this.b, "onPause");
    }

    public void onStop() {
        super.onStop();
        s.b(this.b, "onStop");
    }

    public void onDestroyView() {
        super.onDestroyView();
        s.b(this.b, "onDestroyView");
    }

    public void onDestroy() {
        super.onDestroy();
        s.b(this.b, "onDestroy");
        a.a().b((Object) this);
    }

    public void onDetach() {
        super.onDetach();
        s.b(this.b, "onDetach");
    }

    /* access modifiers changed from: protected */
    public void a(SealSharkChannel sealSharkChannel) {
        d();
        aa.a(sealSharkChannel);
        a();
    }

    /* access modifiers changed from: protected */
    public void b(SealSharkChannel sealSharkChannel) {
        d();
        aa.b(sealSharkChannel);
        a();
    }

    /* access modifiers changed from: protected */
    public void c(SealSharkChannel sealSharkChannel) {
        d();
        aa.d(sealSharkChannel);
        a();
    }

    /* access modifiers changed from: protected */
    public void d(SealSharkChannel sealSharkChannel) {
        d();
        aa.c(sealSharkChannel);
        a();
    }

    public void e(SealSharkChannel sealSharkChannel) {
        aa.e(sealSharkChannel);
    }

    /* access modifiers changed from: protected */
    public void a() {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SealChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    /* access modifiers changed from: protected */
    public void a(final SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SEAL_ST_UERR result = sEAL_ChannelStateOperate.getResult();
                SEAL_STOPTION option = sEAL_ChannelStateOperate.getOption();
                switch (AnonymousClass6.a[result.ordinal()]) {
                    case 1:
                        s.c(SealChannelBaseFragment.this.b, "state response: success");
                        SealChannelBaseFragment.this.a(option, sEAL_ChannelStateOperate);
                        return;
                    case 2:
                        s.c(SealChannelBaseFragment.this.b, "state response: failed");
                        SealChannelBaseFragment.this.a(option);
                        return;
                    case 3:
                        s.c(SealChannelBaseFragment.this.b, "state response: SEAL_EMPTY");
                        return;
                    case 4:
                        s.c(SealChannelBaseFragment.this.b, "state response: SEAL_FORBIDE");
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void a(final SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SEAL_CH_UERR result = sEAL_ChannelInfoOperate.getResult();
                SEAL_CHOPTION option = sEAL_ChannelInfoOperate.getOption();
                switch (AnonymousClass6.b[result.ordinal()]) {
                    case 1:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: success");
                        SealChannelBaseFragment.this.a(option, sEAL_ChannelInfoOperate);
                        return;
                    case 2:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: failed");
                        SealChannelBaseFragment.this.a(option);
                        return;
                    case 3:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: SEAL_EMPTY");
                        SealChannelBaseFragment.this.e(sEAL_ChannelInfoOperate);
                        return;
                    case 4:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: SEAL_FORBIDE");
                        SealChannelBaseFragment.this.b(option);
                        return;
                    case 5:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: SEAL_CH_QUERY_CONTINUE");
                        SealChannelBaseFragment.this.f(sEAL_ChannelInfoOperate);
                        return;
                    case 6:
                        s.c(SealChannelBaseFragment.this.b, "ChannelInfo response: SEAL_CH_QUERY_FINISH");
                        SealChannelBaseFragment.this.g(sEAL_ChannelInfoOperate);
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(SEAL_STOPTION seal_stoption, SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        ad.d();
        switch (seal_stoption) {
            case SEAL_ST_QUERY:
                b(sEAL_ChannelStateOperate);
                return;
            case SEAL_ST_UPDATE:
                c(sEAL_ChannelStateOperate);
                f();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(SEAL_CHOPTION seal_choption, SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        ad.d();
        switch (seal_choption) {
            case SEAL_CH_INSERT:
                a((int) R.string.insert_success);
                b(sEAL_ChannelInfoOperate);
                return;
            case SEAL_CH_DELETE:
                a((int) R.string.delete_success);
                c(sEAL_ChannelInfoOperate);
                return;
            case SEAL_CH_MODIFY:
                a((int) R.string.modify_success);
                d(sEAL_ChannelInfoOperate);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(SEAL_STOPTION seal_stoption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (seal_stoption) {
            case SEAL_ST_UPDATE:
                i = R.string.set_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: private */
    public void a(SEAL_CHOPTION seal_choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (seal_choption) {
            case SEAL_CH_INSERT:
                i = R.string.insert_failed;
                break;
            case SEAL_CH_DELETE:
                i = R.string.delete_failed;
                break;
            case SEAL_CH_MODIFY:
                i = R.string.modify_failed;
                break;
            case SEAL_CH_QUERY:
                i = R.string.query_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: private */
    public void b(SEAL_CHOPTION seal_choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (seal_choption) {
            case SEAL_CH_DELETE:
                i = R.string.delete_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: protected */
    public void b(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void c(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void d(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void e(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void f(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void g(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void d() {
        a(false, true, (int) R.string.please_wait, (int) R.drawable.load_spinner);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        a(ad.a(i));
    }

    /* access modifiers changed from: protected */
    public void b(int i) {
        b(ad.a(i));
    }

    /* access modifiers changed from: protected */
    public void a(String str) {
        c((int) R.drawable.mine_icon_win);
        c(str);
        ad.a((Runnable) new Runnable() {
            public void run() {
                SealChannelBaseFragment.this.f();
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void b(String str) {
        c((int) R.drawable.mine_icon_lose);
        c(str);
        ad.a((Runnable) new Runnable() {
            public void run() {
                SealChannelBaseFragment.this.e();
            }
        }, 1000);
    }

    /* access modifiers changed from: protected */
    public void e() {
        f();
    }

    /* access modifiers changed from: protected */
    public void c(int i) {
        if (this.c != null && i != -1) {
            this.c.a(i);
        }
    }

    /* access modifiers changed from: protected */
    public void c(String str) {
        if (this.c != null) {
            this.c.a(str);
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2, String str, int i) {
        if (this.c == null) {
            this.c = new h(getActivity());
        } else {
            this.c.dismiss();
            this.c = new h(getActivity());
        }
        this.c.a(str);
        this.c.a(i);
        this.c.setCanceledOnTouchOutside(z);
        this.c.setCancelable(z2);
        if (!this.c.isShowing()) {
            this.c.show();
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }

    /* access modifiers changed from: protected */
    public void f() {
        if (this.c != null && this.c.isShowing()) {
            this.c.dismiss();
        }
    }
}
