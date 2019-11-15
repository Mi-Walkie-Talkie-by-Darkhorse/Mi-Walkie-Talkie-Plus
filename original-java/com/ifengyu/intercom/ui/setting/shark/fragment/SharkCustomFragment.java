package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.ui.adapter.n;
import com.ifengyu.intercom.ui.adapter.n.b;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelEditActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.c.a;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpStatus;

public class SharkCustomFragment extends SharkChannelBaseFragment implements b {
    private static final String f = SharkCustomFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public List<SealSharkChannel> g = new ArrayList();
    /* access modifiers changed from: private */
    public SharkChannelSettingActivity h;
    /* access modifiers changed from: private */
    public n i;
    /* access modifiers changed from: private */
    public SealSharkChannel j;
    private int k = -1;
    /* access modifiers changed from: private */
    public SealSharkChannelDao l = MiTalkiApp.a().b().f();
    /* access modifiers changed from: private */
    public MiTalkiApp m = MiTalkiApp.a();
    @BindView(2131755577)
    ProgressBar mProgressBar;
    @BindView(2131755634)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(2131755370)
    LinearLayout mTvEmptyView;
    private List<SealSharkChannel> n = new ArrayList();
    /* access modifiers changed from: private */
    public a o;
    private int p;

    public static SharkCustomFragment b(boolean z) {
        SharkCustomFragment sharkCustomFragment = new SharkCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        sharkCustomFragment.setArguments(bundle);
        return sharkCustomFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_custom, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        this.i = new n(getActivity(), this.g);
        this.i.setOnItemClickListener(this);
        this.o = new a(this.i);
        View view = new View(ad.a());
        view.setLayoutParams(new LayoutParams(-1, 1));
        view.setBackgroundColor(ad.d(R.color.space_bg));
        this.o.a(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.o);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(ad.a()));
        return inflate;
    }

    public void f(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
        startActivityForResult(intent, HttpStatus.SC_ACCEPTED);
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.h = (SharkChannelSettingActivity) getActivity();
        this.j = this.h.d();
        this.i.a(this.j);
    }

    public void g() {
        if (!w.ag()) {
            v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        e.b().execute(new Runnable() {
            public void run() {
                SharkCustomFragment.this.g.clear();
                List c = SharkCustomFragment.this.l.queryBuilder().c();
                SharkCustomFragment.this.g.clear();
                SharkCustomFragment.this.g.addAll(c);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        if (SharkCustomFragment.this.mRecycleView != null && !SharkCustomFragment.this.m.d()) {
                            SharkCustomFragment.this.mRecycleView.setEmptyView(SharkCustomFragment.this.mTvEmptyView);
                        }
                        if (SharkCustomFragment.this.o != null) {
                            SharkCustomFragment.this.i.a(SharkCustomFragment.this.h.d());
                            SharkCustomFragment.this.o.notifyDataSetChanged();
                        }
                    }
                });
            }
        });
        if (this.m.d()) {
            a(false, false, getString(R.string.custom_ch_syncing), (int) R.drawable.load_spinner);
            this.n.clear();
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.b(2);
            e(sealSharkChannel);
            this.e = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    SharkCustomFragment.this.e = true;
                    SharkCustomFragment.this.f();
                }
            }, (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
        }
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        s.b(f, "receiveChannelInfoOperateResp");
        if (!this.h.e()) {
            if (this.h.c() == 0 || this.h.f()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.b(f, "receiveChannelStateOperateResp");
        if (!this.h.e()) {
            if (this.h.c() == 0 || this.h.f()) {
                this.h.b(false);
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            this.p = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            if (this.p != 0 || !sHARK_ChannelStateOperate.hasStateMode() || sHARK_ChannelStateOperate.getStateMode() != 1) {
                return;
            }
            if (this.c) {
                if (sHARK_ChannelStateOperate.hasCh1()) {
                    this.j = ab.a(sHARK_ChannelStateOperate.getCh1());
                    this.h.a(this.j);
                    this.i.a(this.j);
                    if (this.o != null) {
                        this.o.notifyDataSetChanged();
                    }
                }
            } else if (sHARK_ChannelStateOperate.hasCh2()) {
                this.j = ab.a(sHARK_ChannelStateOperate.getCh2());
                this.h.a(this.j);
                this.i.a(this.j);
                if (this.o != null) {
                    this.o.notifyDataSetChanged();
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.c(f, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            this.p = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            if ((this.p == 0 || this.p == 2 || this.p == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.c) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        this.j = ab.a(sHARK_ChannelStateOperate.getCh1());
                        this.h.a(this.j);
                        this.i.a(this.j);
                        if (this.o != null) {
                            this.o.notifyDataSetChanged();
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    this.j = ab.a(sHARK_ChannelStateOperate.getCh2());
                    this.h.a(this.j);
                    this.i.a(this.j);
                    if (this.o != null) {
                        this.o.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a = ab.a(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.g.indexOf(a);
            if (indexOf != -1) {
                this.g.remove(indexOf);
                this.g.add(indexOf, a);
                SealSharkChannel d = this.h.d();
                if (d != null && d.equals(a)) {
                    this.j = a;
                    this.h.a(this.j);
                }
                this.o.notifyItemChanged(indexOf);
                return;
            }
            this.g.add(a);
            this.o.notifyDataSetChanged();
        }
    }

    /* access modifiers changed from: protected */
    public void d(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a = ab.a(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.g.indexOf(a);
            if (indexOf != -1) {
                this.g.remove(indexOf);
                this.g.add(indexOf, a);
                SealSharkChannel d = this.h.d();
                if (d != null && d.equals(a)) {
                    this.j = a;
                    this.h.a(this.j);
                }
                this.o.notifyItemChanged(indexOf);
                return;
            }
            a.b();
            this.g.add(a);
            this.o.notifyDataSetChanged();
        }
    }

    /* access modifiers changed from: protected */
    public void c(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (this.k != -1) {
            this.g.remove(this.k);
            this.o.notifyItemRemoved(this.k);
            this.l.delete(this.j);
        }
    }

    /* access modifiers changed from: protected */
    public void e(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        this.m.b(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.g.clear();
        this.g.addAll(this.n);
        if (this.o != null) {
            this.o.notifyDataSetChanged();
        }
        e();
        this.e = true;
    }

    /* access modifiers changed from: protected */
    public void f(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            this.n.add(ab.a(sHARK_ChannelInfoOperate.getCh()));
        }
        ab.e();
    }

    /* access modifiers changed from: protected */
    public void g(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    public void a(View view, int i2, SealSharkChannel sealSharkChannel) {
        switch (this.p) {
            case 3:
            case 4:
                v.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
                return;
            case 5:
            case 6:
                v.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
                return;
            default:
                this.j = sealSharkChannel;
                a(sealSharkChannel);
                return;
        }
    }

    public void b(View view, int i2, SealSharkChannel sealSharkChannel) {
        this.k = i2;
        this.j = sealSharkChannel;
        g(sealSharkChannel);
    }

    public void h() {
        if (!k.a().b()) {
            v.a((CharSequence) ad.a((int) R.string.device_not_connected), false);
        } else if (!this.e) {
        } else {
            if (!w.ag()) {
                v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.g.size() >= 20) {
                v.a((CharSequence) ad.a((int) R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", v.b(this.g));
                startActivityForResult(intent, HttpStatus.SC_CREATED);
            }
        }
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        s.b(f, "onActivityResult:" + i2);
        if (i2 == 201) {
            if (intent == null) {
                s.b(f, "result data is null...");
            } else if (i3 == 2001) {
                SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel != null) {
                    s.b(f, "customChannel:" + sealSharkChannel.toString());
                    this.j = sealSharkChannel;
                    b(this.j);
                }
            }
        } else if (i2 != 202) {
        } else {
            if (i3 == 2002) {
                if (intent == null) {
                    s.b(f, "result data is null...");
                    return;
                }
                SealSharkChannel sealSharkChannel2 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel2 != null) {
                    s.b(f, "customChannel:" + sealSharkChannel2.toString());
                    this.j = sealSharkChannel2;
                    d(this.j);
                }
            } else if (i3 == 2003) {
                this.j = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                c(this.j);
            } else {
                this.h.a(false);
                this.h.b(false);
            }
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void g(final SealSharkChannel sealSharkChannel) {
        new q(getActivity()).a((CharSequence) ad.a((int) R.string.channel_custom_2s, v.c(sealSharkChannel.e()), v.c(sealSharkChannel.f()))).a(true).a(new String[]{ad.a((int) R.string.common_delete), ad.a((int) R.string.edit), ad.a((int) R.string.common_cancel)}, new q.b() {
            public void a(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        SharkCustomFragment.this.h(sealSharkChannel);
                        return;
                    case 1:
                        Intent intent = new Intent(SharkCustomFragment.this.getActivity(), SharkChannelEditActivity.class);
                        intent.setAction("seal_action_modify_channel");
                        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
                        SharkCustomFragment.this.startActivityForResult(intent, HttpStatus.SC_ACCEPTED);
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void h(final SealSharkChannel sealSharkChannel) {
        final d dVar = new d(getActivity());
        dVar.a((int) R.string.common_delete).b((CharSequence) ad.a((int) R.string.dialog_are_you_sure_delete_the_selected_channel, v.c(sealSharkChannel.e()), v.c(sealSharkChannel.f())));
        dVar.a((int) R.string.common_cancel, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
            }
        }).b((int) R.string.common_select, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
                SharkCustomFragment.this.j = sealSharkChannel;
                SharkCustomFragment.this.c(SharkCustomFragment.this.j);
            }
        }).b().c();
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        s.b(f, "onFragmentFirstVisible");
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        super.a(z);
        s.b(f, "onFragmentVisibleChange:" + z);
        if (z) {
            g();
            return;
        }
        f();
        ad.d();
    }
}
