package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.content.DialogInterface;
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
import com.ifengyu.intercom.i.q;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.o;
import com.ifengyu.intercom.ui.widget.dialog.p;
import com.ifengyu.intercom.ui.widget.dialog.v;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DolphinCustomFragment extends a {
    private static final String u = DolphinCustomFragment.class.getSimpleName();
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_relay)
    RecyclerViewEmptySupport mRvCustom;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;
    private DolphinCHSettingActivity o;
    private UserChannel p;
    private b.d.a.a.e.a t;
    private List<UserChannel> l = new ArrayList();
    private UserChannelDao m = MiTalkiApp.b().g().f();
    private MiTalkiApp n = MiTalkiApp.b();
    private int q = -1;
    private int r = 0;
    private List<UserChannel> s = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinCustomFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0173a implements Runnable {
            RunnableC0173a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
                if (dolphinCustomFragment.mRvCustom != null && !dolphinCustomFragment.n.n()) {
                    DolphinCustomFragment dolphinCustomFragment2 = DolphinCustomFragment.this;
                    dolphinCustomFragment2.mRvCustom.setEmptyView(dolphinCustomFragment2.mTvEmptyView);
                }
                if (DolphinCustomFragment.this.t != null) {
                    DolphinCustomFragment.this.t.notifyDataSetChanged();
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinCustomFragment.this.l.clear();
            List<UserChannel> list = DolphinCustomFragment.this.m.queryBuilder().where(UserChannelDao.Properties.Id.ge(0), UserChannelDao.Properties.Id.lt(20)).list();
            DolphinCustomFragment.this.l.clear();
            DolphinCustomFragment.this.l.addAll(list);
            k0.a(new RunnableC0173a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6621a;

        b(DolphinCustomFragment dolphinCustomFragment, com.ifengyu.intercom.ui.widget.dialog.f fVar) {
            this.f6621a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6621a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements v.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserChannel f6622a;

        c(UserChannel userChannel) {
            this.f6622a = userChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.v.a
        public void a(String str) {
            DolphinCustomFragment.this.p = new UserChannel(this.f6622a.e(), this.f6622a.h(), str, this.f6622a.a());
            DolphinCustomFragment.this.p.a(Long.valueOf(this.f6622a.e()));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.c(dolphinCustomFragment.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements p.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserChannel f6624a;

        d(UserChannel userChannel) {
            this.f6624a = userChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void a(String str) {
            if (this.f6624a != null) {
                DolphinCustomFragment.this.p = new UserChannel(this.f6624a.e(), this.f6624a.h(), this.f6624a.d(), c0.c(str));
                DolphinCustomFragment.this.p.a(Long.valueOf(this.f6624a.e()));
                DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
                dolphinCustomFragment.c(dolphinCustomFragment.p);
            }
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void b(String str) {
            int a2 = c0.a(DolphinCustomFragment.this.l);
            DolphinCustomFragment.this.p = new UserChannel(a2, 2, k0.a((int) R.string.channel_custom_d, Integer.valueOf(a2 + 1)), c0.c(str));
            DolphinCustomFragment.this.p.a(Long.valueOf(a2));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.b(dolphinCustomFragment.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements o.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserChannel f6626a;

        e(UserChannel userChannel) {
            this.f6626a = userChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void a(String str) {
            if (this.f6626a != null) {
                DolphinCustomFragment.this.p = new UserChannel(this.f6626a.e(), this.f6626a.h(), this.f6626a.d(), c0.c(str));
                DolphinCustomFragment.this.p.a(Long.valueOf(this.f6626a.e()));
                DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
                dolphinCustomFragment.c(dolphinCustomFragment.p);
            }
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void b(String str) {
            int a2 = c0.a(DolphinCustomFragment.this.l);
            DolphinCustomFragment.this.p = new UserChannel(a2, 2, k0.a((int) R.string.channel_custom_d, Integer.valueOf(a2 + 1)), c0.c(str));
            DolphinCustomFragment.this.p.a(Long.valueOf(a2));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.b(dolphinCustomFragment.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.k = true;
            dolphinCustomFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.k = true;
            dolphinCustomFragment.mProgressBar.setVisibility(8);
        }
    }

    /* loaded from: classes2.dex */
    class h extends com.ifengyu.intercom.ui.adapter.i<UserChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserChannel f6630a;

            a(UserChannel userChannel) {
                this.f6630a = userChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinCustomFragment.this.p = this.f6630a;
                DolphinCustomFragment.this.e(this.f6630a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b.d.a.a.c.c f6632a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserChannel f6633b;

            b(b.d.a.a.c.c cVar, UserChannel userChannel) {
                this.f6632a = cVar;
                this.f6633b = userChannel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                DolphinCustomFragment.this.q = this.f6632a.getLayoutPosition();
                DolphinCustomFragment.this.i(this.f6633b);
                return true;
            }
        }

        h(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(b.d.a.a.c.c cVar, UserChannel userChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_custom_name);
            TextView textView2 = (TextView) cVar.a(R.id.tv_custom_freq);
            if (DolphinCustomFragment.this.o != null) {
                if (userChannel.equals(DolphinCustomFragment.this.o.w())) {
                    textView.setTextColor(k0.a((int) R.color.select_color));
                    textView2.setTextColor(k0.a((int) R.color.select_color));
                } else {
                    textView.setTextColor(k0.a((int) R.color.black80));
                    textView2.setTextColor(k0.a((int) R.color.black));
                }
            }
            textView.setText(userChannel.d());
            textView2.setText(c0.b(userChannel.a()));
            cVar.itemView.setOnClickListener(new a(userChannel));
            cVar.itemView.setOnLongClickListener(new b(cVar, userChannel));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6635a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserChannel f6636b;

        i(com.ifengyu.intercom.ui.widget.dialog.f fVar, UserChannel userChannel) {
            this.f6635a = fVar;
            this.f6636b = userChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f6635a.b();
            DolphinCustomFragment.this.g(this.f6636b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6638a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserChannel f6639b;

        j(com.ifengyu.intercom.ui.widget.dialog.f fVar, UserChannel userChannel) {
            this.f6638a = fVar;
            this.f6639b = userChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f6638a.b();
            DolphinCustomFragment.this.f(this.f6639b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6641a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserChannel f6642b;

        k(com.ifengyu.intercom.ui.widget.dialog.f fVar, UserChannel userChannel) {
            this.f6641a = fVar;
            this.f6642b = userChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f6641a.b();
            DolphinCustomFragment.this.h(this.f6642b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6644a;

        l(DolphinCustomFragment dolphinCustomFragment, com.ifengyu.intercom.ui.widget.dialog.f fVar) {
            this.f6644a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f6644a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6645a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserChannel f6646b;

        m(com.ifengyu.intercom.ui.widget.dialog.f fVar, UserChannel userChannel) {
            this.f6645a = fVar;
            this.f6646b = userChannel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6645a.b();
            DolphinCustomFragment.this.p = this.f6646b;
            DolphinCustomFragment.this.p.a(Long.valueOf(this.f6646b.e()));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.a(dolphinCustomFragment.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(UserChannel userChannel) {
        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(getActivity());
        fVar.a(R.layout.dialog_custom_channel_option);
        fVar.b(true);
        fVar.a();
        View c2 = fVar.c();
        ((TextView) c2.findViewById(R.id.afstv_channel_custom_item_option_dialog_title)).setText(k0.a((int) R.string.channel_custom_s, c0.b(userChannel.a())));
        ((TextView) c2.findViewById(R.id.afstv_channel_custom_item_option_dialog_delete)).setOnClickListener(new i(fVar, userChannel));
        ((TextView) c2.findViewById(R.id.afstv_channel_custom_item_option_dialog_rename)).setOnClickListener(new j(fVar, userChannel));
        ((TextView) c2.findViewById(R.id.afstv_channel_custom_item_option_dialog_modify)).setOnClickListener(new k(fVar, userChannel));
        ((TextView) c2.findViewById(R.id.afstv_channel_custom_item_option_dialog_cancel)).setOnClickListener(new l(this, fVar));
        fVar.d();
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void g(StateUpdateEvent stateUpdateEvent) {
        if (this.h) {
            if (!stateUpdateEvent.f()) {
                return;
            }
            if (d0.f5308a == 1 && stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.o.a(q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.o.a(q.a(stateUpdateEvent.a()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (d0.f5308a == 1 && stateUpdateEvent.b().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.o.a(q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.o.a(q.a(stateUpdateEvent.b()));
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void h(StateUpdateEvent stateUpdateEvent) {
        UserChannel userChannel = this.p;
        if (userChannel != null) {
            this.o.b(userChannel);
            this.o.a(this.p);
            b.d.a.a.e.a aVar = this.t;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
        }
    }

    public void l() {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) k0.c(R.string.device_not_connected), false);
        } else if (this.k) {
            if (!d0.U()) {
                c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.l.size() >= 20) {
                c0.a((CharSequence) k0.c(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                h((UserChannel) null);
            }
        }
    }

    public void m() {
        if (!d0.U()) {
            c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        com.ifengyu.intercom.network.d.e.a().execute(new a());
        if (this.n.n()) {
            this.mProgressBar.setVisibility(0);
            this.r = 0;
            this.s.clear();
            int i2 = this.r;
            this.r = i2 + 1;
            UserChannel userChannel = new UserChannel(i2, 2, "", 0);
            int i3 = this.r;
            this.r = i3 + 1;
            a(userChannel, new UserChannel(i3, 2, "", 0));
            this.k = false;
            k0.a(new f(), 8000L);
        } else if (this.i < 16973825) {
            this.mProgressBar.setVisibility(0);
            this.r = 0;
            this.s.clear();
            int i4 = this.r;
            this.r = i4 + 1;
            UserChannel userChannel2 = new UserChannel(i4, 2, "", 0);
            int i5 = this.r;
            this.r = i5 + 1;
            a(userChannel2, new UserChannel(i5, 2, "", 0));
            this.k = false;
            k0.a(new g(), 8000L);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.o = (DolphinCHSettingActivity) getActivity();
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        this.mRvCustom.setLayoutManager(new WrapContentLinearLayoutManager(getContext()));
        this.t = new b.d.a.a.e.a(new h(getContext(), R.layout.layout_custom_channel_item, this.l));
        View view = new View(k0.a());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) c0.a(90.0f)));
        view.setBackgroundColor(k0.a((int) R.color.white));
        this.t.a(view);
        this.mRvCustom.setFootOrHeaderNum(1);
        this.mRvCustom.setAdapter(this.t);
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        DolphinCHSettingActivity dolphinCHSettingActivity = this.o;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.x() == 1) {
            z.a(u, "custom fragment receiveChannelResponse");
            a(stateUpdateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(u, "onFragmentFirstVisible");
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void f(StateUpdateEvent stateUpdateEvent) {
        z.a(u, "onQueryChannelSuccess");
        if (stateUpdateEvent.f()) {
            if (stateUpdateEvent.a().getType() != MitalkProtos.CHTYPE.RELAY) {
                this.s.add(q.a(stateUpdateEvent.a()));
            } else {
                return;
            }
        }
        if (stateUpdateEvent.g()) {
            if (stateUpdateEvent.a().getType() != MitalkProtos.CHTYPE.RELAY) {
                this.s.add(q.a(stateUpdateEvent.b()));
            } else {
                return;
            }
        }
        if (this.r >= 20) {
            this.n.c(false);
            this.mProgressBar.setVisibility(8);
            this.mRvCustom.setEmptyView(this.mTvEmptyView);
            this.l.clear();
            this.l.addAll(this.s);
            b.d.a.a.e.a aVar = this.t;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            j();
            this.k = true;
            return;
        }
        int i2 = this.r;
        this.r = i2 + 1;
        UserChannel userChannel = new UserChannel(i2, 2, "", 0);
        int i3 = this.r;
        this.r = i3 + 1;
        a(userChannel, new UserChannel(i3, 2, "", 0));
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void b(StateUpdateEvent stateUpdateEvent) {
        z.a(u, "onDeleteChannelSuccess");
        int i2 = this.q;
        if (i2 != -1) {
            this.l.remove(i2);
            this.t.notifyItemRemoved(this.q);
            this.m.delete(this.p);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void c(StateUpdateEvent stateUpdateEvent) {
        z.a(u, "onInsertChannelSuccess");
        if (!stateUpdateEvent.f()) {
            UserChannel userChannel = this.p;
            if (userChannel != null) {
                this.l.add(userChannel);
                this.t.notifyItemInserted(this.l.size() - 1);
                this.m.insertOrReplace(this.p);
            }
        } else if (stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.USERDEFINE) {
            UserChannel a2 = q.a(stateUpdateEvent.a());
            int indexOf = this.l.indexOf(a2);
            if (indexOf != -1) {
                UserChannel userChannel2 = this.l.get(indexOf);
                userChannel2.a(a2.a());
                userChannel2.a(a2.d());
                this.t.notifyItemChanged(indexOf);
                UserChannel w = this.o.w();
                if (this.p != null && w.equals(userChannel2)) {
                    this.o.b(userChannel2);
                    this.o.a(userChannel2);
                    return;
                }
                return;
            }
            this.l.add(a2);
            this.t.notifyItemInserted(this.l.size() - 1);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void d(StateUpdateEvent stateUpdateEvent) {
        int indexOf;
        z.a(u, "onModifyChannelSuccess");
        UserChannel userChannel = this.p;
        if (userChannel != null && (indexOf = this.l.indexOf(userChannel)) != -1) {
            UserChannel userChannel2 = this.l.get(indexOf);
            userChannel2.a(this.p.d());
            userChannel2.a(this.p.a());
            UserChannel w = this.o.w();
            if (w != null && w.equals(this.p)) {
                this.o.a(this.p);
            }
            this.t.notifyItemChanged(indexOf);
            this.m.insertOrReplace(this.p);
        }
    }

    public static DolphinCustomFragment a(boolean z, int i2) {
        DolphinCustomFragment dolphinCustomFragment = new DolphinCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i2);
        dolphinCustomFragment.setArguments(bundle);
        return dolphinCustomFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(UserChannel userChannel) {
        o oVar;
        p pVar;
        DolphinCHSettingActivity dolphinCHSettingActivity = (DolphinCHSettingActivity) getActivity();
        if (dolphinCHSettingActivity != null) {
            if (c0.a()) {
                if (userChannel != null) {
                    pVar = new p(dolphinCHSettingActivity, c0.b(userChannel.a()), 0);
                } else {
                    pVar = new p(dolphinCHSettingActivity, null, 0);
                }
                pVar.a(new d(userChannel));
                pVar.show();
                return;
            }
            if (userChannel != null) {
                oVar = new o(dolphinCHSettingActivity, c0.b(userChannel.a()), 0);
            } else {
                oVar = new o(dolphinCHSettingActivity, null, 0);
            }
            oVar.a(new e(userChannel));
            oVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    public void a(MitalkProtos.CHOPTION choption) {
        super.a(choption);
        this.n.c(false);
        this.mProgressBar.setVisibility(8);
        this.mRvCustom.setEmptyView(this.mTvEmptyView);
        b.d.a.a.e.a aVar = this.t;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
        this.k = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(UserChannel userChannel) {
        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(getActivity());
        fVar.c(R.string.common_delete);
        fVar.a(k0.a((int) R.string.dialog_are_you_sure_delete_the_selected_custom_channel, c0.b(userChannel.a())));
        fVar.a(R.string.common_cancel, new b(this, fVar));
        fVar.c(R.string.common_select, new m(fVar, userChannel));
        fVar.a();
        fVar.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = u;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m();
            return;
        }
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null && progressBar.isShown()) {
            this.mProgressBar.setVisibility(8);
        }
    }

    public void f(UserChannel userChannel) {
        v vVar = new v(getActivity(), userChannel.d());
        vVar.a(new c(userChannel));
        vVar.show();
    }
}
