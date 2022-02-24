package com.ifengyu.intercom.ui.setting.shark;

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
public class SharkChannelSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SharkChannelSettingActivity f6804a;

    @UiThread
    public SharkChannelSettingActivity_ViewBinding(SharkChannelSettingActivity sharkChannelSettingActivity, View view) {
        this.f6804a = sharkChannelSettingActivity;
        sharkChannelSettingActivity.mIbBack = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mIbBack'", ImageView.class);
        sharkChannelSettingActivity.normalChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_channel_number, "field 'normalChannelNumber'", TextView.class);
        sharkChannelSettingActivity.normalCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.normal_css_channel_layout, "field 'normalCssChannelLayout'", LinearLayout.class);
        sharkChannelSettingActivity.normalRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_rx_css_value, "field 'normalRxCssValue'", TextView.class);
        sharkChannelSettingActivity.normalTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_tx_css_value, "field 'normalTxCssValue'", TextView.class);
        sharkChannelSettingActivity.specialChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_channel_layout, "field 'specialChannelLayout'", LinearLayout.class);
        sharkChannelSettingActivity.specialRxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_channel_number, "field 'specialRxChannelNumber'", TextView.class);
        sharkChannelSettingActivity.specialTxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_channel_number, "field 'specialTxChannelNumber'", TextView.class);
        sharkChannelSettingActivity.specialCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_css_channel_layout, "field 'specialCssChannelLayout'", LinearLayout.class);
        sharkChannelSettingActivity.specialRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_css_value, "field 'specialRxCssValue'", TextView.class);
        sharkChannelSettingActivity.specialTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_css_value, "field 'specialTxCssValue'", TextView.class);
        sharkChannelSettingActivity.mChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'mChannelName'", TextView.class);
        sharkChannelSettingActivity.clickToEdit = (TextView) Utils.findRequiredViewAsType(view, R.id.click_to_edit_channel, "field 'clickToEdit'", TextView.class);
        sharkChannelSettingActivity.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tab_layout, "field 'mTabLayout'", TabLayout.class);
        sharkChannelSettingActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.container, "field 'mViewPager'", ViewPager.class);
        sharkChannelSettingActivity.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        sharkChannelSettingActivity.mFab = (ImageView) Utils.findRequiredViewAsType(view, R.id.fab, "field 'mFab'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SharkChannelSettingActivity sharkChannelSettingActivity = this.f6804a;
        if (sharkChannelSettingActivity != null) {
            this.f6804a = null;
            sharkChannelSettingActivity.mIbBack = null;
            sharkChannelSettingActivity.normalChannelNumber = null;
            sharkChannelSettingActivity.normalCssChannelLayout = null;
            sharkChannelSettingActivity.normalRxCssValue = null;
            sharkChannelSettingActivity.normalTxCssValue = null;
            sharkChannelSettingActivity.specialChannelLayout = null;
            sharkChannelSettingActivity.specialRxChannelNumber = null;
            sharkChannelSettingActivity.specialTxChannelNumber = null;
            sharkChannelSettingActivity.specialCssChannelLayout = null;
            sharkChannelSettingActivity.specialRxCssValue = null;
            sharkChannelSettingActivity.specialTxCssValue = null;
            sharkChannelSettingActivity.mChannelName = null;
            sharkChannelSettingActivity.clickToEdit = null;
            sharkChannelSettingActivity.mTabLayout = null;
            sharkChannelSettingActivity.mViewPager = null;
            sharkChannelSettingActivity.mFabLayout = null;
            sharkChannelSettingActivity.mFab = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
