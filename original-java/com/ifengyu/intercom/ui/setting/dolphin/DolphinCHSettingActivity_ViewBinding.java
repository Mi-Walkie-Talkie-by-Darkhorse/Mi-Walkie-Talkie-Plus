package com.ifengyu.intercom.ui.setting.dolphin;

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
public class DolphinCHSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private DolphinCHSettingActivity f6588a;

    @UiThread
    public DolphinCHSettingActivity_ViewBinding(DolphinCHSettingActivity dolphinCHSettingActivity, View view) {
        this.f6588a = dolphinCHSettingActivity;
        dolphinCHSettingActivity.mIbBack = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mIbBack'", ImageView.class);
        dolphinCHSettingActivity.normalChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.normal_channel_number, "field 'normalChannelNumber'", TextView.class);
        dolphinCHSettingActivity.specialChannelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.special_channel_layout, "field 'specialChannelLayout'", LinearLayout.class);
        dolphinCHSettingActivity.specialRxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_rx_channel_number, "field 'specialRxChannelNumber'", TextView.class);
        dolphinCHSettingActivity.specialTxChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.special_tx_channel_number, "field 'specialTxChannelNumber'", TextView.class);
        dolphinCHSettingActivity.bottomChannelTypeText = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.bottom_channel_type_text, "field 'bottomChannelTypeText'", LinearLayout.class);
        dolphinCHSettingActivity.mChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'mChannelName'", TextView.class);
        dolphinCHSettingActivity.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tab_layout, "field 'mTabLayout'", TabLayout.class);
        dolphinCHSettingActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.container, "field 'mViewPager'", ViewPager.class);
        dolphinCHSettingActivity.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        dolphinCHSettingActivity.mFab = (ImageView) Utils.findRequiredViewAsType(view, R.id.fab, "field 'mFab'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinCHSettingActivity dolphinCHSettingActivity = this.f6588a;
        if (dolphinCHSettingActivity != null) {
            this.f6588a = null;
            dolphinCHSettingActivity.mIbBack = null;
            dolphinCHSettingActivity.normalChannelNumber = null;
            dolphinCHSettingActivity.specialChannelLayout = null;
            dolphinCHSettingActivity.specialRxChannelNumber = null;
            dolphinCHSettingActivity.specialTxChannelNumber = null;
            dolphinCHSettingActivity.bottomChannelTypeText = null;
            dolphinCHSettingActivity.mChannelName = null;
            dolphinCHSettingActivity.mTabLayout = null;
            dolphinCHSettingActivity.mViewPager = null;
            dolphinCHSettingActivity.mFabLayout = null;
            dolphinCHSettingActivity.mFab = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
