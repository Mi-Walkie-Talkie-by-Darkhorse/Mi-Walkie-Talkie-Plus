package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.UserChannelDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.adapter.d;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinRelayEditActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DolphinRelayFragment extends a implements d.c {
    private static final String v = DolphinRelayFragment.class.getSimpleName();
    private DolphinCHSettingActivity m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_relay)
    RecyclerViewEmptySupport mRvRelay;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;
    private com.ifengyu.intercom.ui.adapter.d n;
    private int o;
    private UserChannel p;
    private b.d.a.a.e.a u;
    private List<UserChannel> l = new ArrayList();
    private int q = -1;
    private UserChannelDao r = MiTalkiApp.b().g().f();
    private MiTalkiApp s = MiTalkiApp.b();
    private List<UserChannel> t = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinRelayFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0175a implements Runnable {
            RunnableC0175a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
                if (dolphinRelayFragment.mRvRelay != null && !dolphinRelayFragment.s.o()) {
                    DolphinRelayFragment dolphinRelayFragment2 = DolphinRelayFragment.this;
                    dolphinRelayFragment2.mRvRelay.setEmptyView(dolphinRelayFragment2.mTvEmptyView);
                }
                if (DolphinRelayFragment.this.u != null) {
                    DolphinRelayFragment.this.n.a(DolphinRelayFragment.this.m.w());
                    DolphinRelayFragment.this.u.notifyDataSetChanged();
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinRelayFragment.this.l.clear();
            List<UserChannel> list = DolphinRelayFragment.this.r.queryBuilder().where(UserChannelDao.Properties.Id.ge(100), UserChannelDao.Properties.Id.lt(120)).list();
            DolphinRelayFragment.this.l.clear();
            DolphinRelayFragment.this.l.addAll(list);
            k0.a(new RunnableC0175a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.k = true;
            dolphinRelayFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.k = true;
            dolphinRelayFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements q.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserChannel f6662a;

        d(UserChannel userChannel) {
            this.f6662a = userChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                DolphinRelayFragment.this.g(this.f6662a);
            } else if (i == 1) {
                Intent intent = new Intent(DolphinRelayFragment.this.getActivity(), DolphinRelayEditActivity.class);
                intent.setAction("com.ifengyu.action.RELAY_MODIFY_CHANNEL");
                intent.putExtra("relayInfo", this.f6662a);
                DolphinRelayFragment.this.startActivityForResult(intent, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6664a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserChannel f6665b;

        e(com.ifengyu.intercom.ui.widget.dialog.f fVar, UserChannel userChannel) {
            this.f6664a = fVar;
            this.f6665b = userChannel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6664a.b();
            DolphinRelayFragment.this.p = this.f6665b;
            DolphinRelayFragment.this.p.a(Long.valueOf(this.f6665b.e() + 100));
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.a(dolphinRelayFragment.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6667a;

        f(DolphinRelayFragment dolphinRelayFragment, com.ifengyu.intercom.ui.widget.dialog.f fVar) {
            this.f6667a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6667a.b();
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void h(StateUpdateEvent stateUpdateEvent) {
        UserChannel userChannel = this.p;
        if (userChannel != null) {
            this.m.b(userChannel);
            this.m.a(this.p);
            this.n.a(this.p);
            b.d.a.a.e.a aVar = this.u;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
        }
    }

    public void l() {
        if (!j.b().a()) {
            c0.a((CharSequence) k0.c(R.string.device_not_connected), false);
        } else if (this.k) {
            if (this.i < 16973824) {
                c0.a((CharSequence) k0.c(R.string.toast_the_firmware_low_please_upgrade_first), false);
            } else if (!d0.U()) {
                c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.l.size() >= 20) {
                c0.a((CharSequence) k0.c(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), DolphinRelayEditActivity.class);
                intent.setAction("com.ifengyu.action.RELAY_INSERT_CHANNEL");
                intent.putExtra("channelNum", c0.a(this.l));
                startActivityForResult(intent, 0);
            }
        }
    }

    public void m() {
        if (!d0.U()) {
            c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
        } else if (this.i < 16973824) {
            c0.a((CharSequence) k0.c(R.string.toast_the_firmware_low_please_upgrade_first), false);
        } else {
            com.ifengyu.intercom.network.d.e.a().execute(new a());
            if (this.s.o()) {
                this.mProgressBar.setVisibility(0);
                this.o = 0;
                this.t.clear();
                int i = this.o;
                this.o = i + 1;
                d(new UserChannel(i, 8, "", 0));
                this.k = false;
                k0.a(new b(), 10000L);
            } else if (this.i < 16973825) {
                this.mProgressBar.setVisibility(0);
                this.o = 0;
                this.t.clear();
                int i2 = this.o;
                this.o = i2 + 1;
                d(new UserChannel(i2, 8, "", 0));
                this.k = false;
                k0.a(new c(), 10000L);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        DolphinCHSettingActivity dolphinCHSettingActivity = (DolphinCHSettingActivity) getActivity();
        this.m = dolphinCHSettingActivity;
        this.n.a(dolphinCHSettingActivity.w());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = v;
        z.a(str, "onActivityResult:" + i);
        if (i == 0) {
            if (intent == null) {
                z.a(v, "result data is null...");
            } else if (i2 == 0) {
                UserChannel userChannel = (UserChannel) intent.getParcelableExtra("relayInfo");
                z.a(v, userChannel.toString());
                if (userChannel != null) {
                    z.a(v, "send relay insert....");
                    int a2 = c0.a(this.l);
                    userChannel.a(Long.valueOf(a2 + 100));
                    userChannel.c(a2);
                    userChannel.f(8);
                    this.p = userChannel;
                    b(userChannel);
                }
            }
        } else if (i != 1) {
        } else {
            if (i2 == 1) {
                if (intent == null) {
                    z.a(v, "result data is null...");
                    return;
                }
                UserChannel userChannel2 = (UserChannel) intent.getParcelableExtra("relayInfo");
                if (userChannel2 != null) {
                    z.a(v, "send relay modify....");
                    this.p = userChannel2;
                    userChannel2.a(Long.valueOf(userChannel2.e() + 100));
                    c(this.p);
                }
            } else if (i2 == 2) {
                UserChannel userChannel3 = (UserChannel) intent.getParcelableExtra("relayInfo");
                this.p = userChannel3;
                userChannel3.a(Long.valueOf(userChannel3.e() + 100));
                a(this.p);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.getBoolean("section_number", true);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_relay, viewGroup, false);
        ButterKnife.bind(this, inflate);
        this.mRvRelay.setLayoutManager(new WrapContentLinearLayoutManager(k0.a()));
        com.ifengyu.intercom.ui.adapter.d dVar = new com.ifengyu.intercom.ui.adapter.d(getActivity(), this.l);
        this.n = dVar;
        dVar.setOnItemClickListener(this);
        this.u = new b.d.a.a.e.a(this.n);
        View view = new View(k0.a());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) c0.a(90.0f)));
        view.setBackgroundColor(k0.a((int) R.color.white));
        this.u.a(view);
        this.mRvRelay.setFootOrHeaderNum(1);
        this.mRvRelay.setAdapter(this.u);
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        DolphinCHSettingActivity dolphinCHSettingActivity = this.m;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.x() == 2) {
            z.a(v, "relay fragment receiveChannelResponse");
            a(stateUpdateEvent);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void c(StateUpdateEvent stateUpdateEvent) {
        if (!stateUpdateEvent.f()) {
            UserChannel userChannel = this.p;
            if (userChannel != null) {
                this.l.add(userChannel);
                this.u.notifyItemInserted(this.l.size() - 1);
                this.r.insertOrReplace(this.p);
            }
        } else if (stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.RELAY) {
            UserChannel userChannel2 = null;
            int i = d0.f5308a;
            if (i == 1) {
                if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
                    userChannel2 = com.ifengyu.intercom.i.q.a(stateUpdateEvent.a(), stateUpdateEvent.b());
                }
            } else if (i == 2) {
                userChannel2 = com.ifengyu.intercom.i.q.a(stateUpdateEvent.a());
            }
            if (userChannel2 != null) {
                int indexOf = this.l.indexOf(userChannel2);
                if (indexOf != -1) {
                    UserChannel userChannel3 = this.l.get(indexOf);
                    userChannel3.a(userChannel2.a());
                    userChannel3.a(userChannel2.d());
                    userChannel3.b(userChannel2.b());
                    userChannel3.d(userChannel2.f());
                    userChannel3.e(userChannel2.g());
                    this.u.notifyItemChanged(indexOf);
                    UserChannel w = this.m.w();
                    if (this.p != null && w.equals(userChannel3)) {
                        this.m.b(userChannel3);
                        this.m.a(userChannel3);
                        return;
                    }
                    return;
                }
                this.l.add(userChannel2);
                this.u.notifyItemInserted(this.l.size() - 1);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void d(StateUpdateEvent stateUpdateEvent) {
        int indexOf;
        UserChannel userChannel = this.p;
        if (userChannel != null && (indexOf = this.l.indexOf(userChannel)) != -1) {
            UserChannel userChannel2 = this.l.get(indexOf);
            userChannel2.a(this.p.d());
            userChannel2.a(this.p.a());
            userChannel2.b(this.p.b());
            userChannel2.d(this.p.f());
            userChannel2.e(this.p.g());
            UserChannel w = this.m.w();
            if (w != null && w.equals(this.p)) {
                this.m.a(this.p);
            }
            this.u.notifyItemChanged(indexOf);
            this.r.insertOrReplace(this.p);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void e(StateUpdateEvent stateUpdateEvent) {
        if (this.o >= 20) {
            this.s.d(false);
            this.mProgressBar.setVisibility(8);
            this.mRvRelay.setEmptyView(this.mTvEmptyView);
            this.l.clear();
            this.l.addAll(this.t);
            b.d.a.a.e.a aVar = this.u;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            j();
            this.k = true;
            return;
        }
        int i = this.o;
        this.o = i + 1;
        d(new UserChannel(i, 8, "", 0));
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void f(StateUpdateEvent stateUpdateEvent) {
        if (!stateUpdateEvent.f() || stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.RELAY) {
            if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
                this.t.add(com.ifengyu.intercom.i.q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
            } else if (stateUpdateEvent.f()) {
                this.t.add(com.ifengyu.intercom.i.q.a(stateUpdateEvent.a()));
            }
            if (this.o >= 20) {
                this.s.d(false);
                this.mProgressBar.setVisibility(8);
                this.mRvRelay.setEmptyView(this.mTvEmptyView);
                this.l.clear();
                this.l.addAll(this.t);
                b.d.a.a.e.a aVar = this.u;
                if (aVar != null) {
                    aVar.notifyDataSetChanged();
                }
                j();
                this.k = true;
                return;
            }
            int i = this.o;
            this.o = i + 1;
            d(new UserChannel(i, 8, "", 0));
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void g(StateUpdateEvent stateUpdateEvent) {
        if (this.h) {
            if (!stateUpdateEvent.f()) {
                return;
            }
            if (d0.f5308a == 1 && stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.m.a(com.ifengyu.intercom.i.q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.m.a(com.ifengyu.intercom.i.q.a(stateUpdateEvent.a()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (d0.f5308a == 1 && stateUpdateEvent.b().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.m.a(com.ifengyu.intercom.i.q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.m.a(com.ifengyu.intercom.i.q.a(stateUpdateEvent.b()));
        }
    }

    public static DolphinRelayFragment a(boolean z, int i) {
        DolphinRelayFragment dolphinRelayFragment = new DolphinRelayFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i);
        dolphinRelayFragment.setArguments(bundle);
        return dolphinRelayFragment;
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void b(StateUpdateEvent stateUpdateEvent) {
        int i = this.q;
        if (i != -1) {
            this.l.remove(i);
            this.u.notifyItemRemoved(this.q);
            this.r.delete(this.p);
        }
    }

    @Override // com.ifengyu.intercom.ui.adapter.d.c
    public void b(View view, int i, UserChannel userChannel) {
        if (d0.f5308a < 2) {
            c0.a((CharSequence) k0.c(R.string.toast_the_firmware_low_and_not_suppot_relay), false);
            return;
        }
        this.p = userChannel;
        userChannel.a(Long.valueOf(userChannel.e() + 100));
        e(userChannel);
    }

    @Override // com.ifengyu.intercom.ui.adapter.d.c
    public void a(View view, int i, UserChannel userChannel) {
        this.q = i;
        this.p = userChannel;
        userChannel.a(Long.valueOf(userChannel.e() + 100));
        f(userChannel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = v;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m();
            return;
        }
        k0.f();
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null && progressBar.isShown()) {
            this.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(v, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(UserChannel userChannel) {
        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(getActivity());
        fVar.c(R.string.common_delete);
        fVar.a(k0.a((int) R.string.dialog_are_you_sure_delete_the_selected_relay_channel, c0.b(userChannel.a()), c0.b(userChannel.b())));
        fVar.a(R.string.common_cancel, new f(this, fVar));
        fVar.c(R.string.common_select, new e(fVar, userChannel));
        fVar.a();
        fVar.d();
    }

    public void f(UserChannel userChannel) {
        String[] strArr = {k0.c(R.string.common_delete), k0.c(R.string.edit), k0.c(R.string.common_cancel)};
        q qVar = new q(getActivity());
        qVar.a(k0.a((int) R.string.dialog_title_delete_relay, c0.b(userChannel.a()), c0.b(userChannel.b())));
        qVar.a(true);
        qVar.a(strArr, new d(userChannel));
        qVar.show();
    }
}
