package com.ifengyu.intercom.ui.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.widget.view.ShadowLayout;

public class MapFragment_ViewBinding<T extends MapFragment> implements Unbinder {
    protected T a;

    @UiThread
    public MapFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        t.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        t.myDeviceManager = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.my_device_manager, "field 'myDeviceManager'", LinearLayout.class);
        t.mapContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.map_container, "field 'mapContainer'", FrameLayout.class);
        t.bottomChannelLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.bottom_channel_display_layout, "field 'bottomChannelLayout'", ShadowLayout.class);
        t.bottomChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_name, "field 'bottomChannelName'", TextView.class);
        t.bottomChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_number, "field 'bottomChannelNumber'", TextView.class);
        t.locationShareIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_location_share_iv, "field 'locationShareIV'", ImageView.class);
        t.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        t.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        t.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        t.mapTrackRecordBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_btn, "field 'mapTrackRecordBtn'", TextView.class);
        t.mapKitBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_kit_iv, "field 'mapKitBtn'", TextView.class);
        t.mapSwitchTypeBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_switch_type_btn, "field 'mapSwitchTypeBtn'", TextView.class);
        t.bleIsUnConnectLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.top_ble_is_unconnect_layout, "field 'bleIsUnConnectLayout'", ShadowLayout.class);
        t.bleReconnectImmediatelyBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.top_reconnect_immediately, "field 'bleReconnectImmediatelyBtn'", TextView.class);
        t.bleUnConnectCloseBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_ble_is_unconnect_close, "field 'bleUnConnectCloseBtn'", ImageView.class);
        t.mcuHaveUpdateLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_layout, "field 'mcuHaveUpdateLayout'", ShadowLayout.class);
        t.mcuHaveUpdateTV = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_tv, "field 'mcuHaveUpdateTV'", TextView.class);
        t.mcuUpdateImmediatelyBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_immediately, "field 'mcuUpdateImmediatelyBtn'", TextView.class);
        t.mcuHaveUpdateCloseBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_close, "field 'mcuHaveUpdateCloseBtn'", ImageView.class);
        t.trackRecordingDataLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.map_track_recording_data_layout, "field 'trackRecordingDataLayout'", ViewGroup.class);
        t.trackRecordingCompressCanHideLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_record_compress_can_be_hide_layout, "field 'trackRecordingCompressCanHideLayout'", ViewGroup.class);
        t.gpsNoAccuracyPrompt = (TextView) Utils.findRequiredViewAsType(view, R.id.gps_no_accuracy_prompt, "field 'gpsNoAccuracyPrompt'", TextView.class);
        t.trackRecordingCompressDistanceLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_distance_layout, "field 'trackRecordingCompressDistanceLayout'", ViewGroup.class);
        t.trackRecordingCompressSpeedLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_speed_layout, "field 'trackRecordingCompressSpeedLayout'", ViewGroup.class);
        t.mapTrackRecordGpsAccuracy = (ImageView) Utils.findRequiredViewAsType(view, R.id.track_gps_accuracy_iv, "field 'mapTrackRecordGpsAccuracy'", ImageView.class);
        t.mapTrackRecordCompressDistance = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_distance_tv, "field 'mapTrackRecordCompressDistance'", TextView.class);
        t.mapTrackRecordCompressSpeed = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_speed_tv, "field 'mapTrackRecordCompressSpeed'", TextView.class);
        t.mapTrackRecordTiming = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_timing_tv, "field 'mapTrackRecordTiming'", TextView.class);
        t.mapTrackRecordDistance = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_distance_tv, "field 'mapTrackRecordDistance'", TextView.class);
        t.mapTrackRecordSpeed = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_speed_tv, "field 'mapTrackRecordSpeed'", TextView.class);
        t.mapTrackRecordPauseBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_pause_btn, "field 'mapTrackRecordPauseBtn'", TextView.class);
        t.mapTrackRecordCloseBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_close_btn, "field 'mapTrackRecordCloseBtn'", TextView.class);
        t.trackRecordingCompressBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.track_record_compress_btn, "field 'trackRecordingCompressBtn'", ImageView.class);
        t.popupBg = Utils.findRequiredView(view, R.id.popupBg, "field 'popupBg'");
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.titleBarTitle = null;
        t.titleBarRight = null;
        t.myDeviceManager = null;
        t.mapContainer = null;
        t.bottomChannelLayout = null;
        t.bottomChannelName = null;
        t.bottomChannelNumber = null;
        t.locationShareIV = null;
        t.zoomBigIV = null;
        t.zoomSmallIV = null;
        t.myLocateIV = null;
        t.mapTrackRecordBtn = null;
        t.mapKitBtn = null;
        t.mapSwitchTypeBtn = null;
        t.bleIsUnConnectLayout = null;
        t.bleReconnectImmediatelyBtn = null;
        t.bleUnConnectCloseBtn = null;
        t.mcuHaveUpdateLayout = null;
        t.mcuHaveUpdateTV = null;
        t.mcuUpdateImmediatelyBtn = null;
        t.mcuHaveUpdateCloseBtn = null;
        t.trackRecordingDataLayout = null;
        t.trackRecordingCompressCanHideLayout = null;
        t.gpsNoAccuracyPrompt = null;
        t.trackRecordingCompressDistanceLayout = null;
        t.trackRecordingCompressSpeedLayout = null;
        t.mapTrackRecordGpsAccuracy = null;
        t.mapTrackRecordCompressDistance = null;
        t.mapTrackRecordCompressSpeed = null;
        t.mapTrackRecordTiming = null;
        t.mapTrackRecordDistance = null;
        t.mapTrackRecordSpeed = null;
        t.mapTrackRecordPauseBtn = null;
        t.mapTrackRecordCloseBtn = null;
        t.trackRecordingCompressBtn = null;
        t.popupBg = null;
        this.a = null;
    }
}
