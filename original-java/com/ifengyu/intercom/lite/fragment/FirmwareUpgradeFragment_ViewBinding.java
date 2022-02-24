package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.DonutProgress;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class FirmwareUpgradeFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private FirmwareUpgradeFragment f5446a;

    @UiThread
    public FirmwareUpgradeFragment_ViewBinding(FirmwareUpgradeFragment firmwareUpgradeFragment, View view) {
        this.f5446a = firmwareUpgradeFragment;
        firmwareUpgradeFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        firmwareUpgradeFragment.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        firmwareUpgradeFragment.mTvDetail = (QMUIFontFitTextView) Utils.findRequiredViewAsType(view, R.id.tv_detail, "field 'mTvDetail'", QMUIFontFitTextView.class);
        firmwareUpgradeFragment.mIvStateView = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.iv_state_view, "field 'mIvStateView'", AppCompatImageView.class);
        firmwareUpgradeFragment.mProgressbar = (DonutProgress) Utils.findRequiredViewAsType(view, R.id.progressbar, "field 'mProgressbar'", DonutProgress.class);
        firmwareUpgradeFragment.mBtnAction = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_action, "field 'mBtnAction'", QMUIRoundButton.class);
        firmwareUpgradeFragment.mTvTip = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tip, "field 'mTvTip'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FirmwareUpgradeFragment firmwareUpgradeFragment = this.f5446a;
        if (firmwareUpgradeFragment != null) {
            this.f5446a = null;
            firmwareUpgradeFragment.mTopBar = null;
            firmwareUpgradeFragment.mTvTitle = null;
            firmwareUpgradeFragment.mTvDetail = null;
            firmwareUpgradeFragment.mIvStateView = null;
            firmwareUpgradeFragment.mProgressbar = null;
            firmwareUpgradeFragment.mBtnAction = null;
            firmwareUpgradeFragment.mTvTip = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
