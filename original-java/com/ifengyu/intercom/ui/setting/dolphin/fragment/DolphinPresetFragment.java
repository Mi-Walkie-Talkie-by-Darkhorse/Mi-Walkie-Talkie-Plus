package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.a;
import com.zhy.a.a.a.c;
import java.util.ArrayList;
import java.util.List;

public class DolphinPresetFragment extends DolphinChannelBaseFragment implements OnClickListener {
    private static final String g = DolphinPresetFragment.class.getSimpleName();
    private static final int[] h = ad.c(R.array.dolphin_remote_channel);
    private static final int[] i = ad.c(R.array.dolphin_public_channel);
    private List<UserChannel> j = new ArrayList();
    private List<UserChannel> k = new ArrayList();
    /* access modifiers changed from: private */
    public DolphinCHSettingActivity l;
    /* access modifiers changed from: private */
    public UserChannel m;
    @BindView(2131755628)
    TextView mBtnActiveDevice;
    @BindView(2131755627)
    LinearLayout mLlActiveDeviceContainer;
    @BindView(2131755625)
    LinearLayout mLlLongDistanceContainer;
    @BindView(2131755629)
    RecyclerView mRvPublic;
    @BindView(2131755626)
    RecyclerView mRvRemote;
    private a<UserChannel> n;
    private a<UserChannel> o;

    public static DolphinPresetFragment a(boolean z, int i2) {
        DolphinPresetFragment dolphinPresetFragment = new DolphinPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i2);
        dolphinPresetFragment.setArguments(bundle);
        return dolphinPresetFragment;
    }

    public void a() {
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        for (int i2 = 0; i2 < h.length; i2++) {
            this.j.add(new UserChannel(i2, 0, ad.a((int) R.string.channel_long_distance_d, Integer.valueOf(i2 + 1)), h[i2]));
        }
        for (int i3 = 0; i3 < i.length; i3++) {
            this.k.add(new UserChannel(i3, 1, ad.a((int) R.string.channel_public_d, Integer.valueOf(i3 + 1)), i[i3]));
        }
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        s.b(g, "receiveChannelResponse");
        if (this.l == null || this.l.c() == 0) {
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
                this.l.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.l.a(m.a(stateUpdateEvent.d()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (w.a == 1 && stateUpdateEvent.e().getType() == CHTYPE.RELAY) {
                this.l.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.l.a(m.a(stateUpdateEvent.e()));
        }
    }

    /* access modifiers changed from: protected */
    public void c(StateUpdateEvent stateUpdateEvent) {
        if (this.m != null) {
            this.l.b(this.m);
            this.l.a(this.m);
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
            if (this.o != null) {
                this.o.notifyDataSetChanged();
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_preset, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        this.n = new a<UserChannel>(getActivity(), R.layout.layout_preset_item, this.j) {
            /* access modifiers changed from: protected */
            public void a(c cVar, final UserChannel userChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_channel);
                textView.setText(String.valueOf(i + 1));
                if (DolphinPresetFragment.this.l != null) {
                    UserChannel d = DolphinPresetFragment.this.l.d();
                    if (d == null || !d.equals(userChannel)) {
                        textView.setSelected(false);
                        textView.setTextColor(ad.d(R.color.black));
                    } else {
                        textView.setSelected(true);
                        textView.setTextColor(ad.d(R.color.select_color));
                    }
                }
                cVar.itemView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        DolphinPresetFragment.this.m = userChannel;
                        DolphinPresetFragment.this.a(userChannel);
                    }
                });
            }
        };
        recyclerView.setAdapter(this.n);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_public);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        this.o = new a<UserChannel>(getActivity(), R.layout.layout_preset_item, this.k) {
            /* access modifiers changed from: protected */
            public void a(c cVar, final UserChannel userChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_channel);
                textView.setText(String.valueOf(i + 1));
                if (DolphinPresetFragment.this.l != null) {
                    UserChannel d = DolphinPresetFragment.this.l.d();
                    if (d == null || !d.equals(userChannel)) {
                        textView.setSelected(false);
                        textView.setTextColor(ad.d(R.color.black));
                    } else {
                        textView.setSelected(true);
                        textView.setTextColor(ad.d(R.color.select_color));
                    }
                }
                cVar.itemView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        DolphinPresetFragment.this.m = userChannel;
                        DolphinPresetFragment.this.a(userChannel);
                    }
                });
            }
        };
        recyclerView2.setAdapter(this.o);
        if (w.ag()) {
            this.mLlActiveDeviceContainer.setVisibility(8);
            this.mLlLongDistanceContainer.setVisibility(0);
        } else {
            this.mLlActiveDeviceContainer.setVisibility(0);
            this.mLlLongDistanceContainer.setVisibility(8);
        }
        this.mBtnActiveDevice.setOnClickListener(this);
        return inflate;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.l = (DolphinCHSettingActivity) getActivity();
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveParamResponse(final ParamUpdate paramUpdate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                ad.b(DolphinPresetFragment.this.l.p);
                if (paramUpdate.getResult() == STATECODE.SUCCESS) {
                    DolphinPresetFragment.this.l.d(R.drawable.mine_icon_win);
                    DolphinPresetFragment.this.l.e(R.string.activation_successful);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            DolphinPresetFragment.this.l.k();
                            if (DolphinPresetFragment.this.l.n != null) {
                                DolphinPresetFragment.this.l.n.a();
                            }
                        }
                    }, 800);
                    w.p(true);
                    return;
                }
                DolphinPresetFragment.this.l.p.run();
            }
        });
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_active_device /*2131755628*/:
                if (this.l != null) {
                    this.l.a((BaseActivity.a) new BaseActivity.a() {
                        public void a() {
                            MiTalkiApp.a().a = true;
                            DolphinPresetFragment.this.mLlActiveDeviceContainer.setVisibility(8);
                            DolphinPresetFragment.this.mLlLongDistanceContainer.setVisibility(0);
                            String o = w.o();
                            String K = w.K();
                            if (!TextUtils.isEmpty(o) && !TextUtils.isEmpty(K)) {
                                com.ifengyu.intercom.a.a.a(K, o, (b) null);
                            }
                            w.p(true);
                        }

                        public void b() {
                        }

                        public void c() {
                        }
                    });
                    return;
                }
                return;
            default:
                return;
        }
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
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
            if (this.o != null) {
                this.o.notifyDataSetChanged();
            }
        }
    }
}
