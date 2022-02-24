package com.ifengyu.intercom.lite.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.a.a.a;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.lite.c.b.b;
import com.ifengyu.intercom.lite.c.b.c;
import com.ifengyu.intercom.lite.c.b.f;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.utils.i;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class LiteChannelEditFragment extends e {
    @BindView(R.id.btn_clear)
    QMUIRoundButton mBtnClear;
    @BindView(R.id.item_receive_freq)
    ItemView mItemReceiveFreq;
    @BindView(R.id.item_receive_sub_tone)
    ItemView mItemReceiveTone;
    @BindView(R.id.item_send_freq)
    ItemView mItemSendFreq;
    @BindView(R.id.item_send_sub_tone)
    ItemView mItemSendTone;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_description)
    TextView mTvDescription;
    private ChannelModel z;

    private void A() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.z = (ChannelModel) i.a((ChannelModel) arguments.getParcelable("channel"));
        }
    }

    private void B() {
        Button a2 = this.mTopBar.a(R.string.common_cancel, l.a());
        Button c2 = this.mTopBar.c(R.string.completed, l.a());
        a2.setTextColor(a.b(getContext(), R.color.topbar_left_btn_color_state_list));
        c2.setTextColor(a.b(getContext(), R.color.topbar_right_btn_color_state_list));
        a2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditFragment.this.b(view);
            }
        });
        c2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditFragment.this.c(view);
            }
        });
        this.mBtnClear.setChangeAlphaWhenPress(true);
        ChannelModel channelModel = this.z;
        if (channelModel != null) {
            this.mTopBar.a(m.a((int) R.string.lite_edit_channel_placeholder, channelModel.getDisplaySeq()));
            D();
        }
    }

    private void C() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", this.z);
        intent.putExtras(bundle);
        a(-1, intent);
        t();
    }

    private void D() {
        this.mItemReceiveFreq.setValueText(this.z.getDisplayReceiveFreq());
        this.mItemSendFreq.setValueText(this.z.getDisplaySendFreq());
        this.mItemReceiveTone.setValueText(this.z.getDisplayReceiveTone());
        this.mItemSendTone.setValueText(this.z.getDisplaySendTone());
    }

    public static LiteChannelEditFragment a(ChannelModel channelModel) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        LiteChannelEditFragment liteChannelEditFragment = new LiteChannelEditFragment();
        liteChannelEditFragment.setArguments(bundle);
        return liteChannelEditFragment;
    }

    public /* synthetic */ void b(View view) {
        o();
    }

    public /* synthetic */ void c(View view) {
        C();
    }

    @OnClick({R.id.item_receive_freq, R.id.item_send_freq, R.id.item_receive_sub_tone, R.id.item_send_sub_tone, R.id.btn_clear})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_clear /* 2131296405 */:
                ChannelModel channelModel = this.z;
                if (channelModel != null) {
                    channelModel.clear();
                    D();
                    return;
                }
                return;
            case R.id.item_receive_freq /* 2131296757 */:
                if (this.z != null) {
                    a(m.b((int) R.string.receive_frequency), true);
                    return;
                }
                return;
            case R.id.item_receive_sub_tone /* 2131296758 */:
                if (this.z != null) {
                    a(m.b((int) R.string.receive_sub_tone), true, this.z.getReceiveToneType(), this.z.getReceiveToneValue());
                    return;
                }
                return;
            case R.id.item_send_freq /* 2131296760 */:
                if (this.z != null) {
                    a(m.b((int) R.string.emission_frequency), false);
                    return;
                }
                return;
            case R.id.item_send_sub_tone /* 2131296761 */:
                if (this.z != null) {
                    a(m.b((int) R.string.emissive_sub_tone), false, this.z.getSendToneType(), this.z.getSendToneValue());
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_channel_edit, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        return inflate;
    }

    private void a(String str, final boolean z, int i, int i2) {
        final f fVar = new f(getContext());
        fVar.a(str);
        f fVar2 = fVar;
        fVar2.a(com.ifengyu.intercom.lite.b.a.f5334a);
        fVar2.a(com.ifengyu.intercom.lite.b.a.f5335b);
        fVar2.d(i);
        fVar2.e(i2);
        fVar2.a(0, R.string.common_cancel, 2, j0.f5522a);
        f fVar3 = fVar2;
        fVar3.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.m0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i3) {
                LiteChannelEditFragment.this.a(fVar, z, bVar, i3);
            }
        });
        fVar3.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(f fVar, boolean z, b bVar, int i) {
        int e = fVar.e();
        int g = fVar.g();
        String f = fVar.f();
        if (z) {
            this.z.setReceiveToneType(e);
            this.z.setReceiveToneValue(g);
            this.mItemReceiveTone.setValueText(f);
        } else {
            this.z.setSendToneType(e);
            this.z.setSendToneValue(g);
            this.mItemSendTone.setValueText(f);
        }
        bVar.dismiss();
    }

    private void a(String str, final boolean z) {
        c cVar = new c(getContext());
        cVar.a(str);
        c cVar2 = cVar;
        cVar2.b(m.b((int) R.string.lite_freq_range_description));
        cVar2.a(new b.c() { // from class: com.ifengyu.intercom.lite.fragment.n0
            @Override // com.ifengyu.intercom.lite.c.b.b.c
            public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
                LiteChannelEditFragment.this.a(z, bVar, i);
            }
        });
        cVar2.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(boolean z, com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        if (z) {
            this.z.setReceiveFreq(i);
            this.mItemReceiveFreq.setValueText(this.z.getDisplayReceiveFreq());
            if (this.z.isEmpty()) {
                this.z.setSendFreq(i);
                this.mItemSendFreq.setValueText(this.z.getDisplaySendFreq());
            }
        } else {
            this.z.setSendFreq(i);
            this.mItemSendFreq.setValueText(this.z.getDisplaySendFreq());
            if (this.z.isEmpty()) {
                this.z.setReceiveFreq(i);
                this.mItemReceiveFreq.setValueText(this.z.getDisplayReceiveFreq());
            }
        }
        bVar.dismiss();
    }
}
