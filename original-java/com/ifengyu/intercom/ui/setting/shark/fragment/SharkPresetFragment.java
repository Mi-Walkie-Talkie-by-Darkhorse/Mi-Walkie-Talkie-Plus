package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkPresetChCssEditActivity;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.a;
import com.zhy.a.a.a.c;
import java.util.ArrayList;
import java.util.List;

public class SharkPresetFragment extends SharkChannelBaseFragment {
    private static final String f = SharkPresetFragment.class.getSimpleName();
    private static final int[] g = ad.c(R.array.seal_public_all_channel);
    private static final int[] h = ad.c(R.array.seal_remote_channel);
    private List<SealSharkChannel> i = new ArrayList();
    private List<SealSharkChannel> j = new ArrayList();
    /* access modifiers changed from: private */
    public SharkChannelSettingActivity k;
    /* access modifiers changed from: private */
    public SealSharkChannel l;
    private a<SealSharkChannel> m;
    private a<SealSharkChannel> n;
    /* access modifiers changed from: private */
    public int o;

    public static SharkPresetFragment b(boolean z) {
        SharkPresetFragment sharkPresetFragment = new SharkPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        sharkPresetFragment.setArguments(bundle);
        return sharkPresetFragment;
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        for (int i2 = 0; i2 < g.length; i2++) {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.a(i2);
            sealSharkChannel.b(0);
            sealSharkChannel.d(g[i2]);
            sealSharkChannel.e(g[i2]);
            sealSharkChannel.a(ad.a((int) R.string.channel_public_d, Integer.valueOf(i2 + 1)));
            sealSharkChannel.h(0);
            sealSharkChannel.i(0);
            sealSharkChannel.c(true);
            this.i.add(sealSharkChannel);
        }
        for (int i3 = 0; i3 < h.length; i3++) {
            SealSharkChannel sealSharkChannel2 = new SealSharkChannel();
            sealSharkChannel2.a(i3);
            sealSharkChannel2.b(1);
            sealSharkChannel2.d(h[i3]);
            sealSharkChannel2.e(h[i3]);
            sealSharkChannel2.a(ad.a((int) R.string.channel_long_distance_d, Integer.valueOf(i3 + 1)));
            sealSharkChannel2.h(0);
            sealSharkChannel2.i(0);
            sealSharkChannel2.c(true);
            this.j.add(sealSharkChannel2);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        this.m = new a<SealSharkChannel>(getActivity(), R.layout.layout_preset_item, this.i) {
            /* access modifiers changed from: protected */
            public void a(c cVar, final SealSharkChannel sealSharkChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_channel);
                textView.setTypeface(l.c);
                textView.setText(String.valueOf(i + 1));
                if (SharkPresetFragment.this.k != null) {
                    SealSharkChannel d = SharkPresetFragment.this.k.d();
                    if (d == null || !d.equals(sealSharkChannel)) {
                        textView.setSelected(false);
                        textView.setTextColor(ad.d(R.color.black));
                    } else {
                        textView.setSelected(true);
                        textView.setTextColor(ad.d(R.color.select_color));
                    }
                }
                cVar.itemView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        switch (SharkPresetFragment.this.o) {
                            case 3:
                            case 4:
                                v.a((CharSequence) SharkPresetFragment.this.getString(R.string.scan_mode_can_not_setting), false);
                                return;
                            case 5:
                            case 6:
                                v.a((CharSequence) SharkPresetFragment.this.getString(R.string.team_mode_can_not_setting), false);
                                return;
                            default:
                                SharkPresetFragment.this.l = sealSharkChannel;
                                SharkPresetFragment.this.a(sealSharkChannel);
                                return;
                        }
                    }
                });
                cVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                    public boolean onLongClick(View view) {
                        Intent intent = new Intent(SharkPresetFragment.this.getActivity(), SharkPresetChCssEditActivity.class);
                        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
                        SharkPresetFragment.this.startActivityForResult(intent, 101);
                        return true;
                    }
                });
            }
        };
        recyclerView.setAdapter(this.m);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        this.n = new a<SealSharkChannel>(getActivity(), R.layout.layout_preset_item, this.j) {
            /* access modifiers changed from: protected */
            public void a(c cVar, final SealSharkChannel sealSharkChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_channel);
                textView.setTypeface(l.c);
                textView.setText(String.valueOf(i + 1));
                if (SharkPresetFragment.this.k != null) {
                    SealSharkChannel d = SharkPresetFragment.this.k.d();
                    if (d == null || !d.equals(sealSharkChannel)) {
                        textView.setSelected(false);
                        textView.setTextColor(ad.d(R.color.black));
                    } else {
                        textView.setSelected(true);
                        textView.setTextColor(ad.d(R.color.select_color));
                    }
                }
                cVar.itemView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        switch (SharkPresetFragment.this.o) {
                            case 3:
                            case 4:
                                v.a((CharSequence) SharkPresetFragment.this.getString(R.string.scan_mode_can_not_setting), false);
                                return;
                            case 5:
                            case 6:
                                v.a((CharSequence) SharkPresetFragment.this.getString(R.string.team_mode_can_not_setting), false);
                                return;
                            default:
                                SharkPresetFragment.this.l = sealSharkChannel;
                                SharkPresetFragment.this.a(sealSharkChannel);
                                return;
                        }
                    }
                });
                cVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                    public boolean onLongClick(View view) {
                        Intent intent = new Intent(SharkPresetFragment.this.getActivity(), SharkPresetChCssEditActivity.class);
                        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
                        SharkPresetFragment.this.startActivityForResult(intent, 101);
                        return true;
                    }
                });
            }
        };
        recyclerView2.setAdapter(this.n);
        return inflate;
    }

    public void f(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SharkPresetChCssEditActivity.class);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
        startActivityForResult(intent, 101);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        s.b(f, "onActivityResult:" + i2);
        if (i2 != 101) {
            return;
        }
        if (i3 != 1001) {
            this.k.a(false);
            this.k.b(false);
        } else if (intent == null) {
            s.b(f, "result data is null...");
        } else {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("cssCodeModifiedPresetChannel");
            if (sealSharkChannel != null) {
                s.b(f, "cssCodeModifiedPresetChannel:" + sealSharkChannel.toString());
                d(sealSharkChannel);
            }
        }
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.k = (SharkChannelSettingActivity) getActivity();
        this.l = this.k.d();
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        s.b(f, "receiveChannelInfoOperateResp");
        if (!this.k.f()) {
            if (this.k.c() == 1 || this.k.e()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.b(f, "receiveChannelStateOperateResp");
        if (!this.k.f()) {
            if (this.k.c() == 1 || this.k.e()) {
                this.k.a(false);
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            this.o = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            if (this.o != 0 || !sHARK_ChannelStateOperate.hasStateMode() || sHARK_ChannelStateOperate.getStateMode() != 1) {
                return;
            }
            if (this.c) {
                if (sHARK_ChannelStateOperate.hasCh1()) {
                    this.l = ab.a(sHARK_ChannelStateOperate.getCh1());
                    this.k.a(this.l);
                    if (this.n != null) {
                        this.n.notifyDataSetChanged();
                    }
                    if (this.m != null) {
                        this.m.notifyDataSetChanged();
                    }
                    if (this.l.c() == 1 && !w.ag()) {
                        v.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                }
            } else if (sHARK_ChannelStateOperate.hasCh2()) {
                this.l = ab.a(sHARK_ChannelStateOperate.getCh2());
                this.k.a(this.l);
                if (this.n != null) {
                    this.n.notifyDataSetChanged();
                }
                if (this.m != null) {
                    this.m.notifyDataSetChanged();
                }
                if (this.l.c() == 1 && !w.ag()) {
                    v.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.c(f, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            this.o = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            if ((this.o == 0 || this.o == 2 || this.o == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.c) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        this.l = ab.a(sHARK_ChannelStateOperate.getCh1());
                        this.k.a(this.l);
                        if (this.n != null) {
                            this.n.notifyDataSetChanged();
                        }
                        if (this.m != null) {
                            this.m.notifyDataSetChanged();
                        }
                        if (this.l.c() == 1 && !w.ag()) {
                            v.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    this.l = ab.a(sHARK_ChannelStateOperate.getCh2());
                    this.k.a(this.l);
                    if (this.n != null) {
                        this.n.notifyDataSetChanged();
                    }
                    if (this.m != null) {
                        this.m.notifyDataSetChanged();
                    }
                    if (this.l.c() == 1 && !w.ag()) {
                        v.a((CharSequence) getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void d(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        s.c(f, "onModifyChannelSuccess");
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a = ab.a(sHARK_ChannelInfoOperate.getCh());
            if (this.l.equals(a)) {
                this.l = a;
                this.k.a(this.l);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void e(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        e();
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
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
            if (this.m != null) {
                this.m.notifyDataSetChanged();
            }
        }
    }
}
