package com.ifengyu.intercom.ui.setting.shark;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;

public class SharkChannelSettingActivity_ViewBinding<T extends SharkChannelSettingActivity> implements Unbinder {
    protected T a;

    @UiThread
    public SharkChannelSettingActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mIbBack = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mIbBack'", ImageView.class);
        t.normalChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_channel_number, "field 'normalChannelNumber'", TextView.class);
        t.normalCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.normal_css_channel_layout, "field 'normalCssChannelLayout'", LinearLayout.class);
        t.normalRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_rx_css_value, "field 'normalRxCssValue'", TextView.class);
        t.normalTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_tx_css_value, "field 'normalTxCssValue'", TextView.class);
        t.specialChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_channel_layout, "field 'specialChannelLayout'", LinearLayout.class);
        t.specialRxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_channel_number, "field 'specialRxChannelNumber'", TextView.class);
        t.specialTxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_channel_number, "field 'specialTxChannelNumber'", TextView.class);
        t.specialCssChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_css_channel_layout, "field 'specialCssChannelLayout'", LinearLayout.class);
        t.specialRxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_css_value, "field 'specialRxCssValue'", TextView.class);
        t.specialTxCssValue = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_css_value, "field 'specialTxCssValue'", TextView.class);
        t.mChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'mChannelName'", TextView.class);
        t.clickToEdit = (TextView) Utils.findRequiredViewAsType(view, R.id.click_to_edit_channel, "field 'clickToEdit'", TextView.class);
        t.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tab_layout, "field 'mTabLayout'", TabLayout.class);
        t.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.container, "field 'mViewPager'", ViewPager.class);
        t.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        t.mFab = (ImageView) Utils.findRequiredViewAsType(view, R.id.fab, "field 'mFab'", ImageView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbBack = null;
        t.normalChannelNumber = null;
        t.normalCssChannelLayout = null;
        t.normalRxCssValue = null;
        t.normalTxCssValue = null;
        t.specialChannelLayout = null;
        t.specialRxChannelNumber = null;
        t.specialTxChannelNumber = null;
        t.specialCssChannelLayout = null;
        t.specialRxCssValue = null;
        t.specialTxCssValue = null;
        t.mChannelName = null;
        t.clickToEdit = null;
        t.mTabLayout = null;
        t.mViewPager = null;
        t.mFabLayout = null;
        t.mFab = null;
        this.a = null;
    }
}
