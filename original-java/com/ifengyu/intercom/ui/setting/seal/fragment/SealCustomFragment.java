package com.ifengyu.intercom.ui.setting.seal.fragment;

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
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.adapter.m;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.seal.SealChannelEditActivity;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.squareup.otto.Subscribe;
import com.uc.crashsdk.export.CrashStatKey;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SealCustomFragment extends a implements m.d {
    private static final String s = SealCustomFragment.class.getSimpleName();
    private SealChannelSettingActivity k;
    private m l;
    private SealSharkChannel m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_seal)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;
    private b.d.a.a.e.a r;
    private List<SealSharkChannel> j = new ArrayList();
    private int n = -1;
    private SealSharkChannelDao o = MiTalkiApp.b().g().b();
    private MiTalkiApp p = MiTalkiApp.b();
    private List<SealSharkChannel> q = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.SealCustomFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0180a implements Runnable {
            RunnableC0180a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealCustomFragment sealCustomFragment = SealCustomFragment.this;
                if (sealCustomFragment.mRecycleView != null && !sealCustomFragment.p.n()) {
                    SealCustomFragment sealCustomFragment2 = SealCustomFragment.this;
                    sealCustomFragment2.mRecycleView.setEmptyView(sealCustomFragment2.mTvEmptyView);
                }
                if (SealCustomFragment.this.r != null) {
                    SealCustomFragment.this.l.a(SealCustomFragment.this.k.w());
                    SealCustomFragment.this.r.notifyDataSetChanged();
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealCustomFragment.this.j.clear();
            List<SealSharkChannel> list = SealCustomFragment.this.o.queryBuilder().list();
            SealCustomFragment.this.j.clear();
            SealCustomFragment.this.j.addAll(list);
            k0.a(new RunnableC0180a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealCustomFragment sealCustomFragment = SealCustomFragment.this;
            sealCustomFragment.i = true;
            sealCustomFragment.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements q.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6760a;

        c(SealSharkChannel sealSharkChannel) {
            this.f6760a = sealSharkChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SealCustomFragment.this.h(this.f6760a);
            } else if (i == 1) {
                Intent intent = new Intent(SealCustomFragment.this.getActivity(), SealChannelEditActivity.class);
                intent.setAction("seal_action_modify_channel");
                intent.putExtra("seal_action_modify_channel_info", this.f6760a);
                SealCustomFragment.this.startActivityForResult(intent, 202);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f6762a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6763b;

        d(f fVar, SealSharkChannel sealSharkChannel) {
            this.f6762a = fVar;
            this.f6763b = sealSharkChannel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6762a.b();
            SealCustomFragment.this.m = this.f6763b;
            SealCustomFragment sealCustomFragment = SealCustomFragment.this;
            sealCustomFragment.a(sealCustomFragment.m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f6765a;

        e(SealCustomFragment sealCustomFragment, f fVar) {
            this.f6765a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6765a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(SealSharkChannel sealSharkChannel) {
        f fVar = new f(getActivity());
        fVar.c(R.string.common_delete);
        fVar.a(k0.a((int) R.string.dialog_are_you_sure_delete_the_selected_channel, c0.b(sealSharkChannel.i()), c0.b(sealSharkChannel.l())));
        fVar.a(R.string.common_cancel, new e(this, fVar));
        fVar.c(R.string.common_select, new d(fVar, sealSharkChannel));
        fVar.a();
        fVar.d();
    }

    public static SealCustomFragment newInstance() {
        return new SealCustomFragment();
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void g(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    public void n() {
        if (!j.b().a()) {
            c0.a((CharSequence) k0.c(R.string.device_not_connected), false);
        } else if (this.i) {
            if (!d0.U()) {
                c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.j.size() >= 20) {
                c0.a((CharSequence) k0.c(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", c0.b(this.j));
                startActivityForResult(intent, CrashStatKey.LOG_UPLOAD_ENCRYPT_COUNT);
            }
        }
    }

    public void o() {
        if (!d0.U()) {
            c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        com.ifengyu.intercom.network.d.e.a().execute(new a());
        if (this.p.n()) {
            a(false, false, getString(R.string.custom_ch_syncing), R.drawable.load_spinner);
            this.q.clear();
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.i(2);
            d(sealSharkChannel);
            this.i = false;
            k0.a(new b(), 10000L);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SealChannelSettingActivity sealChannelSettingActivity = (SealChannelSettingActivity) getActivity();
        this.k = sealChannelSettingActivity;
        SealSharkChannel w = sealChannelSettingActivity.w();
        this.m = w;
        this.l.a(w);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        SealSharkChannel sealSharkChannel;
        String str = s;
        z.a(str, "onActivityResult:" + i + "--resultCode:" + i2);
        if (i == 201) {
            if (intent == null) {
                z.a(s, "result data is null...");
            } else if (i2 == 2001 && (sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("customChannel")) != null) {
                String str2 = s;
                z.a(str2, "customChannel:" + sealSharkChannel.toString());
                this.m = sealSharkChannel;
                b(sealSharkChannel);
            }
        } else if (i != 202) {
        } else {
            if (i2 == 2002) {
                if (intent == null) {
                    z.a(s, "result data is null...");
                    return;
                }
                SealSharkChannel sealSharkChannel2 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel2 != null) {
                    String str3 = s;
                    z.a(str3, "customChannel:" + sealSharkChannel2.toString());
                    this.m = sealSharkChannel2;
                    c(sealSharkChannel2);
                }
            } else if (i2 == 2003) {
                SealSharkChannel sealSharkChannel3 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                this.m = sealSharkChannel3;
                a(sealSharkChannel3);
            } else {
                this.k.c(false);
                this.k.b(false);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        m mVar = new m(getActivity(), this.j);
        this.l = mVar;
        mVar.setOnItemClickListener(this);
        this.r = new b.d.a.a.e.a(this.l);
        View view = new View(k0.a());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
        view.setBackgroundColor(k0.a((int) R.color.space_bg));
        this.r.a(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.r);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(k0.a()));
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        z.a(s, "receiveChannelInfoOperateResp");
        if (!this.k.z()) {
            if (this.k.x() == 0 || this.k.y()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        z.a(s, "receiveChannelStateOperateResp");
        if (!this.k.z()) {
            if (this.k.x() == 0 || this.k.y()) {
                this.k.b(false);
                a(sEAL_ChannelStateOperate);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void c(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        z.c(s, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelStateOperate.getCh1());
            this.m = a2;
            this.k.a(a2);
            this.l.a(this.m);
            b.d.a.a.e.a aVar = this.r;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void d(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelInfoOperate.getCh());
            int indexOf = this.j.indexOf(a2);
            if (indexOf != -1) {
                this.j.remove(indexOf);
                this.j.add(indexOf, a2);
                SealSharkChannel w = this.k.w();
                if (w != null && w.equals(a2)) {
                    this.m = a2;
                    this.k.a(a2);
                }
                this.r.notifyItemChanged(indexOf);
                return;
            }
            this.j.add(a2);
            this.r.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void e(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            this.q.add(g0.a(sEAL_ChannelInfoOperate.getCh()));
        }
        g0.a();
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void f(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        this.p.c(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.j.clear();
        this.j.addAll(this.q);
        b.d.a.a.e.a aVar = this.r;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
        j();
        this.i = true;
    }

    public void g(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
        startActivityForResult(intent, 202);
    }

    @Override // com.ifengyu.intercom.ui.adapter.m.d
    public void a(View view, int i, SealSharkChannel sealSharkChannel) {
        this.m = sealSharkChannel;
        e(sealSharkChannel);
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void b(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelStateOperate.getCh1());
            this.m = a2;
            this.k.a(a2);
            this.l.a(this.m);
            b.d.a.a.e.a aVar = this.r;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = s;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            o();
            return;
        }
        k();
        k0.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(s, "onFragmentFirstVisible");
    }

    public void f(SealSharkChannel sealSharkChannel) {
        String[] strArr = {k0.c(R.string.common_delete), k0.c(R.string.edit), k0.c(R.string.common_cancel)};
        q qVar = new q(getActivity());
        qVar.a(k0.a((int) R.string.channel_custom_2s, c0.b(sealSharkChannel.i()), c0.b(sealSharkChannel.l())));
        qVar.a(true);
        qVar.a(strArr, new c(sealSharkChannel));
        qVar.show();
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void b(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        int i = this.n;
        if (i != -1) {
            this.j.remove(i);
            this.r.notifyItemRemoved(this.n);
            this.o.delete(this.m);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void c(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SealSharkChannel a2 = g0.a(sEAL_ChannelInfoOperate.getCh());
        int indexOf = this.j.indexOf(a2);
        if (indexOf != -1) {
            this.j.remove(indexOf);
            this.j.add(indexOf, a2);
            this.r.notifyItemChanged(indexOf);
            SealSharkChannel w = this.k.w();
            if (w != null && w.equals(a2)) {
                this.k.b(a2);
                this.k.a(a2);
                return;
            }
            return;
        }
        this.j.add(a2);
        this.r.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.ui.adapter.m.d
    public void b(View view, int i, SealSharkChannel sealSharkChannel) {
        this.n = i;
        this.m = sealSharkChannel;
        f(sealSharkChannel);
    }
}
