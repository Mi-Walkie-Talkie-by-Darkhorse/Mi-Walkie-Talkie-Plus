package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class BatchConfigurationFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private BatchConfigurationFragment f5431a;

    @UiThread
    public BatchConfigurationFragment_ViewBinding(BatchConfigurationFragment batchConfigurationFragment, View view) {
        this.f5431a = batchConfigurationFragment;
        batchConfigurationFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        batchConfigurationFragment.mTvDetail = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_detail, "field 'mTvDetail'", TextView.class);
        batchConfigurationFragment.mIvImage = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.iv_image, "field 'mIvImage'", AppCompatImageView.class);
        batchConfigurationFragment.mBtnAction = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_action, "field 'mBtnAction'", QMUIRoundButton.class);
        batchConfigurationFragment.mTvSubtitle = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.tv_subtitle, "field 'mTvSubtitle'", AppCompatTextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BatchConfigurationFragment batchConfigurationFragment = this.f5431a;
        if (batchConfigurationFragment != null) {
            this.f5431a = null;
            batchConfigurationFragment.mTopBar = null;
            batchConfigurationFragment.mTvDetail = null;
            batchConfigurationFragment.mIvImage = null;
            batchConfigurationFragment.mBtnAction = null;
            batchConfigurationFragment.mTvSubtitle = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
