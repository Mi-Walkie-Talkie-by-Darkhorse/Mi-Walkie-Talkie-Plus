package com.ifengyu.intercom.ui.setting.seal.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealPresetChCssEditActivity;
import com.ifengyu.library.base.BaseApp;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SealPresetFragment.java */
/* loaded from: classes2.dex */
public class b extends a {
    private static final String r = b.class.getSimpleName();
    private static final int[] s = k0.b((int) R.array.seal_public_5_channel);
    private static final int[] t = k0.b((int) R.array.seal_public_all_channel);
    private static final int[] u = k0.b((int) R.array.seal_remote_channel);
    private List<SealSharkChannel> j = new ArrayList();
    private List<SealSharkChannel> k = new ArrayList();
    private SealChannelSettingActivity l;
    private SealSharkChannel m;
    private b.d.a.a.a<SealSharkChannel> n;
    private b.d.a.a.a<SealSharkChannel> o;
    private TextView p;
    private boolean q;

    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.p();
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0182b extends b.d.a.a.a<SealSharkChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.b$b$a */
        /* loaded from: classes2.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6778a;

            a(SealSharkChannel sealSharkChannel) {
                this.f6778a = sealSharkChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.m = this.f6778a;
                b.this.e(this.f6778a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC0183b implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6780a;

            View$OnLongClickListenerC0183b(SealSharkChannel sealSharkChannel) {
                this.f6780a = sealSharkChannel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(b.this.getActivity(), SealPresetChCssEditActivity.class);
                intent.putExtra("seal_action_edit_css_channel_info", this.f6780a);
                b.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C0182b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(b.d.a.a.c.c cVar, SealSharkChannel sealSharkChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (b.this.l != null) {
                SealSharkChannel w = b.this.l.w();
                if (w == null || !w.equals(sealSharkChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new a(sealSharkChannel));
            cVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC0183b(sealSharkChannel));
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    class c extends b.d.a.a.a<SealSharkChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* loaded from: classes2.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6782a;

            a(SealSharkChannel sealSharkChannel) {
                this.f6782a = sealSharkChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.m = this.f6782a;
                b.this.e(this.f6782a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.seal.fragment.b$c$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC0184b implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6784a;

            View$OnLongClickListenerC0184b(SealSharkChannel sealSharkChannel) {
                this.f6784a = sealSharkChannel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(b.this.getActivity(), SealPresetChCssEditActivity.class);
                intent.putExtra("seal_action_edit_css_channel_info", this.f6784a);
                b.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        c(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(b.d.a.a.c.c cVar, SealSharkChannel sealSharkChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (b.this.l != null) {
                SealSharkChannel w = b.this.l.w();
                if (w == null || !w.equals(sealSharkChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new a(sealSharkChannel));
            cVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC0184b(sealSharkChannel));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    public class e implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6787a;

        /* compiled from: SealPresetFragment.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.k();
            }
        }

        e(com.ifengyu.intercom.ui.widget.dialog.f fVar) {
            this.f6787a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6787a.b();
            b.this.m();
            b bVar = b.this;
            bVar.m = (SealSharkChannel) bVar.j.get(0);
            BaseApp.a().postDelayed(new a(), 5000L);
            g0.f(b.this.m);
            b.this.q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    public class f implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.ui.widget.dialog.f f6790a;

        f(b bVar, com.ifengyu.intercom.ui.widget.dialog.f fVar) {
            this.f6790a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f6790a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.k();
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6792a;

        h(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6792a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6792a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                if (b.this.q) {
                    b.this.q = false;
                    if (b.this.m != null) {
                        b.this.l.b(b.this.m);
                        b.this.l.a(b.this.m);
                        if (b.this.o != null) {
                            b.this.o.notifyDataSetChanged();
                        }
                        if (b.this.n != null) {
                            b.this.n.notifyDataSetChanged();
                        }
                    }
                }
                b.this.k();
                if (this.f6792a.hasIsAllPublic()) {
                    boolean z = this.f6792a.getIsAllPublic() == SealProtos.SEAL_SWITCH.SEAL_ON;
                    int[] iArr = z ? b.t : b.s;
                    b.this.p.setText(b.this.getString(z ? R.string.hide_other_15_channel : R.string.display_other_15_channel));
                    b.this.j.clear();
                    int i = 0;
                    while (i < iArr.length) {
                        SealSharkChannel sealSharkChannel = new SealSharkChannel();
                        sealSharkChannel.b(i);
                        sealSharkChannel.i(0);
                        sealSharkChannel.d(iArr[i]);
                        sealSharkChannel.g(iArr[i]);
                        i++;
                        sealSharkChannel.a(k0.a((int) R.string.channel_public_d, Integer.valueOf(i)));
                        sealSharkChannel.c(0);
                        sealSharkChannel.f(0);
                        sealSharkChannel.b(true);
                        b.this.j.add(sealSharkChannel);
                    }
                    b.this.n.notifyDataSetChanged();
                    return;
                }
                return;
            }
            b.this.b(R.string.set_failed);
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* loaded from: classes2.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b(R.string.set_failed);
        }
    }

    public static b newInstance() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        boolean z = true;
        if (getString(R.string.display_other_15_channel).equals(this.p.getText())) {
            a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            BaseApp.a().postDelayed(new d(), 5000L);
            if (this.j.size() != s.length) {
                z = false;
            }
            g0.a(z);
            return;
        }
        SealSharkChannel w = this.l.w();
        this.m = w;
        if (w == null || w.n() != 0 || this.m.f() < 5) {
            a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            BaseApp.a().postDelayed(new g(), 5000L);
            if (this.j.size() != s.length) {
                z = false;
            }
            g0.a(z);
            return;
        }
        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this.l);
        fVar.a(getString(R.string.will_check_public_1_if_hide_15));
        fVar.b(false);
        fVar.a(false);
        fVar.a(R.string.common_cancel, new f(this, fVar));
        fVar.c(R.string.common_carry_on, new e(fVar));
        fVar.a();
        fVar.d();
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SealChannelSettingActivity sealChannelSettingActivity = (SealChannelSettingActivity) getActivity();
        this.l = sealChannelSettingActivity;
        this.m = sealChannelSettingActivity.w();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        String str = r;
        z.a(str, "onActivityResult:" + i2 + "--resultCode:" + i3);
        if (i2 != 101) {
            return;
        }
        if (i3 != 1001) {
            this.l.c(false);
            this.l.b(false);
        } else if (intent == null) {
            z.a(r, "result data is null...");
        } else {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("cssCodeModifiedPresetChannel");
            if (sealSharkChannel != null) {
                String str2 = r;
                z.a(str2, "cssCodeModifiedPresetChannel:" + sealSharkChannel.toString());
                c(sealSharkChannel);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int[] iArr = d0.v() ? t : s;
        int i2 = 0;
        while (i2 < iArr.length) {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.b(i2);
            sealSharkChannel.i(0);
            sealSharkChannel.d(iArr[i2]);
            sealSharkChannel.g(iArr[i2]);
            i2++;
            sealSharkChannel.a(k0.a((int) R.string.channel_public_d, Integer.valueOf(i2)));
            sealSharkChannel.c(0);
            sealSharkChannel.f(0);
            sealSharkChannel.b(true);
            this.j.add(sealSharkChannel);
        }
        int i3 = 0;
        while (i3 < u.length) {
            SealSharkChannel sealSharkChannel2 = new SealSharkChannel();
            sealSharkChannel2.b(i3);
            sealSharkChannel2.i(1);
            sealSharkChannel2.d(u[i3]);
            sealSharkChannel2.g(u[i3]);
            i3++;
            sealSharkChannel2.a(k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(i3)));
            sealSharkChannel2.c(0);
            sealSharkChannel2.f(0);
            sealSharkChannel2.b(true);
            this.k.add(sealSharkChannel2);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        TextView textView = (TextView) inflate.findViewById(R.id.display_all_20_public_channel);
        this.p = textView;
        textView.setText(getString(d0.v() ? R.string.hide_other_15_channel : R.string.display_other_15_channel));
        this.p.setOnClickListener(new a());
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        C0182b bVar = new C0182b(getActivity(), R.layout.layout_preset_item, this.j);
        this.n = bVar;
        recyclerView.setAdapter(bVar);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        c cVar = new c(getActivity(), R.layout.layout_preset_item, this.k);
        this.o = cVar;
        recyclerView2.setAdapter(cVar);
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        z.a(r, "receiveChannelInfoOperateResp");
        if (!this.l.y()) {
            if (this.l.x() == 1 || this.l.z()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        z.a(r, "receiveChannelStateOperateResp");
        if (!this.l.y()) {
            boolean z = true;
            if (this.l.x() == 1 || this.l.z()) {
                this.l.c(false);
                if (!this.q) {
                    a(sEAL_ChannelStateOperate);
                } else if (sEAL_ChannelStateOperate.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK && sEAL_ChannelStateOperate.getOption() == SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE) {
                    if (this.j.size() != s.length) {
                        z = false;
                    }
                    g0.a(z);
                } else {
                    this.q = false;
                    getActivity().runOnUiThread(new i());
                }
            }
        }
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        z.c(r, "receiveParamResponse");
        k0.a(new h(sEAL_DeviceParam));
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void b(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelStateOperate.getCh1());
            this.m = a2;
            this.l.a(a2);
            b.d.a.a.a<SealSharkChannel> aVar = this.o;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<SealSharkChannel> aVar2 = this.n;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void c(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        z.c(r, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelStateOperate.getCh1());
            this.m = a2;
            this.l.a(a2);
            b.d.a.a.a<SealSharkChannel> aVar = this.o;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<SealSharkChannel> aVar2 = this.n;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
            if (this.m.n() == 1 && !d0.U()) {
                c0.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void d(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        z.c(r, "onModifyChannelSuccess");
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelInfoOperate.getCh());
            if (this.m.equals(a2)) {
                this.m = a2;
                this.l.a(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void e() {
        super.e();
        z.a(r, "onFragmentFirstVisible");
    }

    public void f(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SealPresetChCssEditActivity.class);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
        startActivityForResult(intent, 101);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = r;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            b.d.a.a.a<SealSharkChannel> aVar = this.o;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<SealSharkChannel> aVar2 = this.n;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.seal.fragment.a
    protected void f(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        j();
    }
}
