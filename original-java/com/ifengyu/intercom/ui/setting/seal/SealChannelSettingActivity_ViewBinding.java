package com.ifengyu.intercom.ui.setting.seal;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class SealChannelSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SealChannelSettingActivity f6688a;

    @UiThread
    public SealChannelSettingActivity_ViewBinding(SealChannelSettingActivity sealChannelSettingActivity, View view) {
        this.f6688a = sealChannelSettingActivity;
        sealChannelSettingActivity.mIbBack = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mIbBack'", ImageView.class);
        sealChannelSettingActivity.normalChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_channel_number, "field 'normalChannelNumber'", TextView.class);
        sealChannelSettingActivity.normalCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.normal_css_channel_layout, "field 'normalCssChannelLayout'", LinearLayout.class);
        sealChannelSettingActivity.normalRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_rx_css_value, "field 'normalRxCssValue'", TextView.class);
        sealChannelSettingActivity.normalTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_tx_css_value, "field 'normalTxCssValue'", TextView.class);
        sealChannelSettingActivity.specialChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_channel_layout, "field 'specialChannelLayout'", LinearLayout.class);
        sealChannelSettingActivity.specialRxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_channel_number, "field 'specialRxChannelNumber'", TextView.class);
        sealChannelSettingActivity.specialTxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_channel_number, "field 'specialTxChannelNumber'", TextView.class);
        sealChannelSettingActivity.specialCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_css_channel_layout, "field 'specialCssChannelLayout'", LinearLayout.class);
        sealChannelSettingActivity.specialRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_css_value, "field 'specialRxCssValue'", TextView.class);
        sealChannelSettingActivity.specialTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_css_value, "field 'specialTxCssValue'", TextView.class);
        sealChannelSettingActivity.mChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'mChannelName'", TextView.class);
        sealChannelSettingActivity.clickToEdit = (TextView) Utils.findRequiredViewAsType(view, R.id.click_to_edit_channel, "field 'clickToEdit'", TextView.class);
        sealChannelSettingActivity.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tab_layout, "field 'mTabLayout'", TabLayout.class);
        sealChannelSettingActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.container, "field 'mViewPager'", ViewPager.class);
        sealChannelSettingActivity.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        sealChannelSettingActivity.mFab = (ImageView) Utils.findRequiredViewAsType(view, R.id.fab, "field 'mFab'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealChannelSettingActivity sealChannelSettingActivity = this.f6688a;
        if (sealChannelSettingActivity != null) {
            this.f6688a = null;
            sealChannelSettingActivity.mIbBack = null;
            sealChannelSettingActivity.normalChannelNumber = null;
            sealChannelSettingActivity.normalCssChannelLayout = null;
            sealChannelSettingActivity.normalRxCssValue = null;
            sealChannelSettingActivity.normalTxCssValue = null;
            sealChannelSettingActivity.specialChannelLayout = null;
            sealChannelSettingActivity.specialRxChannelNumber = null;
            sealChannelSettingActivity.specialTxChannelNumber = null;
            sealChannelSettingActivity.specialCssChannelLayout = null;
            sealChannelSettingActivity.specialRxCssValue = null;
            sealChannelSettingActivity.specialTxCssValue = null;
            sealChannelSettingActivity.mChannelName = null;
            sealChannelSettingActivity.clickToEdit = null;
            sealChannelSettingActivity.mTabLayout = null;
            sealChannelSettingActivity.mViewPager = null;
            sealChannelSettingActivity.mFabLayout = null;
            sealChannelSettingActivity.mFab = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
