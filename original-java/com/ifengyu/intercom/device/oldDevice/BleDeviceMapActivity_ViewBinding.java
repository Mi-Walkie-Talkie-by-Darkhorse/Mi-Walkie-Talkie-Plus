package com.ifengyu.intercom.device.oldDevice;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.amap.api.maps.MapView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.ShadowLayout;

/* loaded from: classes2.dex */
public class BleDeviceMapActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private BleDeviceMapActivity f12772a;

    @UiThread
    public BleDeviceMapActivity_ViewBinding(BleDeviceMapActivity bleDeviceMapActivity, View view) {
        this.f12772a = bleDeviceMapActivity;
        bleDeviceMapActivity.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        bleDeviceMapActivity.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        bleDeviceMapActivity.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        bleDeviceMapActivity.mapView = (MapView) Utils.findRequiredViewAsType(view, R.id.mapView, "field 'mapView'", MapView.class);
        bleDeviceMapActivity.bottomChannelLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.bottom_channel_display_layout, "field 'bottomChannelLayout'", ShadowLayout.class);
        bleDeviceMapActivity.bottomChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_name, "field 'bottomChannelName'", TextView.class);
        bleDeviceMapActivity.bottomChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_number, "field 'bottomChannelNumber'", TextView.class);
        bleDeviceMapActivity.locationShareIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_location_share_iv, "field 'locationShareIV'", ImageView.class);
        bleDeviceMapActivity.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        bleDeviceMapActivity.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        bleDeviceMapActivity.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        bleDeviceMapActivity.mapKitBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_kit_iv, "field 'mapKitBtn'", TextView.class);
        bleDeviceMapActivity.mapSwitchTypeBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_switch_type_btn, "field 'mapSwitchTypeBtn'", TextView.class);
        bleDeviceMapActivity.mcuHaveUpdateLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_layout, "field 'mcuHaveUpdateLayout'", ShadowLayout.class);
        bleDeviceMapActivity.mcuHaveUpdateTV = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_tv, "field 'mcuHaveUpdateTV'", TextView.class);
        bleDeviceMapActivity.mcuUpdateImmediatelyBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_immediately, "field 'mcuUpdateImmediatelyBtn'", TextView.class);
        bleDeviceMapActivity.mcuHaveUpdateCloseBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_close, "field 'mcuHaveUpdateCloseBtn'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BleDeviceMapActivity bleDeviceMapActivity = this.f12772a;
        if (bleDeviceMapActivity != null) {
            this.f12772a = null;
            bleDeviceMapActivity.titleBarTitle = null;
            bleDeviceMapActivity.titleBarRight = null;
            bleDeviceMapActivity.titleBarLeft = null;
            bleDeviceMapActivity.mapView = null;
            bleDeviceMapActivity.bottomChannelLayout = null;
            bleDeviceMapActivity.bottomChannelName = null;
            bleDeviceMapActivity.bottomChannelNumber = null;
            bleDeviceMapActivity.locationShareIV = null;
            bleDeviceMapActivity.zoomBigIV = null;
            bleDeviceMapActivity.zoomSmallIV = null;
            bleDeviceMapActivity.myLocateIV = null;
            bleDeviceMapActivity.mapKitBtn = null;
            bleDeviceMapActivity.mapSwitchTypeBtn = null;
            bleDeviceMapActivity.mcuHaveUpdateLayout = null;
            bleDeviceMapActivity.mcuHaveUpdateTV = null;
            bleDeviceMapActivity.mcuUpdateImmediatelyBtn = null;
            bleDeviceMapActivity.mcuHaveUpdateCloseBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
