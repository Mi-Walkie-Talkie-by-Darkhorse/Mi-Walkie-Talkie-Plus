package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.h;

public abstract class DolphinChannelBaseFragment extends BaseFragment {
    protected final String b = getClass().getSimpleName();
    protected boolean c;
    protected int d;
    protected h e;
    protected boolean f = true;

    /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinChannelBaseFragment$8 reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] a = new int[STATECODE.values().length];

        static {
            b = new int[CHOPTION.values().length];
            try {
                b[CHOPTION.ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[CHOPTION.CH_DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[CHOPTION.CH_MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[CHOPTION.CH_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[CHOPTION.CH_QUERY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[STATECODE.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[STATECODE.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[STATECODE.PARAMERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[STATECODE.NOTSUPPORT.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[STATECODE.FINAL.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void b(StateUpdateEvent stateUpdateEvent);

    /* access modifiers changed from: protected */
    public abstract void c(StateUpdateEvent stateUpdateEvent);

    public void onAttach(Context context) {
        super.onAttach(context);
        s.b(this.b, "onAttach");
    }

    public void a() {
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        s.b(this.b, "onCreate");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.c = arguments.getBoolean("is_first_channel", true);
            this.d = arguments.getInt("version_mcu", 0);
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
        a.a().a((Object) this);
        s.b(this.b, "onResume");
    }

    public void onPause() {
        super.onPause();
        a.a().b((Object) this);
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
    }

    public void onDetach() {
        super.onDetach();
        s.b(this.b, "onDetach");
    }

    /* access modifiers changed from: protected */
    public void a(UserChannel userChannel) {
        s.b(this.b, "showProgressDialog");
        d();
        m.a(userChannel, this.c);
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    /* access modifiers changed from: protected */
    public void b(UserChannel userChannel) {
        d();
        m.b(userChannel);
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    /* access modifiers changed from: protected */
    public void c(UserChannel userChannel) {
        d();
        m.c(userChannel);
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    /* access modifiers changed from: protected */
    public void d(UserChannel userChannel) {
        d();
        if (this.d <= 16908288) {
            m.b(userChannel, this.c);
        } else {
            m.b(userChannel, true);
        }
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinChannelBaseFragment.this.b((int) R.string.operation_time_out);
            }
        }, 2000);
    }

    public void e(UserChannel userChannel) {
        m.a(userChannel);
    }

    public void a(UserChannel userChannel, UserChannel userChannel2) {
        m.a(userChannel, userChannel2);
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
                DolphinChannelBaseFragment.this.e();
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void b(String str) {
        c((int) R.drawable.mine_icon_lose);
        c(str);
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinChannelBaseFragment.this.e();
            }
        }, 1000);
    }

    /* access modifiers changed from: protected */
    public void e() {
        f();
    }

    private void c(int i) {
        if (this.e != null && i != -1) {
            this.e.a(i);
        }
    }

    private void c(String str) {
        if (this.e != null) {
            this.e.a(str);
        }
    }

    private void a(boolean z, boolean z2, String str, int i) {
        if (this.e == null) {
            this.e = new h(getActivity());
        } else {
            this.e.dismiss();
            this.e = new h(getActivity());
        }
        this.e.a(str);
        this.e.a(i);
        this.e.setCanceledOnTouchOutside(z);
        this.e.setCancelable(z2);
        if (!this.e.isShowing()) {
            this.e.show();
        }
    }

    private void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }

    private void f() {
        if (this.e != null && this.e.isShowing()) {
            this.e.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void a(final StateUpdateEvent stateUpdateEvent) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                STATECODE b2 = stateUpdateEvent.b();
                CHOPTION a2 = stateUpdateEvent.a();
                switch (AnonymousClass8.a[b2.ordinal()]) {
                    case 1:
                        s.c(DolphinChannelBaseFragment.this.b, "state response: success");
                        DolphinChannelBaseFragment.this.a(a2, stateUpdateEvent);
                        return;
                    case 2:
                        s.c(DolphinChannelBaseFragment.this.b, "state response: failed");
                        if (a2 == CHOPTION.CH_QUERY) {
                            DolphinChannelBaseFragment.this.h(stateUpdateEvent);
                            return;
                        } else {
                            DolphinChannelBaseFragment.this.c(a2);
                            return;
                        }
                    case 3:
                        s.c(DolphinChannelBaseFragment.this.b, "state response: param error");
                        return;
                    case 4:
                        s.c(DolphinChannelBaseFragment.this.b, "state response: not support");
                        DolphinChannelBaseFragment.this.b(a2);
                        return;
                    case 5:
                        s.c(DolphinChannelBaseFragment.this.b, "state response: final");
                        DolphinChannelBaseFragment.this.a(a2);
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(CHOPTION choption, StateUpdateEvent stateUpdateEvent) {
        ad.d();
        if (choption == CHOPTION.ST_QUERY) {
            b(stateUpdateEvent);
        } else if (choption == CHOPTION.ST_UPDATE) {
            a((int) R.string.set_success);
            c(stateUpdateEvent);
        } else if (choption == CHOPTION.CH_INSERT) {
            a((int) R.string.insert_success);
            g(stateUpdateEvent);
        } else if (choption == CHOPTION.CH_DELETE) {
            a((int) R.string.delete_success);
            f(stateUpdateEvent);
        } else if (choption == CHOPTION.CH_MODIFY) {
            a((int) R.string.modify_success);
            e(stateUpdateEvent);
        } else if (choption == CHOPTION.CH_QUERY) {
            d(stateUpdateEvent);
        }
    }

    /* access modifiers changed from: protected */
    public void a(CHOPTION choption) {
        ad.d();
        e();
    }

    /* access modifiers changed from: private */
    public void b(CHOPTION choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (choption) {
            case ST_UPDATE:
                i = R.string.not_support_switch;
                break;
            case CH_DELETE:
                i = R.string.not_support_delete;
                break;
            case CH_MODIFY:
                i = R.string.not_support_modify;
                break;
            case CH_INSERT:
                i = R.string.not_support_add;
                break;
            case CH_QUERY:
                i = R.string.not_support_query;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: private */
    public void c(CHOPTION choption) {
        ad.d();
        int i = R.string.operation_failed;
        switch (choption) {
            case ST_UPDATE:
                i = R.string.set_failed;
                break;
            case CH_DELETE:
                i = R.string.in_using;
                break;
            case CH_MODIFY:
                i = R.string.modify_failed;
                break;
            case CH_INSERT:
                i = R.string.insert_failed;
                break;
            case CH_QUERY:
                i = R.string.query_failed;
                break;
        }
        b(i);
    }

    /* access modifiers changed from: protected */
    public void d(StateUpdateEvent stateUpdateEvent) {
    }

    /* access modifiers changed from: protected */
    public void e(StateUpdateEvent stateUpdateEvent) {
    }

    /* access modifiers changed from: protected */
    public void f(StateUpdateEvent stateUpdateEvent) {
    }

    /* access modifiers changed from: protected */
    public void g(StateUpdateEvent stateUpdateEvent) {
    }

    /* access modifiers changed from: protected */
    public void h(StateUpdateEvent stateUpdateEvent) {
    }
}
