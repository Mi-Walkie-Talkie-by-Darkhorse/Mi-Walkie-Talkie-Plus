package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.h;

public abstract class SharkChannelBaseFragment extends BaseFragment {
    protected final String b = getClass().getSimpleName();
    protected boolean c;
    protected h d;
    protected boolean e = true;

    /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.SharkChannelBaseFragment$6 reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] a = new int[SHARK_ST_UERR.values().length];
        static final /* synthetic */ int[] b = new int[SHARK_CH_UERR.values().length];

        static {
            d = new int[SHARK_CHOPTION.values().length];
            try {
                d[SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                d[SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                d[SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                d[SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            c = new int[SHARK_STOPTION.values().length];
            try {
                c[SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                c[SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_OK.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
            try {
                b[SHARK_CH_UERR.SHARK_CH_QUERY_FINISH.ordinal()] = 6;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[SHARK_ST_UERR.SHARK_ST_OK.ordinal()] = 1;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[SHARK_ST_UERR.SHARK_ST_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[SHARK_ST_UERR.SHARK_ST_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e15) {
            }
            try {
                a[SHARK_ST_UERR.SHARK_ST_FORBIDE.ordinal()] = 4;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void b(SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    /* access modifiers changed from: protected */
    public abstract void c(SHARK_ChannelStateOperate sHARK_ChannelStateOperate);

    public void onAttach(Context context) {
        super.onAttach(context);
        s.b(this.b, "onAttach");
        a.a().a((Object) this);
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        s.b(this.b, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.c = arguments.getBoolean("shark_arg_is_major_channel", true);
        }
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
        ab.a(sealSharkChannel, this.c);
        a();
    }

    /* access modifiers changed from: protected */
    public void b(SealSharkChannel sealSharkChannel) {
        d();
        ab.a(sealSharkChannel);
        a();
    }

    /* access modifiers changed from: protected */
    public void c(SealSharkChannel sealSharkChannel) {
        d();
        ab.c(sealSharkChannel);
        a();
    }

    /* access modifiers changed from: protected */
    public void d(SealSharkChannel sealSharkChannel) {
        d();
        ab.b(sealSharkChannel);
        a();
    }

    public void e(SealSharkChannel sealSharkChannel) {
        ab.d(sealSharkChannel);
    }

    /* access modifiers changed from: protected */
    public void a() {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SharkChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    /* access modifiers changed from: protected */
    public void a(final SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SHARK_ST_UERR result = sHARK_ChannelStateOperate.getResult();
                SHARK_STOPTION option = sHARK_ChannelStateOperate.getOption();
                switch (AnonymousClass6.a[result.ordinal()]) {
                    case 1:
                        s.c(SharkChannelBaseFragment.this.b, "state response: success");
                        SharkChannelBaseFragment.this.a(option, sHARK_ChannelStateOperate);
                        return;
                    case 2:
                        s.c(SharkChannelBaseFragment.this.b, "state response: failed");
                        SharkChannelBaseFragment.this.a(option);
                        return;
                    case 3:
                        s.c(SharkChannelBaseFragment.this.b, "state response: SHARK_EMPTY");
                        return;
                    case 4:
                        s.c(SharkChannelBaseFragment.this.b, "state response: SHARK_FORBIDE");
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void a(final SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                SHARK_CH_UERR result = sHARK_ChannelInfoOperate.getResult();
                SHARK_CHOPTION option = sHARK_ChannelInfoOperate.getOption();
                switch (AnonymousClass6.b[result.ordinal()]) {
                    case 1:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: success");
                        SharkChannelBaseFragment.this.a(option, sHARK_ChannelInfoOperate);
                        return;
                    case 2:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: failed");
                        SharkChannelBaseFragment.this.a(option);
                        return;
                    case 3:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: SHARK_EMPTY");
                        SharkChannelBaseFragment.this.e(sHARK_ChannelInfoOperate);
                        return;
                    case 4:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: SHARK_FORBIDE");
                        SharkChannelBaseFragment.this.b(option);
                        return;
                    case 5:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: SHARK_CH_QUERY_CONTINUE");
                        SharkChannelBaseFragment.this.f(sHARK_ChannelInfoOperate);
                        return;
                    case 6:
                        s.c(SharkChannelBaseFragment.this.b, "ChannelInfo response: SHARK_CH_QUERY_FINISH");
                        SharkChannelBaseFragment.this.g(sHARK_ChannelInfoOperate);
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(SHARK_STOPTION shark_stoption, SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        ad.d();
        switch (shark_stoption) {
            case SHARK_ST_QUERY:
                b(sHARK_ChannelStateOperate);
                return;
            case SHARK_ST_UPDATE:
                c(sHARK_ChannelStateOperate);
                f();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(SHARK_CHOPTION shark_choption, SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        ad.d();
        switch (shark_choption) {
            case SHARK_CH_INSERT:
                a((int) R.string.insert_success);
                b(sHARK_ChannelInfoOperate);
                return;
            case SHARK_CH_DELETE:
                a((int) R.string.delete_success);
                c(sHARK_ChannelInfoOperate);
                return;
            case SHARK_CH_MODIFY:
                a((int) R.string.modify_success);
                d(sHARK_ChannelInfoOperate);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(SHARK_STOPTION shark_stoption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (shark_stoption) {
            case SHARK_ST_UPDATE:
                i = R.string.set_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: private */
    public void a(SHARK_CHOPTION shark_choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (shark_choption) {
            case SHARK_CH_INSERT:
                i = R.string.insert_failed;
                break;
            case SHARK_CH_DELETE:
                i = R.string.delete_failed;
                break;
            case SHARK_CH_MODIFY:
                i = R.string.modify_failed;
                break;
            case SHARK_CH_QUERY:
                i = R.string.query_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: private */
    public void b(SHARK_CHOPTION shark_choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (shark_choption) {
            case SHARK_CH_DELETE:
                i = R.string.delete_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: protected */
    public void b(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void c(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void d(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void e(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void f(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    /* access modifiers changed from: protected */
    public void g(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
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
                SharkChannelBaseFragment.this.e();
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void b(String str) {
        c((int) R.drawable.mine_icon_lose);
        c(str);
        ad.a((Runnable) new Runnable() {
            public void run() {
                SharkChannelBaseFragment.this.e();
            }
        }, 1000);
    }

    /* access modifiers changed from: protected */
    public void e() {
        f();
    }

    /* access modifiers changed from: protected */
    public void c(int i) {
        if (this.d != null && i != -1) {
            this.d.a(i);
        }
    }

    /* access modifiers changed from: protected */
    public void c(String str) {
        if (this.d != null) {
            this.d.a(str);
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2, String str, int i) {
        if (this.d == null) {
            this.d = new h(getActivity());
        } else {
            this.d.dismiss();
            this.d = new h(getActivity());
        }
        this.d.a(str);
        this.d.a(i);
        this.d.setCanceledOnTouchOutside(z);
        this.d.setCancelable(z2);
        if (!this.d.isShowing()) {
            this.d.show();
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }

    /* access modifiers changed from: protected */
    public void f() {
        if (this.d != null && this.d.isShowing()) {
            this.d.dismiss();
        }
    }
}
