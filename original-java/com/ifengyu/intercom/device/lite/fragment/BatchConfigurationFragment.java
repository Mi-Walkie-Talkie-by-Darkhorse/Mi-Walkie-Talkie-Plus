package com.ifengyu.intercom.device.lite.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.p161e.BatchConfigViewModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class BatchConfigurationFragment extends BaseFragment {
    @BindView(R.id.btn_action)
    QMUIRoundButton mBtnAction;
    @BindView(R.id.iv_image)
    AppCompatImageView mIvImage;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_detail)
    TextView mTvDetail;
    @BindView(R.id.tv_subtitle)
    AppCompatTextView mTvSubtitle;

    /* renamed from: z */
    private BatchConfigViewModel f12267z;

    /* renamed from: g3 */
    private void m14022g3() {
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BatchConfigurationFragment.this.m14019j3(view);
            }
        });
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BatchConfigurationFragment.this.m14017l3(view);
            }
        });
    }

    /* renamed from: h3 */
    private void m14021h3() {
        BatchConfigViewModel batchConfigViewModel = (BatchConfigViewModel) ViewModelProviders.m22685a(this).m22691a(BatchConfigViewModel.class);
        this.f12267z = batchConfigViewModel;
        batchConfigViewModel.m14075g().observe(getViewLifecycleOwner(), new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.m14015n3((Boolean) obj);
            }
        });
        this.f12267z.m14074h().observe(getViewLifecycleOwner(), new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.m14013p3((String) obj);
            }
        });
        this.f12267z.m14073i().observe(getViewLifecycleOwner(), new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.m14011r3((String) obj);
            }
        });
        m14005x3(this.f12267z.m14076f().m12282H0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m14019j3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m14017l3(View view) {
        if (!this.f12267z.m14076f().m12282H0()) {
            m10308b3();
            this.f12267z.m14072j();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            MobclickAgent.onEventObject(getContext(), "Lite_StartBatchConfigClick", hashMap);
            return;
        }
        m10308b3();
        this.f12267z.m14071k();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("userId", MiTalkClientUtil.m11243P());
        MobclickAgent.onEventObject(getContext(), "Lite_StopBatchConfigClick", hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m14015n3(Boolean bool) {
        m14005x3(bool.booleanValue());
        if (bool.booleanValue()) {
            return;
        }
        m14004y3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m14013p3(String str) {
        if (str == null) {
            m10329C2();
            m14005x3(this.f12267z.m14076f().m12282H0());
            return;
        }
        m10312X2(R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m14011r3(String str) {
        if (str == null) {
            m10329C2();
            m14005x3(this.f12267z.m14076f().m12282H0());
            return;
        }
        m10312X2(R.string.set_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m14007v3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        this.f12267z.m14071k();
        super.mo8057d2();
    }

    /* renamed from: w3 */
    public static BatchConfigurationFragment m14006w3() {
        return new BatchConfigurationFragment();
    }

    /* renamed from: x3 */
    private void m14005x3(boolean z) {
        if (z) {
            this.mTopBar.m7338p(R.string.lite_batch_title_receiver);
            this.mTvSubtitle.setText(R.string.lite_batch_config_subtitle_receiver);
            this.mTvDetail.setText(R.string.lite_batch_detail_receiver);
            this.mBtnAction.setText(R.string.lite_batch_btn_text_stop);
            this.mBtnAction.setBgData(AppCompatResources.m26123c(getContext(), R.color.btn_bg_red_colors));
            this.mIvImage.setImageResource(R.mipmap.depoly_img_accept);
            return;
        }
        this.mTopBar.m7338p(R.string.lite_batch_title_initiator);
        this.mTvSubtitle.setText(R.string.lite_batch_config_subtitle_initiator);
        this.mTvDetail.setText(R.string.lite_batch_detail_initiator);
        this.mBtnAction.setText(R.string.lite_batch_btn_text_start);
        this.mBtnAction.setBgData(AppCompatResources.m26123c(getContext(), R.color.btn_bg_blue_colors));
        this.mIvImage.setImageResource(R.mipmap.depoly_img_send);
    }

    /* renamed from: y3 */
    private void m14004y3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.lite_batch_dialog_exit_state_message);
        messageDialogBuilder.m7300b(0, R.string.common_ok, 0, C3268b.f12346a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: z3 */
    private void m14003z3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.lite_batch_dialog_exit_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3280f.f12358a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.h
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BatchConfigurationFragment.this.m14007v3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        return !this.f12267z.m14076f().m12282H0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        if (!this.f12267z.m14076f().m12282H0()) {
            super.mo8057d2();
        } else {
            m14003z3();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_batch_configuration, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m14022g3();
        m14021h3();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
        m14005x3(this.f12267z.m14076f().m12282H0());
    }
}
