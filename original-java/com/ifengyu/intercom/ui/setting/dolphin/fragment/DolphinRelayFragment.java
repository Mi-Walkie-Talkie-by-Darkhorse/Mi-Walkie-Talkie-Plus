package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.UserChannelDao;
import com.ifengyu.intercom.greendao.dao.UserChannelDao.Properties;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.adapter.d;
import com.ifengyu.intercom.ui.adapter.d.a;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinRelayEditActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.dialog.q.b;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

public class DolphinRelayFragment extends DolphinChannelBaseFragment implements a {
    private static final String g = DolphinRelayFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public List<UserChannel> h = new ArrayList();
    private boolean i;
    /* access modifiers changed from: private */
    public DolphinCHSettingActivity j;
    /* access modifiers changed from: private */
    public d k;
    private int l;
    /* access modifiers changed from: private */
    public UserChannel m;
    @BindView(2131755577)
    ProgressBar mProgressBar;
    @BindView(2131755576)
    RecyclerViewEmptySupport mRvRelay;
    @BindView(2131755370)
    TextView mTvEmptyView;
    private int n = -1;
    /* access modifiers changed from: private */
    public UserChannelDao o = MiTalkiApp.a().b().g();
    /* access modifiers changed from: private */
    public MiTalkiApp p = MiTalkiApp.a();
    private List<UserChannel> q = new ArrayList();
    /* access modifiers changed from: private */
    public com.zhy.a.a.c.a r;

    public static DolphinRelayFragment a(boolean z, int i2) {
        DolphinRelayFragment dolphinRelayFragment = new DolphinRelayFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i2);
        dolphinRelayFragment.setArguments(bundle);
        return dolphinRelayFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.i = arguments.getBoolean("section_number", true);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_relay, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        this.mRvRelay.setLayoutManager(new WrapContentLinearLayoutManager(ad.a()));
        this.k = new d(getActivity(), this.h);
        this.k.setOnItemClickListener(this);
        this.r = new com.zhy.a.a.c.a(this.k);
        View view = new View(ad.a());
        view.setLayoutParams(new LayoutParams(-1, (int) v.a(90.0f)));
        view.setBackgroundColor(ad.d(R.color.white));
        this.r.a(view);
        this.mRvRelay.setFootOrHeaderNum(1);
        this.mRvRelay.setAdapter(this.r);
        return inflate;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.j = (DolphinCHSettingActivity) getActivity();
        this.k.a(this.j.d());
    }

    public void a() {
        if (!w.ag()) {
            v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
        } else if (this.d < 16973824) {
            v.a((CharSequence) ad.a((int) R.string.toast_the_firmware_low_please_upgrade_first), false);
        } else {
            e.b().execute(new Runnable() {
                public void run() {
                    DolphinRelayFragment.this.h.clear();
                    List c = DolphinRelayFragment.this.o.queryBuilder().a(Properties.a.d(Integer.valueOf(100)), Properties.a.c(Integer.valueOf(120))).c();
                    DolphinRelayFragment.this.h.clear();
                    DolphinRelayFragment.this.h.addAll(c);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            if (DolphinRelayFragment.this.mRvRelay != null && !DolphinRelayFragment.this.p.c()) {
                                DolphinRelayFragment.this.mRvRelay.setEmptyView(DolphinRelayFragment.this.mTvEmptyView);
                            }
                            if (DolphinRelayFragment.this.r != null) {
                                DolphinRelayFragment.this.k.a(DolphinRelayFragment.this.j.d());
                                DolphinRelayFragment.this.r.notifyDataSetChanged();
                            }
                        }
                    });
                }
            });
            if (this.p.c()) {
                this.mProgressBar.setVisibility(0);
                this.l = 0;
                this.q.clear();
                int i2 = this.l;
                this.l = i2 + 1;
                e(new UserChannel(i2, 8, "", 0));
                this.f = false;
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        DolphinRelayFragment.this.f = true;
                        DolphinRelayFragment.this.mProgressBar.setVisibility(8);
                    }
                }, (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
            } else if (this.d < 16973825) {
                this.mProgressBar.setVisibility(0);
                this.l = 0;
                this.q.clear();
                int i3 = this.l;
                this.l = i3 + 1;
                e(new UserChannel(i3, 8, "", 0));
                this.f = false;
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        DolphinRelayFragment.this.f = true;
                        DolphinRelayFragment.this.mProgressBar.setVisibility(8);
                    }
                }, (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
            }
        }
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        if (this.j == null || this.j.c() == 2) {
            s.b(g, "relay fragment receiveChannelResponse");
            a(stateUpdateEvent);
        }
    }

    /* access modifiers changed from: protected */
    public void b(StateUpdateEvent stateUpdateEvent) {
        if (this.c) {
            if (!stateUpdateEvent.f()) {
                return;
            }
            if (w.a == 1 && stateUpdateEvent.d().getType() == CHTYPE.RELAY) {
                this.j.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.j.a(m.a(stateUpdateEvent.d()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (w.a == 1 && stateUpdateEvent.e().getType() == CHTYPE.RELAY) {
                this.j.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.j.a(m.a(stateUpdateEvent.e()));
        }
    }

    /* access modifiers changed from: protected */
    public void c(StateUpdateEvent stateUpdateEvent) {
        if (this.m != null) {
            this.j.b(this.m);
            this.j.a(this.m);
            this.k.a(this.m);
            if (this.r != null) {
                this.r.notifyDataSetChanged();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void g(StateUpdateEvent stateUpdateEvent) {
        UserChannel userChannel;
        if (stateUpdateEvent.f()) {
            if (stateUpdateEvent.d().getType() == CHTYPE.RELAY) {
                if (w.a == 1) {
                    if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
                        userChannel = m.a(stateUpdateEvent.d(), stateUpdateEvent.e());
                    }
                    userChannel = null;
                } else {
                    if (w.a == 2) {
                        userChannel = m.a(stateUpdateEvent.d());
                    }
                    userChannel = null;
                }
                if (userChannel != null) {
                    int indexOf = this.h.indexOf(userChannel);
                    if (indexOf != -1) {
                        UserChannel userChannel2 = (UserChannel) this.h.get(indexOf);
                        userChannel2.c(userChannel.e());
                        userChannel2.a(userChannel.d());
                        userChannel2.e(userChannel.g());
                        userChannel2.d(userChannel.f());
                        userChannel2.f(userChannel.h());
                        this.r.notifyItemChanged(indexOf);
                        UserChannel d = this.j.d();
                        if (this.m != null && d.equals(userChannel2)) {
                            this.j.b(userChannel2);
                            this.j.a(userChannel2);
                            return;
                        }
                        return;
                    }
                    this.h.add(userChannel);
                    this.r.notifyItemInserted(this.h.size() - 1);
                }
            }
        } else if (this.m != null) {
            this.h.add(this.m);
            this.r.notifyItemInserted(this.h.size() - 1);
            this.o.insertOrReplace(this.m);
        }
    }

    /* access modifiers changed from: protected */
    public void e(StateUpdateEvent stateUpdateEvent) {
        if (this.m != null) {
            int indexOf = this.h.indexOf(this.m);
            if (indexOf != -1) {
                UserChannel userChannel = (UserChannel) this.h.get(indexOf);
                userChannel.a(this.m.d());
                userChannel.c(this.m.e());
                userChannel.e(this.m.g());
                userChannel.d(this.m.f());
                userChannel.f(this.m.h());
                UserChannel d = this.j.d();
                if (d != null && d.equals(this.m)) {
                    this.j.a(this.m);
                }
                this.r.notifyItemChanged(indexOf);
                this.o.insertOrReplace(this.m);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void f(StateUpdateEvent stateUpdateEvent) {
        if (this.n != -1) {
            UserChannel userChannel = (UserChannel) this.h.remove(this.n);
            this.r.notifyItemRemoved(this.n);
            this.o.delete(this.m);
        }
    }

    /* access modifiers changed from: protected */
    public void d(StateUpdateEvent stateUpdateEvent) {
        if (!stateUpdateEvent.f() || stateUpdateEvent.d().getType() == CHTYPE.RELAY) {
            if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
                this.q.add(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
            } else if (stateUpdateEvent.f()) {
                this.q.add(m.a(stateUpdateEvent.d()));
            }
            if (this.l >= 20) {
                this.p.a(false);
                this.mProgressBar.setVisibility(8);
                this.mRvRelay.setEmptyView(this.mTvEmptyView);
                this.h.clear();
                this.h.addAll(this.q);
                if (this.r != null) {
                    this.r.notifyDataSetChanged();
                }
                e();
                this.f = true;
                return;
            }
            int i2 = this.l;
            this.l = i2 + 1;
            e(new UserChannel(i2, 8, "", 0));
        }
    }

    /* access modifiers changed from: protected */
    public void h(StateUpdateEvent stateUpdateEvent) {
        if (this.l >= 20) {
            this.p.a(false);
            this.mProgressBar.setVisibility(8);
            this.mRvRelay.setEmptyView(this.mTvEmptyView);
            this.h.clear();
            this.h.addAll(this.q);
            if (this.r != null) {
                this.r.notifyDataSetChanged();
            }
            e();
            this.f = true;
            return;
        }
        int i2 = this.l;
        this.l = i2 + 1;
        e(new UserChannel(i2, 8, "", 0));
    }

    public void a(View view, int i2, UserChannel userChannel) {
        if (w.a < 2) {
            v.a((CharSequence) ad.a((int) R.string.toast_the_firmware_low_and_not_suppot_relay), false);
            return;
        }
        this.m = userChannel;
        this.m.a(Long.valueOf((long) (userChannel.b() + 100)));
        a(userChannel);
    }

    public void b(View view, int i2, UserChannel userChannel) {
        this.n = i2;
        this.m = userChannel;
        this.m.a(Long.valueOf((long) (userChannel.b() + 100)));
        f(userChannel);
    }

    public void f() {
        if (!k.a().b()) {
            v.a((CharSequence) ad.a((int) R.string.device_not_connected), false);
        } else if (!this.f) {
        } else {
            if (this.d < 16973824) {
                v.a((CharSequence) ad.a((int) R.string.toast_the_firmware_low_please_upgrade_first), false);
            } else if (!w.ag()) {
                v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.h.size() >= 20) {
                v.a((CharSequence) ad.a((int) R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), DolphinRelayEditActivity.class);
                intent.setAction("com.ifengyu.action.RELAY_INSERT_CHANNEL");
                intent.putExtra("channelNum", v.a(this.h));
                startActivityForResult(intent, 0);
            }
        }
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        s.b(g, "onActivityResult:" + i2);
        if (i2 == 0) {
            if (intent == null) {
                s.b(g, "result data is null...");
            } else if (i3 == 0) {
                UserChannel userChannel = (UserChannel) intent.getParcelableExtra("relayInfo");
                s.b(g, userChannel.toString());
                if (userChannel != null) {
                    s.b(g, "send relay insert....");
                    int a = v.a(this.h);
                    userChannel.a(Long.valueOf(((long) a) + 100));
                    userChannel.a(a);
                    userChannel.b(8);
                    this.m = userChannel;
                    b(this.m);
                }
            }
        } else if (i2 != 1) {
        } else {
            if (i3 == 1) {
                if (intent == null) {
                    s.b(g, "result data is null...");
                    return;
                }
                UserChannel userChannel2 = (UserChannel) intent.getParcelableExtra("relayInfo");
                if (userChannel2 != null) {
                    s.b(g, "send relay modify....");
                    this.m = userChannel2;
                    this.m.a(Long.valueOf((long) (userChannel2.b() + 100)));
                    c(this.m);
                }
            } else if (i3 == 2) {
                UserChannel userChannel3 = (UserChannel) intent.getParcelableExtra("relayInfo");
                this.m = userChannel3;
                this.m.a(Long.valueOf((long) (userChannel3.b() + 100)));
                d(this.m);
            }
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void f(final UserChannel userChannel) {
        new q(getActivity()).a((CharSequence) ad.a((int) R.string.dialog_title_delete_relay, v.c(userChannel.e()), v.c(userChannel.g()))).a(true).a(new String[]{ad.a((int) R.string.common_delete), ad.a((int) R.string.edit), ad.a((int) R.string.common_cancel)}, new b() {
            public void a(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        DolphinRelayFragment.this.g(userChannel);
                        return;
                    case 1:
                        Intent intent = new Intent(DolphinRelayFragment.this.getActivity(), DolphinRelayEditActivity.class);
                        intent.setAction("com.ifengyu.action.RELAY_MODIFY_CHANNEL");
                        intent.putExtra("relayInfo", userChannel);
                        DolphinRelayFragment.this.startActivityForResult(intent, 1);
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void g(final UserChannel userChannel) {
        final com.ifengyu.intercom.ui.widget.dialog.d dVar = new com.ifengyu.intercom.ui.widget.dialog.d(getActivity());
        dVar.a((int) R.string.common_delete).b((CharSequence) ad.a((int) R.string.dialog_are_you_sure_delete_the_selected_relay_channel, v.c(userChannel.e()), v.c(userChannel.g())));
        dVar.a((int) R.string.common_cancel, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
            }
        }).b((int) R.string.common_select, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
                DolphinRelayFragment.this.m = userChannel;
                DolphinRelayFragment.this.m.a(Long.valueOf((long) (userChannel.b() + 100)));
                DolphinRelayFragment.this.d(DolphinRelayFragment.this.m);
            }
        }).b().c();
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        s.b(g, "onFragmentFirstVisible");
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        super.a(z);
        s.b(g, "onFragmentVisibleChange:" + z);
        if (z) {
            a();
            return;
        }
        ad.d();
        if (this.mProgressBar != null && this.mProgressBar.isShown()) {
            this.mProgressBar.setVisibility(8);
        }
    }
}
