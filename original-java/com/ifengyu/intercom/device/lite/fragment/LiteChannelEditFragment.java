package com.ifengyu.intercom.device.lite.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.utils.ParcelHelper;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p190a.p196c.ChToneConstants;
import com.ifengyu.intercom.p205m.p207b.ChannelDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.EditChannelDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.PickerDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class LiteChannelEditFragment extends BaseFragment {
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

    /* renamed from: z */
    private ChannelModel f12274z;

    /* renamed from: g3 */
    private void m13978g3() {
        Button m7342l = this.mTopBar.m7342l(R.string.common_cancel, QMUIViewHelper.m7473b());
        Button m7339o = this.mTopBar.m7339o(R.string.completed, QMUIViewHelper.m7473b());
        m7342l.setTextColor(AppCompatResources.m26123c(getContext(), R.color.topbar_left_btn_color_state_list));
        m7339o.setTextColor(AppCompatResources.m26123c(getContext(), R.color.topbar_right_btn_color_state_list));
        m7342l.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditFragment.this.m13976i3(view);
            }
        });
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditFragment.this.m13974k3(view);
            }
        });
        this.mBtnClear.setChangeAlphaWhenPress(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m13976i3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13974k3(View view) {
        m13967r3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13972m3(boolean z, QMUIDialog qMUIDialog, int i) {
        if (z) {
            this.f12274z.setReceiveFreq(i);
            this.mItemReceiveFreq.setValueText(this.f12274z.getDisplayReceiveFreq());
            if (this.f12274z.isEmpty()) {
                this.f12274z.setSendFreq(i);
                this.mItemSendFreq.setValueText(this.f12274z.getDisplaySendFreq());
            }
        } else {
            this.f12274z.setSendFreq(i);
            this.mItemSendFreq.setValueText(this.f12274z.getDisplaySendFreq());
            if (this.f12274z.isEmpty()) {
                this.f12274z.setReceiveFreq(i);
                this.mItemReceiveFreq.setValueText(this.f12274z.getDisplayReceiveFreq());
            }
        }
        qMUIDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13969p3(PickerDialogBuilder pickerDialogBuilder, boolean z, QMUIDialog qMUIDialog, int i) {
        int m11419I = pickerDialogBuilder.m11419I();
        int m11417K = pickerDialogBuilder.m11417K();
        String m11418J = pickerDialogBuilder.m11418J();
        if (z) {
            this.f12274z.setReceiveToneType(m11419I);
            this.f12274z.setReceiveToneValue(m11417K);
            this.mItemReceiveTone.setValueText(m11418J);
        } else {
            this.f12274z.setSendToneType(m11419I);
            this.f12274z.setSendToneValue(m11417K);
            this.mItemSendTone.setValueText(m11418J);
        }
        qMUIDialog.dismiss();
    }

    /* renamed from: q3 */
    public static LiteChannelEditFragment m13968q3(ChannelModel channelModel) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        LiteChannelEditFragment liteChannelEditFragment = new LiteChannelEditFragment();
        liteChannelEditFragment.setArguments(bundle);
        return liteChannelEditFragment;
    }

    /* renamed from: r3 */
    private void m13967r3() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", this.f12274z);
        intent.putExtras(bundle);
        m8042u2(-1, intent);
        mo8048o2();
    }

    /* renamed from: s3 */
    private void m13966s3(String str, final boolean z) {
        EditChannelDialogBuilder editChannelDialogBuilder = new EditChannelDialogBuilder(getContext());
        editChannelDialogBuilder.m7281y(str);
        EditChannelDialogBuilder editChannelDialogBuilder2 = editChannelDialogBuilder;
        editChannelDialogBuilder2.m11443Q(UIUtils.m8603o(R.string.lite_freq_range_description));
        editChannelDialogBuilder2.m11445O(new ChannelDialogBuilder.InterfaceC4114c() { // from class: com.ifengyu.intercom.device.lite.fragment.t
            @Override // com.ifengyu.intercom.p205m.p207b.ChannelDialogBuilder.InterfaceC4114c
            /* renamed from: a */
            public final void mo11441a(QMUIDialog qMUIDialog, int i) {
                LiteChannelEditFragment.this.m13972m3(z, qMUIDialog, i);
            }
        });
        editChannelDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: t3 */
    private void m13965t3(String str, final boolean z, int i, int i2) {
        final PickerDialogBuilder pickerDialogBuilder = new PickerDialogBuilder(getContext());
        pickerDialogBuilder.m7281y(str);
        PickerDialogBuilder pickerDialogBuilder2 = pickerDialogBuilder;
        pickerDialogBuilder2.m11415M(ChToneConstants.f14118a);
        pickerDialogBuilder2.m11413O(ChToneConstants.f14119b);
        pickerDialogBuilder2.m11416L(i);
        pickerDialogBuilder2.m11414N(i2);
        pickerDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3308r.f12390a);
        PickerDialogBuilder pickerDialogBuilder3 = pickerDialogBuilder2;
        pickerDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.u
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i3) {
                LiteChannelEditFragment.this.m13969p3(pickerDialogBuilder, z, qMUIDialog, i3);
            }
        });
        pickerDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: u3 */
    private void m13964u3() {
        this.mItemReceiveFreq.setValueText(this.f12274z.getDisplayReceiveFreq());
        this.mItemSendFreq.setValueText(this.f12274z.getDisplaySendFreq());
        this.mItemReceiveTone.setValueText(this.f12274z.getDisplayReceiveTone());
        this.mItemSendTone.setValueText(this.f12274z.getDisplaySendTone());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f12274z = (ChannelModel) ParcelHelper.m13838a((ChannelModel) arguments.getParcelable("channel"));
        }
        ChannelModel channelModel = this.f12274z;
        if (channelModel != null) {
            this.mTopBar.m7337q(UIUtils.m8602p(R.string.lite_edit_channel_placeholder, channelModel.getLiteDisplaySeq()));
            m13964u3();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_channel_edit, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13978g3();
        return inflate;
    }

    @OnClick({R.id.item_receive_freq, R.id.item_send_freq, R.id.item_receive_sub_tone, R.id.item_send_sub_tone, R.id.btn_clear})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_clear /* 2131296422 */:
                ChannelModel channelModel = this.f12274z;
                if (channelModel != null) {
                    channelModel.clear();
                    m13964u3();
                    return;
                }
                return;
            case R.id.item_receive_freq /* 2131296849 */:
                if (this.f12274z != null) {
                    m13966s3(UIUtils.m8603o(R.string.receive_frequency), true);
                    return;
                }
                return;
            case R.id.item_receive_sub_tone /* 2131296850 */:
                if (this.f12274z != null) {
                    m13965t3(UIUtils.m8603o(R.string.receive_sub_tone), true, this.f12274z.getReceiveToneType(), this.f12274z.getReceiveToneValue());
                    return;
                }
                return;
            case R.id.item_send_freq /* 2131296852 */:
                if (this.f12274z != null) {
                    m13966s3(UIUtils.m8603o(R.string.emission_frequency), false);
                    return;
                }
                return;
            case R.id.item_send_sub_tone /* 2131296853 */:
                if (this.f12274z != null) {
                    m13965t3(UIUtils.m8603o(R.string.emissive_sub_tone), false, this.f12274z.getSendToneType(), this.f12274z.getSendToneValue());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
