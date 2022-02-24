package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.q;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DolphinPresetFragment extends a implements View.OnClickListener {
    private static final String r = DolphinPresetFragment.class.getSimpleName();
    private static final int[] s = k0.b((int) R.array.dolphin_remote_channel);
    private static final int[] t = k0.b((int) R.array.dolphin_public_channel);
    private List<UserChannel> l = new ArrayList();
    private List<UserChannel> m = new ArrayList();
    @BindView(R.id.btn_active_device)
    TextView mBtnActiveDevice;
    @BindView(R.id.ll_active_device_container)
    LinearLayout mLlActiveDeviceContainer;
    @BindView(R.id.ll_long_distance_container)
    LinearLayout mLlLongDistanceContainer;
    @BindView(R.id.rv_public)
    RecyclerView mRvPublic;
    @BindView(R.id.rv_remote)
    RecyclerView mRvRemote;
    private DolphinCHSettingActivity n;
    private UserChannel o;
    private b.d.a.a.a<UserChannel> p;
    private b.d.a.a.a<UserChannel> q;

    /* loaded from: classes2.dex */
    class a extends b.d.a.a.a<UserChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinPresetFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC0174a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserChannel f6649a;

            View$OnClickListenerC0174a(UserChannel userChannel) {
                this.f6649a = userChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinPresetFragment.this.o = this.f6649a;
                DolphinPresetFragment.this.e(this.f6649a);
            }
        }

        a(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(b.d.a.a.c.c cVar, UserChannel userChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (DolphinPresetFragment.this.n != null) {
                UserChannel w = DolphinPresetFragment.this.n.w();
                if (w == null || !w.equals(userChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new View$OnClickListenerC0174a(userChannel));
        }
    }

    /* loaded from: classes2.dex */
    class b extends b.d.a.a.a<UserChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserChannel f6651a;

            a(UserChannel userChannel) {
                this.f6651a = userChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinPresetFragment.this.o = this.f6651a;
                DolphinPresetFragment.this.e(this.f6651a);
            }
        }

        b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(b.d.a.a.c.c cVar, UserChannel userChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (DolphinPresetFragment.this.n != null) {
                UserChannel w = DolphinPresetFragment.this.n.w();
                if (w == null || !w.equals(userChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new a(userChannel));
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f6653a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinPresetFragment.this.n.j();
                if (DolphinPresetFragment.this.n.m != null) {
                    DolphinPresetFragment.this.n.m.a();
                }
            }
        }

        c(MitalkProtos.ParamUpdate paramUpdate) {
            this.f6653a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(DolphinPresetFragment.this.n.p);
            if (this.f6653a.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                DolphinPresetFragment.this.n.b(R.drawable.mine_icon_win);
                DolphinPresetFragment.this.n.c(R.string.activation_successful);
                k0.a(new a(), 800L);
                d0.a(true);
                return;
            }
            DolphinPresetFragment.this.n.p.run();
        }
    }

    /* loaded from: classes2.dex */
    class d implements BaseActivity.e {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void a() {
            MiTalkiApp.b().h = true;
            DolphinPresetFragment.this.mLlActiveDeviceContainer.setVisibility(8);
            DolphinPresetFragment.this.mLlLongDistanceContainer.setVisibility(0);
            String h = d0.h();
            String N = d0.N();
            if (!TextUtils.isEmpty(h) && !TextUtils.isEmpty(N)) {
                com.ifengyu.intercom.g.a.a(N, h, (com.ifengyu.intercom.g.d.b) null);
            }
            d0.a(true);
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void b() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(r, "onFragmentFirstVisible");
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void g(StateUpdateEvent stateUpdateEvent) {
        if (this.h) {
            if (!stateUpdateEvent.f()) {
                return;
            }
            if (d0.f5308a == 1 && stateUpdateEvent.a().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.n.a(q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.n.a(q.a(stateUpdateEvent.a()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (d0.f5308a == 1 && stateUpdateEvent.b().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.n.a(q.a(stateUpdateEvent.a(), stateUpdateEvent.b()));
                return;
            }
            this.n.a(q.a(stateUpdateEvent.b()));
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a
    protected void h(StateUpdateEvent stateUpdateEvent) {
        UserChannel userChannel = this.o;
        if (userChannel != null) {
            this.n.b(userChannel);
            this.n.a(this.o);
            b.d.a.a.a<UserChannel> aVar = this.p;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<UserChannel> aVar2 = this.q;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.n = (DolphinCHSettingActivity) getActivity();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DolphinCHSettingActivity dolphinCHSettingActivity;
        if (view.getId() == R.id.btn_active_device && (dolphinCHSettingActivity = this.n) != null) {
            dolphinCHSettingActivity.a(new d());
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        while (i < s.length) {
            int i2 = i + 1;
            this.l.add(new UserChannel(i, 0, k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(i2)), s[i]));
            i = i2;
        }
        int i3 = 0;
        while (i3 < t.length) {
            int i4 = i3 + 1;
            this.m.add(new UserChannel(i3, 1, k0.a((int) R.string.channel_public_d, Integer.valueOf(i4)), t[i3]));
            i3 = i4;
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_preset, viewGroup, false);
        ButterKnife.bind(this, inflate);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        a aVar = new a(getActivity(), R.layout.layout_preset_item, this.l);
        this.p = aVar;
        recyclerView.setAdapter(aVar);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_public);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        b bVar = new b(getActivity(), R.layout.layout_preset_item, this.m);
        this.q = bVar;
        recyclerView2.setAdapter(bVar);
        if (d0.U()) {
            this.mLlActiveDeviceContainer.setVisibility(8);
            this.mLlLongDistanceContainer.setVisibility(0);
        } else {
            this.mLlActiveDeviceContainer.setVisibility(0);
            this.mLlLongDistanceContainer.setVisibility(8);
        }
        this.mBtnActiveDevice.setOnClickListener(this);
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.dolphin.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        z.a(r, "receiveChannelResponse");
        DolphinCHSettingActivity dolphinCHSettingActivity = this.n;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.x() == 0) {
            a(stateUpdateEvent);
        }
    }

    @Subscribe
    public void receiveParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        k0.a(new c(paramUpdate));
    }

    public static DolphinPresetFragment a(boolean z, int i) {
        DolphinPresetFragment dolphinPresetFragment = new DolphinPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i);
        dolphinPresetFragment.setArguments(bundle);
        return dolphinPresetFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = r;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            b.d.a.a.a<UserChannel> aVar = this.p;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<UserChannel> aVar2 = this.q;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
        }
    }
}
