package com.ifengyu.intercom.lite.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.a.a.a;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.lite.e.f;
import com.ifengyu.intercom.lite.h.f0;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class BatchConfigurationFragment extends e {
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
    private f0 z;

    private void A() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BatchConfigurationFragment.this.b(view);
            }
        });
    }

    private void B() {
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BatchConfigurationFragment.this.c(view);
            }
        });
        a(f.a(getContext()).z());
    }

    private void C() {
        f0 f0Var = (f0) x.a(this).a(f0.class);
        this.z = f0Var;
        f0Var.c().observe(getViewLifecycleOwner(), new q() { // from class: com.ifengyu.intercom.lite.fragment.g
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.a((Boolean) obj);
            }
        });
        this.z.d().observe(getViewLifecycleOwner(), new q() { // from class: com.ifengyu.intercom.lite.fragment.f
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.b((String) obj);
            }
        });
        this.z.e().observe(getViewLifecycleOwner(), new q() { // from class: com.ifengyu.intercom.lite.fragment.c
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                BatchConfigurationFragment.this.c((String) obj);
            }
        });
    }

    private void D() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_batch_dialog_exit_state_message);
        eVar.a(0, R.string.common_ok, 1, d.f5503a);
        eVar.a(R.style.DialogTheme2).show();
    }

    private void E() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_batch_dialog_exit_message);
        eVar.a(0, R.string.common_cancel, 2, b.f5497a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.a
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                BatchConfigurationFragment.this.a(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    public static BatchConfigurationFragment newInstance() {
        return new BatchConfigurationFragment();
    }

    public /* synthetic */ void a(Boolean bool) {
        a(bool.booleanValue());
        if (!bool.booleanValue()) {
            D();
        }
    }

    public /* synthetic */ void b(View view) {
        o();
    }

    public /* synthetic */ void c(View view) {
        if (!this.z.b().z()) {
            z();
            this.z.f();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", d0.N());
            MobclickAgent.onEventObject(getContext(), "Lite_StartBatchConfigClick", hashMap);
            return;
        }
        z();
        this.z.g();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("userId", d0.N());
        MobclickAgent.onEventObject(getContext(), "Lite_StopBatchConfigClick", hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.b
    public void o() {
        if (!this.z.b().z()) {
            super.o();
        } else {
            E();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
        a(this.z.b().z());
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_batch_configuration, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        C();
        return inflate;
    }

    public /* synthetic */ void b(String str) {
        x();
        if (str == null) {
            a(this.z.b().z());
        } else {
            a(R.string.set_failed);
        }
    }

    public /* synthetic */ void a(b bVar, int i) {
        bVar.dismiss();
        this.z.g();
        super.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.e, com.qmuiteam.qmui.arch.b
    public boolean b(Context context, int i, int i2) {
        return !this.z.b().z();
    }

    private void a(boolean z) {
        if (z) {
            this.mTopBar.f(R.string.lite_batch_title_receiver);
            this.mTvSubtitle.setText(R.string.lite_batch_config_subtitle_receiver);
            this.mTvDetail.setText(R.string.lite_batch_detail_receiver);
            this.mBtnAction.setText(R.string.lite_batch_btn_text_stop);
            this.mBtnAction.setBgData(a.b(getContext(), R.color.btn_bg_red_colors));
            this.mIvImage.setImageResource(R.mipmap.depoly_img_accept);
            return;
        }
        this.mTopBar.f(R.string.lite_batch_title_initiator);
        this.mTvSubtitle.setText(R.string.lite_batch_config_subtitle_initiator);
        this.mTvDetail.setText(R.string.lite_batch_detail_initiator);
        this.mBtnAction.setText(R.string.lite_batch_btn_text_start);
        this.mBtnAction.setBgData(a.b(getContext(), R.color.btn_bg_blue_colors));
        this.mIvImage.setImageResource(R.mipmap.depoly_img_send);
    }

    public /* synthetic */ void c(String str) {
        x();
        if (str == null) {
            a(this.z.b().z());
        } else {
            a(R.string.set_failed);
        }
    }
}
