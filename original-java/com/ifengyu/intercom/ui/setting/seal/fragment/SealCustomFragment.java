package com.ifengyu.intercom.ui.setting.seal.fragment;

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
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_MODE;
import com.ifengyu.intercom.ui.adapter.l;
import com.ifengyu.intercom.ui.adapter.l.b;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.seal.SealChannelEditActivity;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.c.a;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpStatus;

public class SealCustomFragment extends SealChannelBaseFragment implements b {
    private static final String e = SealCustomFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public List<SealSharkChannel> f = new ArrayList();
    /* access modifiers changed from: private */
    public SealChannelSettingActivity g;
    /* access modifiers changed from: private */
    public l h;
    /* access modifiers changed from: private */
    public SealSharkChannel i;
    private int j = -1;
    /* access modifiers changed from: private */
    public SealSharkChannelDao k = MiTalkiApp.a().b().f();
    /* access modifiers changed from: private */
    public MiTalkiApp l = MiTalkiApp.a();
    private List<SealSharkChannel> m = new ArrayList();
    @BindView(2131755577)
    ProgressBar mProgressBar;
    @BindView(2131755630)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(2131755370)
    TextView mTvEmptyView;
    /* access modifiers changed from: private */
    public a n;

    public static SealCustomFragment g() {
        return new SealCustomFragment();
    }

    public void onAttach(Context context) {
        super.onAttach(context);
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_custom, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        this.h = new l(getActivity(), this.f);
        this.h.setOnItemClickListener(this);
        this.n = new a(this.h);
        View view = new View(ad.a());
        view.setLayoutParams(new LayoutParams(-1, 1));
        view.setBackgroundColor(ad.d(R.color.space_bg));
        this.n.a(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.n);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(ad.a()));
        return inflate;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.g = (SealChannelSettingActivity) getActivity();
        this.i = this.g.d();
        this.h.a(this.i);
    }

    public void h() {
        if (!w.ag()) {
            v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        e.b().execute(new Runnable() {
            public void run() {
                SealCustomFragment.this.f.clear();
                List c = SealCustomFragment.this.k.queryBuilder().c();
                SealCustomFragment.this.f.clear();
                SealCustomFragment.this.f.addAll(c);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        if (SealCustomFragment.this.mRecycleView != null && !SealCustomFragment.this.l.d()) {
                            SealCustomFragment.this.mRecycleView.setEmptyView(SealCustomFragment.this.mTvEmptyView);
                        }
                        if (SealCustomFragment.this.n != null) {
                            SealCustomFragment.this.h.a(SealCustomFragment.this.g.d());
                            SealCustomFragment.this.n.notifyDataSetChanged();
                        }
                    }
                });
            }
        });
        if (this.l.d()) {
            a(false, false, getString(R.string.custom_ch_syncing), (int) R.drawable.load_spinner);
            this.m.clear();
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.b(2);
            e(sealSharkChannel);
            this.d = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    SealCustomFragment.this.d = true;
                    SealCustomFragment.this.f();
                }
            }, (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
        }
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        s.b(e, "receiveChannelInfoOperateResp");
        if (!this.g.e()) {
            if (this.g.c() == 0 || this.g.f()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        s.b(e, "receiveChannelStateOperateResp");
        if (!this.g.e()) {
            if (this.g.c() == 0 || this.g.f()) {
                this.g.b(false);
                a(sEAL_ChannelStateOperate);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            this.i = aa.a(sEAL_ChannelStateOperate.getCh1());
            this.g.a(this.i);
            this.h.a(this.i);
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        s.c(e, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            this.i = aa.a(sEAL_ChannelStateOperate.getCh1());
            this.g.a(this.i);
            this.h.a(this.i);
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SealSharkChannel a = aa.a(sEAL_ChannelInfoOperate.getCh());
        int indexOf = this.f.indexOf(a);
        if (indexOf != -1) {
            this.f.remove(indexOf);
            this.f.add(indexOf, a);
            this.n.notifyItemChanged(indexOf);
            SealSharkChannel d = this.g.d();
            if (d != null && d.equals(a)) {
                this.g.b(a);
                this.g.a(a);
                return;
            }
            return;
        }
        this.f.add(a);
        this.n.notifyDataSetChanged();
    }

    /* access modifiers changed from: protected */
    public void d(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a = aa.a(sEAL_ChannelInfoOperate.getCh());
            int indexOf = this.f.indexOf(a);
            if (indexOf != -1) {
                this.f.remove(indexOf);
                this.f.add(indexOf, a);
                SealSharkChannel d = this.g.d();
                if (d != null && d.equals(a)) {
                    this.i = a;
                    this.g.a(this.i);
                }
                this.n.notifyItemChanged(indexOf);
                return;
            }
            this.f.add(a);
            this.n.notifyDataSetChanged();
        }
    }

    /* access modifiers changed from: protected */
    public void c(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (this.j != -1) {
            this.f.remove(this.j);
            this.n.notifyItemRemoved(this.j);
            this.k.delete(this.i);
        }
    }

    /* access modifiers changed from: protected */
    public void e(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        this.l.b(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.f.clear();
        this.f.addAll(this.m);
        if (this.n != null) {
            this.n.notifyDataSetChanged();
        }
        e();
        this.d = true;
    }

    /* access modifiers changed from: protected */
    public void f(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            this.m.add(aa.a(sEAL_ChannelInfoOperate.getCh()));
        }
        aa.d();
    }

    /* access modifiers changed from: protected */
    public void g(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    public void a(View view, int i2, SealSharkChannel sealSharkChannel) {
        this.i = sealSharkChannel;
        a(sealSharkChannel);
    }

    public void b(View view, int i2, SealSharkChannel sealSharkChannel) {
        this.j = i2;
        this.i = sealSharkChannel;
        g(sealSharkChannel);
    }

    public void f(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
        startActivityForResult(intent, HttpStatus.SC_ACCEPTED);
    }

    public void i() {
        if (!k.a().b()) {
            v.a((CharSequence) ad.a((int) R.string.device_not_connected), false);
        } else if (!this.d) {
        } else {
            if (!w.ag()) {
                v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.f.size() >= 20) {
                v.a((CharSequence) ad.a((int) R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", v.b(this.f));
                startActivityForResult(intent, HttpStatus.SC_CREATED);
            }
        }
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        s.b(e, "onActivityResult:" + i2 + "--resultCode:" + i3);
        if (i2 == 201) {
            if (intent == null) {
                s.b(e, "result data is null...");
            } else if (i3 == 2001) {
                SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel != null) {
                    s.b(e, "customChannel:" + sealSharkChannel.toString());
                    this.i = sealSharkChannel;
                    b(this.i);
                }
            }
        } else if (i2 != 202) {
        } else {
            if (i3 == 2002) {
                if (intent == null) {
                    s.b(e, "result data is null...");
                    return;
                }
                SealSharkChannel sealSharkChannel2 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel2 != null) {
                    s.b(e, "customChannel:" + sealSharkChannel2.toString());
                    this.i = sealSharkChannel2;
                    d(this.i);
                }
            } else if (i3 == 2003) {
                this.i = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                c(this.i);
            } else {
                this.g.a(false);
                this.g.b(false);
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
                        SealCustomFragment.this.h(sealSharkChannel);
                        return;
                    case 1:
                        Intent intent = new Intent(SealCustomFragment.this.getActivity(), SealChannelEditActivity.class);
                        intent.setAction("seal_action_modify_channel");
                        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
                        SealCustomFragment.this.startActivityForResult(intent, HttpStatus.SC_ACCEPTED);
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
                SealCustomFragment.this.i = sealSharkChannel;
                SealCustomFragment.this.c(SealCustomFragment.this.i);
            }
        }).b().c();
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        s.b(e, "onFragmentFirstVisible");
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        super.a(z);
        s.b(e, "onFragmentVisibleChange:" + z);
        if (z) {
            h();
            return;
        }
        f();
        ad.d();
    }
}
