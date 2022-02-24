package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.adapter.o;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelEditActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.squareup.otto.Subscribe;
import com.uc.crashsdk.export.CrashStatKey;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SharkCustomFragment extends a implements o.d {
    private static final String u = SharkCustomFragment.class.getSimpleName();
    private SharkChannelSettingActivity l;
    private o m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_shark)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(R.id.tv_empty_view)
    LinearLayout mTvEmptyView;
    private SealSharkChannel n;
    private b.d.a.a.e.a s;
    private int t;
    private List<SealSharkChannel> k = new ArrayList();
    private int o = -1;
    private SealSharkChannelDao p = MiTalkiApp.b().g().b();
    private MiTalkiApp q = MiTalkiApp.b();
    private List<SealSharkChannel> r = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.SharkCustomFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0187a implements Runnable {
            RunnableC0187a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkCustomFragment sharkCustomFragment = SharkCustomFragment.this;
                if (sharkCustomFragment.mRecycleView != null && !sharkCustomFragment.q.n()) {
                    SharkCustomFragment sharkCustomFragment2 = SharkCustomFragment.this;
                    sharkCustomFragment2.mRecycleView.setEmptyView(sharkCustomFragment2.mTvEmptyView);
                }
                if (SharkCustomFragment.this.s != null) {
                    SharkCustomFragment.this.m.a(SharkCustomFragment.this.l.w());
                    SharkCustomFragment.this.s.notifyDataSetChanged();
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkCustomFragment.this.k.clear();
            List<SealSharkChannel> list = SharkCustomFragment.this.p.queryBuilder().list();
            SharkCustomFragment.this.k.clear();
            SharkCustomFragment.this.k.addAll(list);
            k0.a(new RunnableC0187a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkCustomFragment sharkCustomFragment = SharkCustomFragment.this;
            sharkCustomFragment.j = true;
            sharkCustomFragment.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements q.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6867a;

        c(SealSharkChannel sealSharkChannel) {
            this.f6867a = sealSharkChannel;
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SharkCustomFragment.this.h(this.f6867a);
            } else if (i == 1) {
                Intent intent = new Intent(SharkCustomFragment.this.getActivity(), SharkChannelEditActivity.class);
                intent.setAction("seal_action_modify_channel");
                intent.putExtra("seal_action_modify_channel_info", this.f6867a);
                SharkCustomFragment.this.startActivityForResult(intent, 202);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f6869a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6870b;

        d(f fVar, SealSharkChannel sealSharkChannel) {
            this.f6869a = fVar;
            this.f6870b = sealSharkChannel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6869a.b();
            SharkCustomFragment.this.n = this.f6870b;
            SharkCustomFragment sharkCustomFragment = SharkCustomFragment.this;
            sharkCustomFragment.a(sharkCustomFragment.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f6872a;

        e(SharkCustomFragment sharkCustomFragment, f fVar) {
            this.f6872a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6872a.b();
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

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void g(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    public void n() {
        if (!j.b().a()) {
            c0.a((CharSequence) k0.c(R.string.device_not_connected), false);
        } else if (this.j) {
            if (!d0.U()) {
                c0.a((CharSequence) k0.c(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.k.size() >= 20) {
                c0.a((CharSequence) k0.c(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", c0.b(this.k));
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
        if (this.q.n()) {
            a(false, false, getString(R.string.custom_ch_syncing), R.drawable.load_spinner);
            this.r.clear();
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.i(2);
            d(sealSharkChannel);
            this.j = false;
            k0.a(new b(), 10000L);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SharkChannelSettingActivity sharkChannelSettingActivity = (SharkChannelSettingActivity) getActivity();
        this.l = sharkChannelSettingActivity;
        SealSharkChannel w = sharkChannelSettingActivity.w();
        this.n = w;
        this.m.a(w);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        SealSharkChannel sealSharkChannel;
        String str = u;
        z.a(str, "onActivityResult:" + i);
        if (i == 201) {
            if (intent == null) {
                z.a(u, "result data is null...");
            } else if (i2 == 2001 && (sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("customChannel")) != null) {
                String str2 = u;
                z.a(str2, "customChannel:" + sealSharkChannel.toString());
                this.n = sealSharkChannel;
                b(sealSharkChannel);
            }
        } else if (i != 202) {
        } else {
            if (i2 == 2002) {
                if (intent == null) {
                    z.a(u, "result data is null...");
                    return;
                }
                SealSharkChannel sealSharkChannel2 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannel2 != null) {
                    String str3 = u;
                    z.a(str3, "customChannel:" + sealSharkChannel2.toString());
                    this.n = sealSharkChannel2;
                    c(sealSharkChannel2);
                }
            } else if (i2 == 2003) {
                SealSharkChannel sealSharkChannel3 = (SealSharkChannel) intent.getParcelableExtra("customChannel");
                this.n = sealSharkChannel3;
                a(sealSharkChannel3);
            } else {
                this.l.c(false);
                this.l.b(false);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        o oVar = new o(getActivity(), this.k);
        this.m = oVar;
        oVar.setOnItemClickListener(this);
        this.s = new b.d.a.a.e.a(this.m);
        View view = new View(k0.a());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
        view.setBackgroundColor(k0.a((int) R.color.space_bg));
        this.s.a(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.s);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(k0.a()));
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        z.a(u, "receiveChannelInfoOperateResp");
        if (!this.l.z()) {
            if (this.l.x() == 0 || this.l.y()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        z.a(u, "receiveChannelStateOperateResp");
        if (!this.l.z()) {
            if (this.l.x() == 0 || this.l.y()) {
                this.l.b(false);
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void c(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        z.c(u, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.t = number;
            if ((number == 0 || number == 2 || number == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.h) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannel a2 = h0.a(sHARK_ChannelStateOperate.getCh1());
                        this.n = a2;
                        this.l.a(a2);
                        this.m.a(this.n);
                        b.d.a.a.e.a aVar = this.s;
                        if (aVar != null) {
                            aVar.notifyDataSetChanged();
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannel a3 = h0.a(sHARK_ChannelStateOperate.getCh2());
                    this.n = a3;
                    this.l.a(a3);
                    this.m.a(this.n);
                    b.d.a.a.e.a aVar2 = this.s;
                    if (aVar2 != null) {
                        aVar2.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void d(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = h0.a(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.k.indexOf(a2);
            if (indexOf != -1) {
                this.k.remove(indexOf);
                this.k.add(indexOf, a2);
                SealSharkChannel w = this.l.w();
                if (w != null && w.equals(a2)) {
                    this.n = a2;
                    this.l.a(a2);
                }
                this.s.notifyItemChanged(indexOf);
                return;
            }
            a2.f();
            this.k.add(a2);
            this.s.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void e(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            this.r.add(h0.a(sHARK_ChannelInfoOperate.getCh()));
        }
        h0.a();
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void f(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        this.q.c(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.k.clear();
        this.k.addAll(this.r);
        b.d.a.a.e.a aVar = this.s;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
        j();
        this.j = true;
    }

    public void g(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannel);
        startActivityForResult(intent, 202);
    }

    public static SharkCustomFragment b(boolean z) {
        SharkCustomFragment sharkCustomFragment = new SharkCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        sharkCustomFragment.setArguments(bundle);
        return sharkCustomFragment;
    }

    @Override // com.ifengyu.intercom.ui.adapter.o.d
    public void a(View view, int i, SealSharkChannel sealSharkChannel) {
        int i2 = this.t;
        if (i2 == 3 || i2 == 4) {
            c0.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
        } else if (i2 == 5 || i2 == 6) {
            c0.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
        } else {
            this.n = sealSharkChannel;
            e(sealSharkChannel);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(u, "onFragmentFirstVisible");
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void b(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.t = number;
            if (number != 0 || !sHARK_ChannelStateOperate.hasStateMode() || sHARK_ChannelStateOperate.getStateMode() != 1) {
                return;
            }
            if (this.h) {
                if (sHARK_ChannelStateOperate.hasCh1()) {
                    SealSharkChannel a2 = h0.a(sHARK_ChannelStateOperate.getCh1());
                    this.n = a2;
                    this.l.a(a2);
                    this.m.a(this.n);
                    b.d.a.a.e.a aVar = this.s;
                    if (aVar != null) {
                        aVar.notifyDataSetChanged();
                    }
                }
            } else if (sHARK_ChannelStateOperate.hasCh2()) {
                SealSharkChannel a3 = h0.a(sHARK_ChannelStateOperate.getCh2());
                this.n = a3;
                this.l.a(a3);
                this.m.a(this.n);
                b.d.a.a.e.a aVar2 = this.s;
                if (aVar2 != null) {
                    aVar2.notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = u;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            o();
            return;
        }
        k();
        k0.f();
    }

    public void f(SealSharkChannel sealSharkChannel) {
        String[] strArr = {k0.c(R.string.common_delete), k0.c(R.string.edit), k0.c(R.string.common_cancel)};
        q qVar = new q(getActivity());
        qVar.a(k0.a((int) R.string.channel_custom_2s, c0.b(sealSharkChannel.i()), c0.b(sealSharkChannel.l())));
        qVar.a(true);
        qVar.a(strArr, new c(sealSharkChannel));
        qVar.show();
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void c(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = h0.a(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.k.indexOf(a2);
            if (indexOf != -1) {
                this.k.remove(indexOf);
                this.k.add(indexOf, a2);
                SealSharkChannel w = this.l.w();
                if (w != null && w.equals(a2)) {
                    this.n = a2;
                    this.l.a(a2);
                }
                this.s.notifyItemChanged(indexOf);
                return;
            }
            this.k.add(a2);
            this.s.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void b(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        int i = this.o;
        if (i != -1) {
            this.k.remove(i);
            this.s.notifyItemRemoved(this.o);
            this.p.delete(this.n);
        }
    }

    @Override // com.ifengyu.intercom.ui.adapter.o.d
    public void b(View view, int i, SealSharkChannel sealSharkChannel) {
        this.o = i;
        this.n = sealSharkChannel;
        f(sealSharkChannel);
    }
}
