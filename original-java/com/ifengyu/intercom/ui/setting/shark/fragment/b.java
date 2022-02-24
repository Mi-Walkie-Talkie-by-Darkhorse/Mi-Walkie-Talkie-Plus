package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.d.a.a.c.c;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkPresetChCssEditActivity;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SharkPresetFragment.java */
/* loaded from: classes2.dex */
public class b extends a {
    private static final String r = b.class.getSimpleName();
    private static final int[] s = k0.b((int) R.array.seal_public_all_channel);
    private static final int[] t = k0.b((int) R.array.seal_remote_channel);
    private List<SealSharkChannel> k = new ArrayList();
    private List<SealSharkChannel> l = new ArrayList();
    private SharkChannelSettingActivity m;
    private SealSharkChannel n;
    private b.d.a.a.a<SealSharkChannel> o;
    private b.d.a.a.a<SealSharkChannel> p;
    private int q;

    /* compiled from: SharkPresetFragment.java */
    /* loaded from: classes2.dex */
    class a extends b.d.a.a.a<SealSharkChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC0189a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6884a;

            View$OnClickListenerC0189a(SealSharkChannel sealSharkChannel) {
                this.f6884a = sealSharkChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = b.this.q;
                if (i == 3 || i == 4) {
                    c0.a((CharSequence) b.this.getString(R.string.scan_mode_can_not_setting), false);
                } else if (i == 5 || i == 6) {
                    c0.a((CharSequence) b.this.getString(R.string.team_mode_can_not_setting), false);
                } else {
                    b.this.n = this.f6884a;
                    b.this.e(this.f6884a);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC0190b implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6886a;

            View$OnLongClickListenerC0190b(SealSharkChannel sealSharkChannel) {
                this.f6886a = sealSharkChannel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(b.this.getActivity(), SharkPresetChCssEditActivity.class);
                intent.putExtra("seal_action_edit_css_channel_info", this.f6886a);
                b.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        a(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(c cVar, SealSharkChannel sealSharkChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setTypeface(p.f5324b);
            textView.setText(String.valueOf(i + 1));
            if (b.this.m != null) {
                SealSharkChannel w = b.this.m.w();
                if (w == null || !w.equals(sealSharkChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new View$OnClickListenerC0189a(sealSharkChannel));
            cVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC0190b(sealSharkChannel));
        }
    }

    /* compiled from: SharkPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0191b extends b.d.a.a.a<SealSharkChannel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.b$b$a */
        /* loaded from: classes2.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6888a;

            a(SealSharkChannel sealSharkChannel) {
                this.f6888a = sealSharkChannel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = b.this.q;
                if (i == 3 || i == 4) {
                    c0.a((CharSequence) b.this.getString(R.string.scan_mode_can_not_setting), false);
                } else if (i == 5 || i == 6) {
                    c0.a((CharSequence) b.this.getString(R.string.team_mode_can_not_setting), false);
                } else {
                    b.this.n = this.f6888a;
                    b.this.e(this.f6888a);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.ui.setting.shark.fragment.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC0192b implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SealSharkChannel f6890a;

            View$OnLongClickListenerC0192b(SealSharkChannel sealSharkChannel) {
                this.f6890a = sealSharkChannel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(b.this.getActivity(), SharkPresetChCssEditActivity.class);
                intent.putExtra("seal_action_edit_css_channel_info", this.f6890a);
                b.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C0191b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(c cVar, SealSharkChannel sealSharkChannel, int i) {
            TextView textView = (TextView) cVar.a(R.id.tv_channel);
            textView.setTypeface(p.f5324b);
            textView.setText(String.valueOf(i + 1));
            if (b.this.m != null) {
                SealSharkChannel w = b.this.m.w();
                if (w == null || !w.equals(sealSharkChannel)) {
                    textView.setSelected(false);
                    textView.setTextColor(k0.a((int) R.color.black));
                } else {
                    textView.setSelected(true);
                    textView.setTextColor(k0.a((int) R.color.select_color));
                }
            }
            cVar.itemView.setOnClickListener(new a(sealSharkChannel));
            cVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC0192b(sealSharkChannel));
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void c(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        z.c(r, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.q = number;
            if ((number == 0 || number == 2 || number == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.h) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannel a2 = h0.a(sHARK_ChannelStateOperate.getCh1());
                        this.n = a2;
                        this.m.a(a2);
                        b.d.a.a.a<SealSharkChannel> aVar = this.p;
                        if (aVar != null) {
                            aVar.notifyDataSetChanged();
                        }
                        b.d.a.a.a<SealSharkChannel> aVar2 = this.o;
                        if (aVar2 != null) {
                            aVar2.notifyDataSetChanged();
                        }
                        if (this.n.n() == 1 && !d0.U()) {
                            c0.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannel a3 = h0.a(sHARK_ChannelStateOperate.getCh2());
                    this.n = a3;
                    this.m.a(a3);
                    b.d.a.a.a<SealSharkChannel> aVar3 = this.p;
                    if (aVar3 != null) {
                        aVar3.notifyDataSetChanged();
                    }
                    b.d.a.a.a<SealSharkChannel> aVar4 = this.o;
                    if (aVar4 != null) {
                        aVar4.notifyDataSetChanged();
                    }
                    if (this.n.n() == 1 && !d0.U()) {
                        c0.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void d(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        z.c(r, "onModifyChannelSuccess");
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = h0.a(sHARK_ChannelInfoOperate.getCh());
            if (this.n.equals(a2)) {
                this.n = a2;
                this.m.a(a2);
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
        Intent intent = new Intent(getActivity(), SharkPresetChCssEditActivity.class);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
        startActivityForResult(intent, 101);
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SharkChannelSettingActivity sharkChannelSettingActivity = (SharkChannelSettingActivity) getActivity();
        this.m = sharkChannelSettingActivity;
        this.n = sharkChannelSettingActivity.w();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = r;
        z.a(str, "onActivityResult:" + i);
        if (i != 101) {
            return;
        }
        if (i2 != 1001) {
            this.m.c(false);
            this.m.b(false);
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

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        while (i < s.length) {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.b(i);
            sealSharkChannel.i(0);
            sealSharkChannel.d(s[i]);
            sealSharkChannel.g(s[i]);
            i++;
            sealSharkChannel.a(k0.a((int) R.string.channel_public_d, Integer.valueOf(i)));
            sealSharkChannel.c(0);
            sealSharkChannel.f(0);
            sealSharkChannel.b(true);
            this.k.add(sealSharkChannel);
        }
        int i2 = 0;
        while (i2 < t.length) {
            SealSharkChannel sealSharkChannel2 = new SealSharkChannel();
            sealSharkChannel2.b(i2);
            sealSharkChannel2.i(1);
            sealSharkChannel2.d(t[i2]);
            sealSharkChannel2.g(t[i2]);
            i2++;
            sealSharkChannel2.a(k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(i2)));
            sealSharkChannel2.c(0);
            sealSharkChannel2.f(0);
            sealSharkChannel2.b(true);
            this.l.add(sealSharkChannel2);
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        a aVar = new a(getActivity(), R.layout.layout_preset_item, this.k);
        this.o = aVar;
        recyclerView.setAdapter(aVar);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        C0191b bVar = new C0191b(getActivity(), R.layout.layout_preset_item, this.l);
        this.p = bVar;
        recyclerView2.setAdapter(bVar);
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a, com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        z.a(r, "receiveChannelInfoOperateResp");
        if (!this.m.y()) {
            if (this.m.x() == 1 || this.m.z()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        z.a(r, "receiveChannelStateOperateResp");
        if (!this.m.y()) {
            if (this.m.x() == 1 || this.m.z()) {
                this.m.c(false);
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    public static b b(boolean z) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        bVar.setArguments(bundle);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.a
    public void a(boolean z) {
        super.a(z);
        String str = r;
        z.a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            b.d.a.a.a<SealSharkChannel> aVar = this.p;
            if (aVar != null) {
                aVar.notifyDataSetChanged();
            }
            b.d.a.a.a<SealSharkChannel> aVar2 = this.o;
            if (aVar2 != null) {
                aVar2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void f(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        j();
    }

    @Override // com.ifengyu.intercom.ui.setting.shark.fragment.a
    protected void b(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.q = number;
            if (number != 0 || !sHARK_ChannelStateOperate.hasStateMode() || sHARK_ChannelStateOperate.getStateMode() != 1) {
                return;
            }
            if (this.h) {
                if (sHARK_ChannelStateOperate.hasCh1()) {
                    SealSharkChannel a2 = h0.a(sHARK_ChannelStateOperate.getCh1());
                    this.n = a2;
                    this.m.a(a2);
                    b.d.a.a.a<SealSharkChannel> aVar = this.p;
                    if (aVar != null) {
                        aVar.notifyDataSetChanged();
                    }
                    b.d.a.a.a<SealSharkChannel> aVar2 = this.o;
                    if (aVar2 != null) {
                        aVar2.notifyDataSetChanged();
                    }
                    if (this.n.n() == 1 && !d0.U()) {
                        c0.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                }
            } else if (sHARK_ChannelStateOperate.hasCh2()) {
                SealSharkChannel a3 = h0.a(sHARK_ChannelStateOperate.getCh2());
                this.n = a3;
                this.m.a(a3);
                b.d.a.a.a<SealSharkChannel> aVar3 = this.p;
                if (aVar3 != null) {
                    aVar3.notifyDataSetChanged();
                }
                b.d.a.a.a<SealSharkChannel> aVar4 = this.o;
                if (aVar4 != null) {
                    aVar4.notifyDataSetChanged();
                }
                if (this.n.n() == 1 && !d0.U()) {
                    c0.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                }
            }
        }
    }
}
