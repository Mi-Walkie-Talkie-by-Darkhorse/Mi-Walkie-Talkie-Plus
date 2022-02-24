package com.ifengyu.intercom.ui.fragment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.ShadowLayout;

/* loaded from: classes2.dex */
public class MapFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private MapFragment f6442a;

    @UiThread
    public MapFragment_ViewBinding(MapFragment mapFragment, View view) {
        this.f6442a = mapFragment;
        mapFragment.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        mapFragment.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        mapFragment.myDeviceManager = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.my_device_manager, "field 'myDeviceManager'", LinearLayout.class);
        mapFragment.mapContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.map_container, "field 'mapContainer'", FrameLayout.class);
        mapFragment.bottomChannelLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.bottom_channel_display_layout, "field 'bottomChannelLayout'", ShadowLayout.class);
        mapFragment.bottomChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_name, "field 'bottomChannelName'", TextView.class);
        mapFragment.bottomChannelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_channel_layout_number, "field 'bottomChannelNumber'", TextView.class);
        mapFragment.locationShareIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_location_share_iv, "field 'locationShareIV'", ImageView.class);
        mapFragment.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        mapFragment.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        mapFragment.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        mapFragment.mapTrackRecordBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_btn, "field 'mapTrackRecordBtn'", TextView.class);
        mapFragment.mapKitBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_kit_iv, "field 'mapKitBtn'", TextView.class);
        mapFragment.mapSwitchTypeBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_switch_type_btn, "field 'mapSwitchTypeBtn'", TextView.class);
        mapFragment.bleIsUnConnectLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.top_ble_is_unconnect_layout, "field 'bleIsUnConnectLayout'", ShadowLayout.class);
        mapFragment.bleReconnectImmediatelyBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.top_reconnect_immediately, "field 'bleReconnectImmediatelyBtn'", TextView.class);
        mapFragment.bleUnConnectCloseBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_ble_is_unconnect_close, "field 'bleUnConnectCloseBtn'", ImageView.class);
        mapFragment.mcuHaveUpdateLayout = (ShadowLayout) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_layout, "field 'mcuHaveUpdateLayout'", ShadowLayout.class);
        mapFragment.mcuHaveUpdateTV = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_tv, "field 'mcuHaveUpdateTV'", TextView.class);
        mapFragment.mcuUpdateImmediatelyBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.top_mcu_update_immediately, "field 'mcuUpdateImmediatelyBtn'", TextView.class);
        mapFragment.mcuHaveUpdateCloseBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_have_mcu_update_close, "field 'mcuHaveUpdateCloseBtn'", ImageView.class);
        mapFragment.trackRecordingDataLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.map_track_recording_data_layout, "field 'trackRecordingDataLayout'", ViewGroup.class);
        mapFragment.trackRecordingCompressCanHideLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_record_compress_can_be_hide_layout, "field 'trackRecordingCompressCanHideLayout'", ViewGroup.class);
        mapFragment.gpsNoAccuracyPrompt = (TextView) Utils.findRequiredViewAsType(view, R.id.gps_no_accuracy_prompt, "field 'gpsNoAccuracyPrompt'", TextView.class);
        mapFragment.trackRecordingCompressDistanceLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_distance_layout, "field 'trackRecordingCompressDistanceLayout'", ViewGroup.class);
        mapFragment.trackRecordingCompressSpeedLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_speed_layout, "field 'trackRecordingCompressSpeedLayout'", ViewGroup.class);
        mapFragment.mapTrackRecordGpsAccuracy = (ImageView) Utils.findRequiredViewAsType(view, R.id.track_gps_accuracy_iv, "field 'mapTrackRecordGpsAccuracy'", ImageView.class);
        mapFragment.mapTrackRecordCompressDistance = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_distance_tv, "field 'mapTrackRecordCompressDistance'", TextView.class);
        mapFragment.mapTrackRecordCompressSpeed = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_compress_speed_tv, "field 'mapTrackRecordCompressSpeed'", TextView.class);
        mapFragment.mapTrackRecordTiming = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_timing_tv, "field 'mapTrackRecordTiming'", TextView.class);
        mapFragment.mapTrackRecordDistance = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_distance_tv, "field 'mapTrackRecordDistance'", TextView.class);
        mapFragment.mapTrackRecordSpeed = (TextView) Utils.findRequiredViewAsType(view, R.id.track_recording_speed_tv, "field 'mapTrackRecordSpeed'", TextView.class);
        mapFragment.mapTrackRecordPauseBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_pause_btn, "field 'mapTrackRecordPauseBtn'", TextView.class);
        mapFragment.mapTrackRecordCloseBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.map_track_record_close_btn, "field 'mapTrackRecordCloseBtn'", TextView.class);
        mapFragment.trackRecordingCompressBtn = (ImageView) Utils.findRequiredViewAsType(view, R.id.track_record_compress_btn, "field 'trackRecordingCompressBtn'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MapFragment mapFragment = this.f6442a;
        if (mapFragment != null) {
            this.f6442a = null;
            mapFragment.titleBarTitle = null;
            mapFragment.titleBarRight = null;
            mapFragment.myDeviceManager = null;
            mapFragment.mapContainer = null;
            mapFragment.bottomChannelLayout = null;
            mapFragment.bottomChannelName = null;
            mapFragment.bottomChannelNumber = null;
            mapFragment.locationShareIV = null;
            mapFragment.zoomBigIV = null;
            mapFragment.zoomSmallIV = null;
            mapFragment.myLocateIV = null;
            mapFragment.mapTrackRecordBtn = null;
            mapFragment.mapKitBtn = null;
            mapFragment.mapSwitchTypeBtn = null;
            mapFragment.bleIsUnConnectLayout = null;
            mapFragment.bleReconnectImmediatelyBtn = null;
            mapFragment.bleUnConnectCloseBtn = null;
            mapFragment.mcuHaveUpdateLayout = null;
            mapFragment.mcuHaveUpdateTV = null;
            mapFragment.mcuUpdateImmediatelyBtn = null;
            mapFragment.mcuHaveUpdateCloseBtn = null;
            mapFragment.trackRecordingDataLayout = null;
            mapFragment.trackRecordingCompressCanHideLayout = null;
            mapFragment.gpsNoAccuracyPrompt = null;
            mapFragment.trackRecordingCompressDistanceLayout = null;
            mapFragment.trackRecordingCompressSpeedLayout = null;
            mapFragment.mapTrackRecordGpsAccuracy = null;
            mapFragment.mapTrackRecordCompressDistance = null;
            mapFragment.mapTrackRecordCompressSpeed = null;
            mapFragment.mapTrackRecordTiming = null;
            mapFragment.mapTrackRecordDistance = null;
            mapFragment.mapTrackRecordSpeed = null;
            mapFragment.mapTrackRecordPauseBtn = null;
            mapFragment.mapTrackRecordCloseBtn = null;
            mapFragment.trackRecordingCompressBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
