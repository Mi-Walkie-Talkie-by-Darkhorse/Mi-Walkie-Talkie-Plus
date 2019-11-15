package com.ifengyu.intercom.ui.setting.seal.fragment;

import android.content.DialogInterface;
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
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_MODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_SWITCH;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealPresetChCssEditActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.a;
import com.zhy.a.a.a.c;
import java.util.ArrayList;
import java.util.List;

public class SealPresetFragment extends SealChannelBaseFragment {
    private static final String e = SealPresetFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public static final int[] f = ad.c(R.array.seal_public_5_channel);
    /* access modifiers changed from: private */
    public static final int[] g = ad.c(R.array.seal_public_all_channel);
    private static final int[] h = ad.c(R.array.seal_remote_channel);
    /* access modifiers changed from: private */
    public List<SealSharkChannel> i = new ArrayList();
    private List<SealSharkChannel> j = new ArrayList();
    /* access modifiers changed from: private */
    public SealChannelSettingActivity k;
    /* access modifiers changed from: private */
    public SealSharkChannel l;
    /* access modifiers changed from: private */
    public a<SealSharkChannel> m;
    /* access modifiers changed from: private */
    public a<SealSharkChannel> n;
    /* access modifiers changed from: private */
    public TextView o;
    /* access modifiers changed from: private */
    public boolean p;

    public static SealPresetFragment g() {
        return new SealPresetFragment();
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int[] iArr = w.v() ? g : f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            sealSharkChannel.a(i2);
            sealSharkChannel.b(0);
            sealSharkChannel.d(iArr[i2]);
            sealSharkChannel.e(iArr[i2]);
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
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        this.o = (TextView) inflate.findViewById(R.id.display_all_20_public_channel);
        this.o.setText(w.v() ? getString(R.string.hide_other_15_channel) : getString(R.string.display_other_15_channel));
        this.o.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SealPresetFragment.this.j();
            }
        });
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        this.m = new a<SealSharkChannel>(getActivity(), R.layout.layout_preset_item, this.i) {
            /* access modifiers changed from: protected */
            public void a(c cVar, final SealSharkChannel sealSharkChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_channel);
                textView.setText(String.valueOf(i + 1));
                if (SealPresetFragment.this.k != null) {
                    SealSharkChannel d = SealPresetFragment.this.k.d();
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
                        SealPresetFragment.this.l = sealSharkChannel;
                        SealPresetFragment.this.a(sealSharkChannel);
                    }
                });
                cVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                    public boolean onLongClick(View view) {
                        Intent intent = new Intent(SealPresetFragment.this.getActivity(), SealPresetChCssEditActivity.class);
                        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
                        SealPresetFragment.this.startActivityForResult(intent, 101);
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
                textView.setText(String.valueOf(i + 1));
                if (SealPresetFragment.this.k != null) {
                    SealSharkChannel d = SealPresetFragment.this.k.d();
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
                        SealPresetFragment.this.l = sealSharkChannel;
                        SealPresetFragment.this.a(sealSharkChannel);
                    }
                });
                cVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                    public boolean onLongClick(View view) {
                        Intent intent = new Intent(SealPresetFragment.this.getActivity(), SealPresetChCssEditActivity.class);
                        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
                        SealPresetFragment.this.startActivityForResult(intent, 101);
                        return true;
                    }
                });
            }
        };
        recyclerView2.setAdapter(this.n);
        return inflate;
    }

    /* access modifiers changed from: private */
    public void j() {
        boolean z = true;
        if (getString(R.string.display_other_15_channel).equals(this.o.getText())) {
            a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    SealPresetFragment.this.f();
                }
            }, 5000);
            if (this.i.size() != f.length) {
                z = false;
            }
            aa.c(z);
            return;
        }
        this.l = this.k.d();
        if (this.l == null || this.l.c() != 0 || this.l.b() < 5) {
            a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    SealPresetFragment.this.f();
                }
            }, 5000);
            if (this.i.size() != f.length) {
                z = false;
            }
            aa.c(z);
            return;
        }
        final d dVar = new d(this.k);
        dVar.b((CharSequence) getString(R.string.will_check_public_1_if_hide_15)).a(false).b(false).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
            }
        }).b((int) R.string.common_carry_on, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
                SealPresetFragment.this.d();
                SealPresetFragment.this.l = (SealSharkChannel) SealPresetFragment.this.i.get(0);
                MiTalkiApp.n().postDelayed(new Runnable() {
                    public void run() {
                        SealPresetFragment.this.f();
                    }
                }, 5000);
                aa.a(SealPresetFragment.this.l);
                SealPresetFragment.this.p = true;
            }
        }).b().c();
    }

    public void f(SealSharkChannel sealSharkChannel) {
        Intent intent = new Intent(getActivity(), SealPresetChCssEditActivity.class);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannel);
        startActivityForResult(intent, 101);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        s.b(e, "onActivityResult:" + i2 + "--resultCode:" + i3);
        if (i2 != 101) {
            return;
        }
        if (i3 != 1001) {
            this.k.a(false);
            this.k.b(false);
        } else if (intent == null) {
            s.b(e, "result data is null...");
        } else {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("cssCodeModifiedPresetChannel");
            if (sealSharkChannel != null) {
                s.b(e, "cssCodeModifiedPresetChannel:" + sealSharkChannel.toString());
                d(sealSharkChannel);
            }
        }
    }

    @Subscribe
    public void receiveParamResponse(final SEAL_DeviceParam sEAL_DeviceParam) {
        s.c(e, "receiveParamResponse");
        ad.a((Runnable) new Runnable() {
            public void run() {
                boolean z;
                if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                    if (SealPresetFragment.this.p) {
                        SealPresetFragment.this.p = false;
                        if (SealPresetFragment.this.l != null) {
                            SealPresetFragment.this.k.b(SealPresetFragment.this.l);
                            SealPresetFragment.this.k.a(SealPresetFragment.this.l);
                            if (SealPresetFragment.this.n != null) {
                                SealPresetFragment.this.n.notifyDataSetChanged();
                            }
                            if (SealPresetFragment.this.m != null) {
                                SealPresetFragment.this.m.notifyDataSetChanged();
                            }
                        }
                    }
                    SealPresetFragment.this.f();
                    if (sEAL_DeviceParam.hasIsAllPublic()) {
                        if (sEAL_DeviceParam.getIsAllPublic() == SEAL_SWITCH.SEAL_ON) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int[] i = z ? SealPresetFragment.g : SealPresetFragment.f;
                        SealPresetFragment.this.o.setText(SealPresetFragment.this.getString(z ? R.string.hide_other_15_channel : R.string.display_other_15_channel));
                        SealPresetFragment.this.i.clear();
                        for (int i2 = 0; i2 < i.length; i2++) {
                            SealSharkChannel sealSharkChannel = new SealSharkChannel();
                            sealSharkChannel.a(i2);
                            sealSharkChannel.b(0);
                            sealSharkChannel.d(i[i2]);
                            sealSharkChannel.e(i[i2]);
                            sealSharkChannel.a(ad.a((int) R.string.channel_public_d, Integer.valueOf(i2 + 1)));
                            sealSharkChannel.h(0);
                            sealSharkChannel.i(0);
                            sealSharkChannel.c(true);
                            SealPresetFragment.this.i.add(sealSharkChannel);
                        }
                        SealPresetFragment.this.m.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                SealPresetFragment.this.b((int) R.string.set_failed);
            }
        });
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.k = (SealChannelSettingActivity) getActivity();
        this.l = this.k.d();
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        s.b(e, "receiveChannelInfoOperateResp");
        if (!this.k.f()) {
            if (this.k.c() == 1 || this.k.e()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        boolean z = true;
        s.b(e, "receiveChannelStateOperateResp");
        if (!this.k.f()) {
            if (this.k.c() == 1 || this.k.e()) {
                this.k.a(false);
                if (!this.p) {
                    a(sEAL_ChannelStateOperate);
                } else if (sEAL_ChannelStateOperate.getResult() == SEAL_ST_UERR.SEAL_ST_OK && sEAL_ChannelStateOperate.getOption() == SEAL_STOPTION.SEAL_ST_UPDATE) {
                    if (this.i.size() != f.length) {
                        z = false;
                    }
                    aa.c(z);
                } else {
                    this.p = false;
                    getActivity().runOnUiThread(new Runnable() {
                        public void run() {
                            SealPresetFragment.this.b((int) R.string.set_failed);
                        }
                    });
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            this.l = aa.a(sEAL_ChannelStateOperate.getCh1());
            this.k.a(this.l);
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
            if (this.m != null) {
                this.m.notifyDataSetChanged();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        s.c(e, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            this.l = aa.a(sEAL_ChannelStateOperate.getCh1());
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

    /* access modifiers changed from: protected */
    public void d(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        s.c(e, "onModifyChannelSuccess");
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a = aa.a(sEAL_ChannelInfoOperate.getCh());
            if (this.l.equals(a)) {
                this.l = a;
                this.k.a(this.l);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void e(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        e();
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
            if (this.n != null) {
                this.n.notifyDataSetChanged();
            }
            if (this.m != null) {
                this.m.notifyDataSetChanged();
            }
        }
    }
}
