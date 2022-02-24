package com.ifengyu.intercom.ui.fragment;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.TextureMapView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.bean.PrivacyInfoBean;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.f0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.LiteChannelActivity;
import com.ifengyu.intercom.lite.LiteSettingHolderActivity;
import com.ifengyu.intercom.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.lite.enums.UpgradeModeEnum;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.intercom.lite.old.LiteUpgradeActivity;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity;
import com.ifengyu.intercom.ui.activity.OsmMapToolOperateActivity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SelectDeviceActivity;
import com.ifengyu.intercom.ui.activity.TrackInfoDetailActivity;
import com.ifengyu.intercom.ui.activity.UserGuideActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.service.TrackRecordService;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkSettingActivity;
import com.ifengyu.intercom.ui.widget.view.ShadowLayout;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateMcuActivity;
import com.ifengyu.library.base.BaseApp;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.squareup.otto.Subscribe;
import com.umeng.analytics.pro.ai;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.greenrobot.greendao.query.WhereCondition;
import org.osmdroid.views.MapView;

/* loaded from: classes2.dex */
public class MapFragment extends com.ifengyu.intercom.ui.baseui.a implements View.OnClickListener, TrackRecordService.c, com.ifengyu.intercom.network.a {
    private TextView A;
    private TextView B;
    private TextView C;
    private View D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean J;
    private boolean K;
    private boolean L;
    private McuUpdateInfoModel M;
    private SealSharkChannel Q;
    private int R;
    private QMUIConstraintLayout S;
    private com.ifengyu.intercom.lite.g.t T;
    private com.qmuiteam.qmui.widget.dialog.b U;
    private com.qmuiteam.qmui.widget.dialog.b W;
    TextView X;
    TextView Y;
    TextView Z;
    TextView b0;
    @BindView(R.id.top_ble_is_unconnect_layout)
    ShadowLayout bleIsUnConnectLayout;
    @BindView(R.id.top_reconnect_immediately)
    TextView bleReconnectImmediatelyBtn;
    @BindView(R.id.top_ble_is_unconnect_close)
    ImageView bleUnConnectCloseBtn;
    @BindView(R.id.bottom_channel_display_layout)
    ShadowLayout bottomChannelLayout;
    @BindView(R.id.bottom_channel_layout_name)
    TextView bottomChannelName;
    @BindView(R.id.bottom_channel_layout_number)
    TextView bottomChannelNumber;
    TextView c0;
    View d0;
    h0 e0;
    private boolean g;
    @BindView(R.id.gps_no_accuracy_prompt)
    TextView gpsNoAccuracyPrompt;
    private ImageView h;
    private ImageView i;
    private PopupWindow j;
    private PopupWindow k;
    private SpannableString l;
    @BindView(R.id.map_icon_location_share_iv)
    ImageView locationShareIV;
    private SpannableString m;
    @BindView(R.id.map_container)
    FrameLayout mapContainer;
    @BindView(R.id.map_kit_iv)
    TextView mapKitBtn;
    @BindView(R.id.map_switch_type_btn)
    TextView mapSwitchTypeBtn;
    @BindView(R.id.map_track_record_btn)
    TextView mapTrackRecordBtn;
    @BindView(R.id.map_track_record_close_btn)
    TextView mapTrackRecordCloseBtn;
    @BindView(R.id.track_recording_compress_distance_tv)
    TextView mapTrackRecordCompressDistance;
    @BindView(R.id.track_recording_compress_speed_tv)
    TextView mapTrackRecordCompressSpeed;
    @BindView(R.id.track_recording_distance_tv)
    TextView mapTrackRecordDistance;
    @BindView(R.id.track_gps_accuracy_iv)
    ImageView mapTrackRecordGpsAccuracy;
    @BindView(R.id.map_track_record_pause_btn)
    TextView mapTrackRecordPauseBtn;
    @BindView(R.id.track_recording_speed_tv)
    TextView mapTrackRecordSpeed;
    @BindView(R.id.track_recording_timing_tv)
    TextView mapTrackRecordTiming;
    @BindView(R.id.top_have_mcu_update_close)
    ImageView mcuHaveUpdateCloseBtn;
    @BindView(R.id.top_have_mcu_update_layout)
    ShadowLayout mcuHaveUpdateLayout;
    @BindView(R.id.top_mcu_update_tv)
    TextView mcuHaveUpdateTV;
    @BindView(R.id.top_mcu_update_immediately)
    TextView mcuUpdateImmediatelyBtn;
    @BindView(R.id.my_device_manager)
    LinearLayout myDeviceManager;
    @BindView(R.id.map_icon_my_locate_iv)
    ImageView myLocateIV;
    private SpannableString n;
    private TrackRecordService o;
    private boolean p;
    private com.ifengyu.intercom.greendao.bean.b q;
    private TranslateAnimation r;
    private MainActivity s;
    private com.ifengyu.intercom.ui.map.a t;
    @BindView(R.id.title_bar_right)
    ImageView titleBarRight;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    @BindView(R.id.track_record_compress_btn)
    ImageView trackRecordingCompressBtn;
    @BindView(R.id.track_record_compress_can_be_hide_layout)
    ViewGroup trackRecordingCompressCanHideLayout;
    @BindView(R.id.track_recording_compress_distance_layout)
    ViewGroup trackRecordingCompressDistanceLayout;
    @BindView(R.id.track_recording_compress_speed_layout)
    ViewGroup trackRecordingCompressSpeedLayout;
    @BindView(R.id.map_track_recording_data_layout)
    ViewGroup trackRecordingDataLayout;
    private com.ifengyu.intercom.ui.map.b u;
    private TextureMapView v;
    private MapView w;
    private ImageView x;
    private ImageView y;
    private TextView z;
    @BindView(R.id.map_icon_zoom_big_iv)
    ImageView zoomBigIV;
    @BindView(R.id.map_icon_zoom_small_iv)
    ImageView zoomSmallIV;
    private boolean H = true;
    private boolean I = false;
    private int N = -1;
    private x O = new x(this);
    private ServiceConnection P = new k();
    private boolean V = false;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f6409a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6410b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f6411c;
        final /* synthetic */ float d;

        a(int i, int i2, int i3, float f) {
            this.f6409a = i;
            this.f6410b = i2;
            this.f6411c = i3;
            this.d = f;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f6409a;
            if (i < 0) {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_none);
                MapFragment.this.gpsNoAccuracyPrompt.setText(k0.c(R.string.current_gps_no_accuracy_please_change_place));
            } else if (i <= 10) {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_all);
                MapFragment.this.gpsNoAccuracyPrompt.setText("");
            } else if (i <= 20) {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_three);
                MapFragment.this.gpsNoAccuracyPrompt.setText("");
            } else if (i <= 30) {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_two);
                MapFragment.this.gpsNoAccuracyPrompt.setText("");
            } else if (i <= 50) {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_one);
                MapFragment.this.gpsNoAccuracyPrompt.setText("");
            } else {
                MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_none);
                MapFragment.this.gpsNoAccuracyPrompt.setText(k0.c(R.string.current_gps_no_accuracy_please_change_place));
            }
            SpannableString spannableString = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", Integer.valueOf(this.f6410b / 3600), Integer.valueOf((this.f6410b % 3600) / 60), Integer.valueOf(this.f6410b % 60)));
            spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
            MapFragment.this.mapTrackRecordTiming.setText(spannableString);
            int i2 = this.f6411c;
            if (i2 < 1000) {
                MapFragment.this.mapTrackRecordDistance.setText(String.valueOf(i2));
                MapFragment mapFragment = MapFragment.this;
                mapFragment.mapTrackRecordDistance.append(mapFragment.n);
                MapFragment.this.mapTrackRecordCompressDistance.setText(String.valueOf(this.f6411c));
                MapFragment mapFragment2 = MapFragment.this;
                mapFragment2.mapTrackRecordCompressDistance.append(mapFragment2.n);
            } else {
                MapFragment.this.mapTrackRecordDistance.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(this.f6411c / 1000.0f)));
                MapFragment mapFragment3 = MapFragment.this;
                mapFragment3.mapTrackRecordDistance.append(mapFragment3.l);
                MapFragment.this.mapTrackRecordCompressDistance.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(this.f6411c / 1000.0f)));
                MapFragment mapFragment4 = MapFragment.this;
                mapFragment4.mapTrackRecordCompressDistance.append(mapFragment4.l);
            }
            MapFragment.this.mapTrackRecordSpeed.setText(String.valueOf(this.d));
            MapFragment mapFragment5 = MapFragment.this;
            mapFragment5.mapTrackRecordSpeed.append(mapFragment5.m);
            MapFragment.this.mapTrackRecordCompressSpeed.setText(String.valueOf(this.d));
            MapFragment mapFragment6 = MapFragment.this;
            mapFragment6.mapTrackRecordCompressSpeed.append(mapFragment6.m);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6412a;

        b(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6412a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            MapFragment.this.l();
            if (MapFragment.this.V && this.f6412a.hasCh() && this.f6412a.getCh().getChVox() > 0) {
                MapFragment.this.V = false;
                com.ifengyu.intercom.i.w.b().a();
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MapFragment.this.l();
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f6415a;

        d(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f6415a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6415a.hasResult() && this.f6415a.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK && this.f6415a.hasCh1()) {
                SealProtos.SEAL_ChannelInfo ch1 = this.f6415a.getCh1();
                if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                    MapFragment.this.Q = g0.a(ch1);
                    if (MapFragment.this.Q == null) {
                        return;
                    }
                    if (MapFragment.this.Q.d()) {
                        MapFragment mapFragment = MapFragment.this;
                        mapFragment.bottomChannelName.setText(mapFragment.Q.e());
                        MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                        MapFragment mapFragment2 = MapFragment.this;
                        mapFragment2.bottomChannelNumber.setText(c0.b(mapFragment2.Q.i()));
                        return;
                    }
                    String format = String.format(Locale.getDefault(), "C%02d", Integer.valueOf(MapFragment.this.Q.f() + 1));
                    if (MapFragment.this.Q.e().trim().length() == 0) {
                        MapFragment.this.bottomChannelName.setText(format);
                    } else {
                        TextView textView = MapFragment.this.bottomChannelName;
                        textView.setText(format + " " + MapFragment.this.Q.e().trim());
                    }
                    MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                    MapFragment mapFragment3 = MapFragment.this;
                    mapFragment3.bottomChannelNumber.setText(c0.b(mapFragment3.Q.i()));
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f6417a;

        e(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f6417a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSharkChannel a2;
            if (this.f6417a.hasResult() && this.f6417a.getResult() == SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK && this.f6417a.hasDeviceMode()) {
                MapFragment.this.N = this.f6417a.getDeviceMode().getNumber();
                if (MapFragment.this.N == SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                    if (this.f6417a.hasStateMode()) {
                        int stateMode = this.f6417a.getStateMode();
                        if (stateMode == 1) {
                            if (this.f6417a.hasCh1()) {
                                MapFragment.this.Q = com.ifengyu.intercom.i.h0.a(this.f6417a.getCh1());
                                MapFragment.this.R = 1;
                            } else if (this.f6417a.hasCh2()) {
                                MapFragment.this.Q = com.ifengyu.intercom.i.h0.a(this.f6417a.getCh2());
                                MapFragment.this.R = 2;
                            }
                            MapFragment mapFragment = MapFragment.this;
                            mapFragment.bottomChannelName.setText(mapFragment.Q.e());
                            MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                            MapFragment mapFragment2 = MapFragment.this;
                            mapFragment2.bottomChannelNumber.setText(c0.b(mapFragment2.Q.i()));
                        } else if (stateMode == 2) {
                            if (this.f6417a.getCurrentChId() == 2) {
                                MapFragment.this.Q = com.ifengyu.intercom.i.h0.a(this.f6417a.getCh2());
                                MapFragment.this.R = 2;
                            } else {
                                MapFragment.this.Q = com.ifengyu.intercom.i.h0.a(this.f6417a.getCh1());
                                MapFragment.this.R = 1;
                            }
                            MapFragment mapFragment3 = MapFragment.this;
                            mapFragment3.bottomChannelName.setText(mapFragment3.Q.e());
                            MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                            MapFragment mapFragment4 = MapFragment.this;
                            mapFragment4.bottomChannelNumber.setText(c0.b(mapFragment4.Q.i()));
                        }
                    }
                } else if (MapFragment.this.N != 1 && MapFragment.this.N != 2) {
                    int i = MapFragment.this.N;
                    if (i == 3 || i == 4) {
                        MapFragment.this.bottomChannelName.setText(k0.c(R.string.device_mode_channel_scan));
                        MapFragment.this.bottomChannelNumber.setTextSize(15.0f);
                        MapFragment.this.bottomChannelNumber.setText(k0.c(R.string.device_mode_channel_scan_ing_describe));
                    } else if (i == 5 || i == 6) {
                        MapFragment.this.bottomChannelName.setText(k0.c(R.string.device_mode_team));
                        MapFragment.this.bottomChannelNumber.setTextSize(15.0f);
                        MapFragment.this.bottomChannelNumber.setText(k0.c(R.string.device_mode_team_ing_describe));
                    }
                } else if (this.f6417a.hasCh1() && this.f6417a.hasCh2() && (a2 = com.ifengyu.intercom.i.h0.a(this.f6417a.getCh1())) != null) {
                    MapFragment.this.bottomChannelName.setText(a2.e());
                    MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                    MapFragment.this.bottomChannelNumber.setText(c0.b(a2.i()));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Animation.AnimationListener {
        f() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (MapFragment.this.bleIsUnConnectLayout.getVisibility() == 0) {
                MapFragment.this.bleIsUnConnectLayout.clearAnimation();
                MapFragment.this.bleIsUnConnectLayout.setVisibility(8);
                if (MapFragment.this.J) {
                    MapFragment.this.J = false;
                    MapFragment.this.mcuHaveUpdateLayout.setVisibility(0);
                    MapFragment.this.mcuUpdateImmediatelyBtn.setClickable(true);
                    MapFragment.this.mcuHaveUpdateCloseBtn.setClickable(true);
                    if (d0.g() != 1) {
                        MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                    } else if (c0.a()) {
                        if (d0.i().equals("mcu_language_type_english")) {
                            MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                        } else {
                            MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_different_language_update));
                        }
                    } else if (!c0.b()) {
                        MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                    } else if (d0.i().equals("mcu_language_type_chinese")) {
                        MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                    } else {
                        MapFragment.this.mcuHaveUpdateTV.setText(k0.c(R.string.have_different_language_update));
                    }
                }
            }
            if (MapFragment.this.mcuHaveUpdateLayout.getVisibility() == 0) {
                MapFragment.this.mcuHaveUpdateLayout.clearAnimation();
                MapFragment.this.mcuHaveUpdateLayout.setVisibility(8);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements PopupWindow.OnDismissListener {
        g() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            f0.a(MapFragment.this.getContext(), MapFragment.this.k, 0.6f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements PopupWindow.OnDismissListener {
        h() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            f0.a(MapFragment.this.getContext(), MapFragment.this.j, 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MapFragment.this.locationShareIV.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements Runnable {

        /* loaded from: classes2.dex */
        class a implements BaseActivity.e {
            a(j jVar) {
            }

            @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
            public void a() {
                String h = d0.h();
                String N = d0.N();
                if (!TextUtils.isEmpty(h) && !TextUtils.isEmpty(N)) {
                    com.ifengyu.intercom.g.a.a(N, h, (com.ifengyu.intercom.g.d.b) null);
                }
            }

            @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
            public void b() {
            }

            @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
            public void c() {
            }
        }

        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MainActivity) MapFragment.this.getActivity()).a(new a(this));
        }
    }

    /* loaded from: classes2.dex */
    class k implements ServiceConnection {
        k() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            z.c("MapFragment", "onServiceConnected");
            MapFragment.this.o = ((TrackRecordService.d) iBinder).a();
            MapFragment.this.o.a(MapFragment.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            z.c("MapFragment", "onServiceDisconnected");
            if (MapFragment.this.o != null) {
                MapFragment.this.o.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements Runnable {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ((MainActivity) MapFragment.this.getActivity()).j();
                if (((MainActivity) MapFragment.this.getActivity()).m != null) {
                    ((MainActivity) MapFragment.this.getActivity()).m.a();
                }
            }
        }

        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MainActivity) MapFragment.this.getActivity()).b(R.drawable.mine_icon_win);
            ((MainActivity) MapFragment.this.getActivity()).c(R.string.activation_successful);
            k0.a(new a(), 800L);
            MiTalkiApp.b().h = true;
            d0.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m extends com.ifengyu.intercom.g.d.h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f6427b;

        m(String str) {
            this.f6427b = str;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
        }

        public void a(PrivacyInfoBean privacyInfoBean, int i) {
            int parseInt = Integer.parseInt(privacyInfoBean.getVersion());
            if (parseInt > d0.b(this.f6427b)) {
                MapFragment.this.a(this.f6427b, parseInt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements QMUIDialogAction.b {
        n() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            com.ifengyu.intercom.node.q.d a2;
            bVar.dismiss();
            MapFragment.this.W = null;
            int g = d0.g();
            if (g == 36611) {
                MapFragment.this.e0.b();
            } else {
                String p = d0.p();
                if (!TextUtils.isEmpty(p) && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
                    a2.c(p);
                }
            }
            d0.a(g, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o extends com.qmuiteam.qmui.span.d {
        o(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserProtocolActivity.a(MapFragment.this.getContext(), d0.g());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteChannelActivity.a(MapFragment.this.getContext(), MapFragment.this.r());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class q implements androidx.lifecycle.q<Boolean> {
        q() {
        }

        /* renamed from: a */
        public void onChanged(Boolean bool) {
            int i = 0;
            MapFragment.this.S.setVisibility(bool.booleanValue() ? 0 : 8);
            ImageView imageView = MapFragment.this.titleBarRight;
            if (!bool.booleanValue()) {
                i = 8;
            }
            imageView.setVisibility(i);
            if (bool.booleanValue()) {
                MapFragment.this.O.sendEmptyMessage(5);
                MapFragment.this.e0.m();
                MapFragment.this.e0.l();
                MapFragment.this.e0.n();
                MapFragment.this.T.b();
                return;
            }
            Message obtain = Message.obtain();
            obtain.what = 6;
            obtain.arg1 = 1;
            obtain.arg2 = 36611;
            MapFragment.this.O.sendMessage(obtain);
            MapFragment.this.titleBarTitle.setText(R.string.device_not_connected);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r implements androidx.lifecycle.q<ChannelModel> {
        r() {
        }

        /* renamed from: a */
        public void onChanged(ChannelModel channelModel) {
            MapFragment.this.a(channelModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class s implements androidx.lifecycle.q<DeviceModel> {
        s() {
        }

        /* renamed from: a */
        public void onChanged(DeviceModel deviceModel) {
            if (deviceModel.getName() != null && MapFragment.this.e0.d().i()) {
                MapFragment.this.titleBarTitle.setText(deviceModel.getName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t implements androidx.lifecycle.q<DeviceParamLiveData> {
        t() {
        }

        /* renamed from: a */
        public void onChanged(DeviceParamLiveData deviceParamLiveData) {
            if (!TextUtils.isEmpty(deviceParamLiveData.getName())) {
                MapFragment.this.titleBarTitle.setText(deviceParamLiveData.getName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class u implements androidx.lifecycle.q<UpgradeInfoDTO> {
        u() {
        }

        /* renamed from: a */
        public void onChanged(UpgradeInfoDTO upgradeInfoDTO) {
            if (MapFragment.this.e0.d().i() && upgradeInfoDTO.h()) {
                MapFragment.this.O.sendEmptyMessage(2);
                if (upgradeInfoDTO.e() == UpgradeModeEnum.FORCE.a().intValue()) {
                    MapFragment.this.a(upgradeInfoDTO);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class v implements Consumer<LiteEvent> {
        v() {
        }

        /* renamed from: a */
        public void accept(LiteEvent liteEvent) throws Exception {
            z.b("MapFragment", "lite event: " + liteEvent);
            if (liteEvent == LiteEvent.UPGRADE_SUCCESS) {
                MapFragment.this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
            }
        }
    }

    /* loaded from: classes2.dex */
    class w implements ViewTreeObserver.OnGlobalLayoutListener {
        w() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            MapFragment.this.G = true;
            MapFragment.this.o();
            MapFragment.this.myDeviceManager.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class x extends com.ifengyu.intercom.ui.baseui.b<MapFragment> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MapFragment f6438a;

            a(x xVar, MapFragment mapFragment) {
                this.f6438a = mapFragment;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((MainActivity) this.f6438a.getActivity()).j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MapFragment f6439a;

            b(x xVar, MapFragment mapFragment) {
                this.f6439a = mapFragment;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((MainActivity) this.f6439a.getActivity()).j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c extends com.ifengyu.intercom.g.d.i {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MapFragment f6440b;

            c(x xVar, MapFragment mapFragment) {
                this.f6440b = mapFragment;
            }

            @Override // com.ifengyu.intercom.g.d.b
            public void a(Call call, Exception exc, int i) {
            }

            public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                if (mcuUpdateInfoModel != null) {
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int D = d0.D();
                    if (D > 0 && D < parseInt) {
                        d0.n(true);
                        this.f6440b.O.sendEmptyMessage(2);
                        this.f6440b.M = mcuUpdateInfoModel;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class d extends com.ifengyu.intercom.g.d.j {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MapFragment f6441b;

            d(x xVar, MapFragment mapFragment) {
                this.f6441b = mapFragment;
            }

            @Override // com.ifengyu.intercom.g.d.b
            public void a(Call call, Exception exc, int i) {
            }

            public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                if (mcuUpdateInfoModel != null) {
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int K = d0.K();
                    if (K > 0 && K < parseInt) {
                        d0.q(true);
                        this.f6441b.O.sendEmptyMessage(2);
                        this.f6441b.M = mcuUpdateInfoModel;
                    }
                }
            }
        }

        public x(MapFragment mapFragment) {
            super(mapFragment);
        }

        private void b(Message message, MapFragment mapFragment) {
            int i = message.arg1;
            if (i == 1) {
                UpdateManager d2 = UpdateManager.d();
                UpdateManager d3 = UpdateManager.d();
                d3.getClass();
                d2.a(new UpdateManager.e(d3, mapFragment.s, UpdateManager.CHECK_CONDITION.MCU), message.arg2);
            } else if (i == 4) {
                com.ifengyu.intercom.g.a.d(new d(this, mapFragment));
            } else if (i == 5) {
                com.ifengyu.intercom.g.a.c(new c(this, mapFragment));
            }
        }

        private void c(Message message, MapFragment mapFragment) {
            if (message.arg2 == 36611 || d0.g() != 36611) {
                if ((mapFragment.titleBarRight != null) && (mapFragment.locationShareIV != null)) {
                    mapFragment.titleBarTitle.setText(R.string.device_not_connected);
                    mapFragment.titleBarRight.setVisibility(8);
                    mapFragment.locationShareIV.setVisibility(8);
                    mapFragment.bottomChannelLayout.setVisibility(8);
                    mapFragment.mcuHaveUpdateLayout.clearAnimation();
                    mapFragment.mcuHaveUpdateLayout.setVisibility(8);
                    if (message.arg1 == 1) {
                        mapFragment.K = false;
                    }
                    if (mapFragment.s.m() == null || mapFragment.s.l() == null) {
                        mapFragment.K = true;
                    }
                    if (mapFragment.K) {
                        mapFragment.bleIsUnConnectLayout.clearAnimation();
                        mapFragment.bleIsUnConnectLayout.setVisibility(8);
                    } else {
                        mapFragment.bleIsUnConnectLayout.setVisibility(0);
                        mapFragment.bleReconnectImmediatelyBtn.setClickable(true);
                        mapFragment.bleUnConnectCloseBtn.setClickable(true);
                    }
                }
                if (mapFragment.L) {
                    if (mapFragment.t != null) {
                        mapFragment.t.j();
                    }
                } else if (mapFragment.u != null) {
                    mapFragment.u.i();
                }
            }
        }

        public void a(Message message, MapFragment mapFragment) {
            switch (message.what) {
                case 1:
                    b(message, mapFragment);
                    return;
                case 2:
                    a(mapFragment);
                    return;
                case 3:
                    ImageView imageView = mapFragment.locationShareIV;
                    if (imageView != null) {
                        imageView.setImageResource(R.drawable.home_icon_position_open);
                    }
                    ((MainActivity) mapFragment.getActivity()).b(k0.c(R.string.share_location_opened));
                    ((MainActivity) mapFragment.getActivity()).b(R.drawable.mine_icon_win);
                    BaseApp.a().postDelayed(new a(this, mapFragment), 500L);
                    return;
                case 4:
                    ImageView imageView2 = mapFragment.locationShareIV;
                    if (imageView2 != null) {
                        imageView2.setImageResource(R.drawable.home_icon_position);
                    }
                    ((MainActivity) mapFragment.getActivity()).b(k0.c(R.string.share_location_closed));
                    ((MainActivity) mapFragment.getActivity()).b(R.drawable.mine_icon_win);
                    BaseApp.a().postDelayed(new b(this, mapFragment), 500L);
                    return;
                case 5:
                    b(mapFragment);
                    mapFragment.m();
                    return;
                case 6:
                    c(message, mapFragment);
                    return;
                default:
                    return;
            }
        }

        private void b(MapFragment mapFragment) {
            boolean z = true;
            boolean z2 = mapFragment.titleBarRight != null;
            if (mapFragment.locationShareIV == null) {
                z = false;
            }
            if (z2 && z) {
                mapFragment.titleBarTitle.setText(d0.q());
                mapFragment.titleBarRight.setVisibility(0);
                if (d0.g() == 36611) {
                    mapFragment.locationShareIV.setVisibility(8);
                } else {
                    mapFragment.locationShareIV.setVisibility(0);
                }
                int g = d0.g();
                if (g == 36611) {
                    mapFragment.S.setVisibility(0);
                    mapFragment.bottomChannelLayout.setVisibility(8);
                } else if (g == 5 || g == 4) {
                    mapFragment.S.setVisibility(8);
                    mapFragment.bottomChannelLayout.setVisibility(0);
                } else {
                    mapFragment.bottomChannelLayout.setVisibility(8);
                    mapFragment.S.setVisibility(8);
                }
                if (mapFragment.bleIsUnConnectLayout.getVisibility() == 0) {
                    mapFragment.bleIsUnConnectLayout.startAnimation(mapFragment.r);
                    mapFragment.bleReconnectImmediatelyBtn.setClickable(false);
                    mapFragment.bleUnConnectCloseBtn.setClickable(false);
                }
            }
            if (mapFragment.L) {
                if (mapFragment.t != null) {
                    mapFragment.t.i();
                }
            } else if (mapFragment.u != null) {
                mapFragment.u.h();
            }
        }

        private void a(MapFragment mapFragment) {
            if (d0.d0()) {
                mapFragment.titleBarRight.setImageResource(R.drawable.home_icon_set_news);
            }
            if (mapFragment.bleIsUnConnectLayout.getVisibility() == 0) {
                mapFragment.J = true;
                return;
            }
            mapFragment.mcuHaveUpdateLayout.setVisibility(0);
            mapFragment.mcuUpdateImmediatelyBtn.setClickable(true);
            mapFragment.mcuHaveUpdateCloseBtn.setClickable(true);
            int g = d0.g();
            if (g != 1) {
                if (g == 4) {
                    mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                } else if (g != 5) {
                    mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                } else {
                    mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                }
            } else if (c0.a()) {
                if (d0.i().equals("mcu_language_type_english")) {
                    mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
                } else {
                    mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_different_language_update));
                }
            } else if (!c0.b()) {
                mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
            } else if (d0.i().equals("mcu_language_type_chinese")) {
                mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_mcu_update_please_update));
            } else {
                mapFragment.mcuHaveUpdateTV.setText(k0.c(R.string.have_different_language_update));
            }
        }
    }

    private void A() {
        this.S = (QMUIConstraintLayout) this.D.findViewById(R.id.bottom_bar);
        this.X = (TextView) this.D.findViewById(R.id.tv_number);
        this.Y = (TextView) this.D.findViewById(R.id.tv_title1);
        this.Z = (TextView) this.D.findViewById(R.id.tv_title2);
        this.b0 = (TextView) this.D.findViewById(R.id.tv_detail1);
        this.c0 = (TextView) this.D.findViewById(R.id.tv_detail2);
        this.d0 = this.D.findViewById(R.id.line);
        a((ChannelModel) null);
        this.S.setOnClickListener(new p());
        if (this.e0.d().i()) {
            this.titleBarTitle.setText(d0.q());
            this.titleBarRight.setVisibility(0);
            this.S.setVisibility(0);
            return;
        }
        this.titleBarTitle.setText(R.string.device_not_connected);
        this.S.setVisibility(8);
        this.titleBarRight.setVisibility(8);
    }

    private void B() {
        this.myDeviceManager.setOnClickListener(this);
        this.titleBarRight.setOnClickListener(this);
        this.locationShareIV.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        this.mapTrackRecordBtn.setOnClickListener(this);
        this.mapKitBtn.setOnClickListener(this);
        this.mapSwitchTypeBtn.setOnClickListener(this);
        this.mapTrackRecordPauseBtn.setOnClickListener(this);
        this.mapTrackRecordCloseBtn.setOnClickListener(this);
        this.trackRecordingCompressBtn.setOnClickListener(this);
        this.bleReconnectImmediatelyBtn.setOnClickListener(this);
        this.bleUnConnectCloseBtn.setOnClickListener(this);
        this.mcuUpdateImmediatelyBtn.setOnClickListener(this);
        this.mcuHaveUpdateCloseBtn.setOnClickListener(this);
        this.bottomChannelLayout.setOnClickListener(this);
    }

    private void C() {
        int n2 = d0.n();
        int i2 = 2;
        if (n2 == 1 || n2 == 2) {
            TextureMapView textureMapView = new TextureMapView(MiTalkiApp.b());
            this.v = textureMapView;
            this.mapContainer.addView(textureMapView, new FrameLayout.LayoutParams(-1, -1));
            com.ifengyu.intercom.ui.map.a aVar = new com.ifengyu.intercom.ui.map.a(getActivity(), this.v, this);
            this.t = aVar;
            if (n2 == 1) {
                i2 = 1;
            }
            aVar.a(i2, true);
            this.L = true;
            return;
        }
        MapView mapView = new MapView(MiTalkiApp.b());
        this.w = mapView;
        this.mapContainer.addView(mapView, new FrameLayout.LayoutParams(-1, -1));
        com.ifengyu.intercom.ui.map.b bVar = new com.ifengyu.intercom.ui.map.b(getActivity(), this.w, this);
        this.u = bVar;
        bVar.a(n2 == 3 ? MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP : MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP, true);
        this.L = false;
    }

    private void D() {
        this.e = (ViewGroup) this.D.findViewById(R.id.title_bar);
        i();
        this.trackRecordingDataLayout.setClickable(true);
        Typeface typeface = com.ifengyu.intercom.i.p.f5324b;
        this.mapTrackRecordTiming.setTypeface(typeface);
        this.mapTrackRecordDistance.setTypeface(typeface);
        this.mapTrackRecordCompressDistance.setTypeface(typeface);
        this.mapTrackRecordSpeed.setTypeface(typeface);
        this.mapTrackRecordCompressSpeed.setTypeface(typeface);
        this.bottomChannelNumber.setTypeface(typeface);
        SpannableString spannableString = new SpannableString(" km");
        this.l = spannableString;
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 0, this.l.length(), 17);
        SpannableString spannableString2 = new SpannableString(" km/h");
        this.m = spannableString2;
        spannableString2.setSpan(new AbsoluteSizeSpan(13, true), 0, this.m.length(), 17);
        SpannableString spannableString3 = new SpannableString(" m");
        this.n = spannableString3;
        spannableString3.setSpan(new AbsoluteSizeSpan(13, true), 0, this.n.length(), 17);
        SpannableString spannableString4 = new SpannableString("00:00:00");
        spannableString4.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString4.length(), 17);
        this.mapTrackRecordTiming.setText(spannableString4);
        this.mapTrackRecordDistance.setText("0");
        this.mapTrackRecordDistance.append(this.n);
        this.mapTrackRecordCompressDistance.setText("0");
        this.mapTrackRecordCompressDistance.append(this.n);
        this.mapTrackRecordSpeed.setText("0.0");
        this.mapTrackRecordSpeed.append(this.m);
        this.mapTrackRecordCompressSpeed.setText("0.0");
        this.mapTrackRecordCompressSpeed.append(this.m);
        if (!c0.b()) {
            this.mapTrackRecordBtn.setTextSize(8.0f);
            this.mapKitBtn.setTextSize(8.0f);
            this.mapSwitchTypeBtn.setTextSize(8.0f);
        }
    }

    private void E() {
        this.T = (com.ifengyu.intercom.lite.g.t) androidx.lifecycle.x.a(this).a(com.ifengyu.intercom.lite.g.t.class);
        h0 h0Var = (h0) androidx.lifecycle.x.a(this).a(h0.class);
        this.e0 = h0Var;
        h0Var.k().observe(this, new q());
        this.e0.g().observe(this, new r());
        this.e0.h().observe(this, new s());
        this.e0.i().observe(this, new t());
        this.T.e().observe(this, new u());
        this.T.b();
        com.ifengyu.intercom.lite.utils.j.a().a(this, LiteEvent.class, new v());
    }

    private void F() {
        boolean z = !this.E;
        this.E = z;
        this.myLocateIV.setImageResource(z ? R.drawable.home_icon_location_open : R.drawable.home_icon_location);
        if (this.L) {
            this.t.a(this.E);
        } else {
            this.u.c();
        }
        MiTalkiApp.b().b(true);
    }

    private void G() {
        int g2 = d0.g();
        if (g2 == 1) {
            com.ifengyu.intercom.node.e.d().c();
        } else if (g2 == 4) {
            com.ifengyu.intercom.i.h0.d();
        } else if (g2 == 5) {
            g0.h();
        } else if (g2 == 6) {
            com.ifengyu.intercom.i.m.a();
        }
    }

    private void H() {
        this.g = true;
        this.trackRecordingDataLayout.setVisibility(0);
        SpannableString spannableString = new SpannableString("00:00:00");
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
        this.mapTrackRecordTiming.setText(spannableString);
        this.mapTrackRecordDistance.setText("0");
        this.mapTrackRecordDistance.append(this.n);
        this.mapTrackRecordCompressDistance.setText("0");
        this.mapTrackRecordCompressDistance.append(this.n);
        this.mapTrackRecordSpeed.setText("0.0");
        this.mapTrackRecordSpeed.append(this.m);
        this.mapTrackRecordCompressSpeed.setText("0.0");
        this.mapTrackRecordCompressSpeed.append(this.m);
        this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_pause));
        this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
        this.mapTrackRecordBtn.setVisibility(8);
        Intent intent = new Intent(getActivity(), TrackRecordService.class);
        intent.putExtra("is_load_last_not_saved_track", false);
        getActivity().startService(intent);
        getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.P, 1);
        if (this.L) {
            this.t.h();
        } else {
            this.u.g();
        }
    }

    private void I() {
        View inflate = View.inflate(getActivity(), R.layout.map_tool_kit_layout, null);
        inflate.findViewById(R.id.map_kit_ranging_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_altitude_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_latandlong_btn_layout).setOnClickListener(this);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.k = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.k.setFocusable(true);
        this.k.setOutsideTouchable(true);
        this.k.setBackgroundDrawable(new ColorDrawable(0));
        this.k.setOnDismissListener(new g());
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        com.ifengyu.intercom.d.a((Activity) getActivity());
        this.k.showAtLocation(this.mapKitBtn, 0, (com.ifengyu.intercom.d.f5223b / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        f0.a(getContext(), this.k, 0.6f);
    }

    private void J() {
        View inflate = View.inflate(getActivity(), R.layout.map_switch_mode_layout, null);
        this.x = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_normal);
        this.z = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_normal_tv);
        this.y = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite);
        this.A = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite_tv);
        this.h = (ImageView) inflate.findViewById(R.id.map_switch_mode_standard);
        this.B = (TextView) inflate.findViewById(R.id.map_switch_mode_standard_tv);
        this.i = (ImageView) inflate.findViewById(R.id.map_switch_mode_satellitic);
        this.C = (TextView) inflate.findViewById(R.id.map_switch_mode_satellitic_tv);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.i.setOnClickListener(this);
        if (this.L) {
            if (this.t.a() == 1) {
                b(1);
            } else {
                b(2);
            }
        } else if (this.u.a() == MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP) {
            b(3);
        } else {
            b(4);
        }
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.j = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.j.setFocusable(true);
        this.j.setOutsideTouchable(true);
        this.j.setBackgroundDrawable(new ColorDrawable(0));
        this.j.setOnDismissListener(new h());
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        com.ifengyu.intercom.d.a((Activity) getActivity());
        this.j.showAtLocation(this.mapKitBtn, 0, (com.ifengyu.intercom.d.f5223b / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        f0.a(getContext(), this.j, 0.6f);
    }

    private void K() {
        this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
        d0.i(false);
        int g2 = d0.g();
        if (g2 != 1) {
            if (g2 != 36611) {
                if (g2 != 4) {
                    if (g2 == 5 && com.ifengyu.intercom.node.j.b().a()) {
                        this.s.startActivity(new Intent(this.s, SealSettingActivity.class));
                    }
                } else if (com.ifengyu.intercom.node.j.b().a()) {
                    this.s.startActivity(new Intent(this.s, SharkSettingActivity.class));
                }
            } else if (this.e0.d().i()) {
                LiteSettingHolderActivity.a(getContext(), r());
            }
        } else if (com.ifengyu.intercom.node.j.b().a()) {
            this.s.startActivity(new Intent(this.s, DolphinSettingActivity.class));
        }
    }

    private void L() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            this.locationShareIV.setClickable(false);
            BaseApp.a().postDelayed(new i(), 500L);
            int g2 = d0.g();
            if (g2 != 1) {
                if (g2 != 4) {
                    if (g2 == 5) {
                        if (d0.x()) {
                            g0.d(false);
                            this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                        } else {
                            g0.d(true);
                            this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                        }
                    }
                } else if (d0.G()) {
                    com.ifengyu.intercom.i.h0.b(false);
                    this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                } else {
                    com.ifengyu.intercom.i.h0.b(true);
                    this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                }
            } else if (d0.Z()) {
                com.ifengyu.intercom.node.e.d().b(0);
                this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                d0.f(false);
            } else {
                com.ifengyu.intercom.node.e.d().b(1);
                this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                d0.f(true);
            }
            ((MainActivity) getActivity()).a(false, false, k0.c(R.string.please_wait), R.drawable.load_spinner);
        } else if (d0.g() != 1) {
        } else {
            if (d0.Z()) {
                this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                d0.f(false);
                getActivity().stopService(new Intent(getActivity(), ShareLocationService.class));
                return;
            }
            c0.a((CharSequence) k0.c(R.string.current_device_not_connected), false);
        }
    }

    public static MapFragment newInstance() {
        z.c("MapFragment", "newInstance");
        return new MapFragment();
    }

    private void w() {
        if (this.trackRecordingCompressCanHideLayout.getVisibility() == 0) {
            this.trackRecordingCompressCanHideLayout.setVisibility(8);
            this.gpsNoAccuracyPrompt.setVisibility(8);
            this.trackRecordingCompressDistanceLayout.setVisibility(0);
            this.trackRecordingCompressSpeedLayout.setVisibility(0);
            this.trackRecordingCompressBtn.setImageResource(R.drawable.trail_home_down);
            return;
        }
        this.trackRecordingCompressCanHideLayout.setVisibility(0);
        this.gpsNoAccuracyPrompt.setVisibility(0);
        this.trackRecordingCompressDistanceLayout.setVisibility(8);
        this.trackRecordingCompressSpeedLayout.setVisibility(8);
        this.trackRecordingCompressBtn.setImageResource(R.drawable.trail_home_down);
    }

    private void x() {
        if (this.mapTrackRecordPauseBtn.getText().equals(k0.c(R.string.common_pause))) {
            this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_carry_on));
            this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_continue_btn_bg));
            TrackRecordService trackRecordService = this.o;
            if (trackRecordService != null) {
                trackRecordService.c();
            }
        } else if (!((LocationManager) getActivity().getSystemService("location")).isProviderEnabled("gps")) {
            c0.a((CharSequence) k0.c(R.string.toast_please_start_gps), true);
            Intent intent = new Intent();
            intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
            intent.setFlags(268435456);
            startActivity(intent);
        } else {
            this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_pause));
            this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
            if (this.p) {
                this.p = false;
                if (this.L) {
                    this.t.a(this.q);
                } else {
                    this.u.a(this.q);
                }
            }
            TrackRecordService trackRecordService2 = this.o;
            if (trackRecordService2 != null) {
                trackRecordService2.a();
            }
        }
    }

    private void y() {
        z.c("MapFragment", "handleTrackRecordWhenStartUp");
        long m2 = d0.m();
        if (m2 > 0) {
            com.ifengyu.intercom.greendao.bean.b load = MiTalkiApp.b().g().d().load(Long.valueOf(m2));
            this.q = load;
            if (load == null) {
                return;
            }
            if (c0.b(getActivity(), TrackRecordService.class.getName())) {
                getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.P, 1);
                this.trackRecordingDataLayout.setVisibility(0);
                this.mapTrackRecordBtn.setVisibility(8);
                this.g = true;
                Integer r2 = this.q.r();
                if (r2 == null) {
                    r2 = 0;
                }
                SpannableString spannableString = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", Integer.valueOf(r2.intValue() / 3600), Integer.valueOf((r2.intValue() % 3600) / 60), Integer.valueOf(r2.intValue() % 60)));
                spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
                this.mapTrackRecordTiming.setText(spannableString);
                Integer q2 = this.q.q();
                if (q2 == null) {
                    q2 = 0;
                }
                if (q2.intValue() < 1000) {
                    this.mapTrackRecordDistance.setText(String.valueOf(q2));
                    this.mapTrackRecordDistance.append(this.n);
                    this.mapTrackRecordCompressDistance.setText(String.valueOf(q2));
                    this.mapTrackRecordCompressDistance.append(this.n);
                } else {
                    this.mapTrackRecordDistance.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(q2.intValue() / 1000.0f)));
                    this.mapTrackRecordDistance.append(this.l);
                    this.mapTrackRecordCompressDistance.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(q2.intValue() / 1000.0f)));
                    this.mapTrackRecordCompressDistance.append(this.l);
                }
                this.mapTrackRecordSpeed.setText("0.0");
                this.mapTrackRecordSpeed.append(this.m);
                this.mapTrackRecordCompressSpeed.setText("0.0");
                this.mapTrackRecordCompressSpeed.append(this.m);
                if (this.q.l().booleanValue()) {
                    this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_carry_on));
                    this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_continue_btn_bg));
                } else {
                    this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_pause));
                    this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
                }
                if (this.L) {
                    this.t.a(this.q);
                } else {
                    this.u.a(this.q);
                }
            } else if (!this.q.m().booleanValue()) {
                z.c("MapFragment", "track not be saved,so load track info and start TrackRecordService");
                this.p = true;
                this.trackRecordingDataLayout.setVisibility(0);
                this.mapTrackRecordBtn.setVisibility(8);
                this.g = true;
                Integer r3 = this.q.r();
                if (r3 == null) {
                    r3 = 0;
                }
                SpannableString spannableString2 = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", Integer.valueOf(r3.intValue() / 3600), Integer.valueOf((r3.intValue() % 3600) / 60), Integer.valueOf(r3.intValue() % 60)));
                spannableString2.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString2.length(), 17);
                this.mapTrackRecordTiming.setText(spannableString2);
                Integer q3 = this.q.q();
                if (q3 == null) {
                    q3 = 0;
                }
                if (q3.intValue() < 1000) {
                    this.mapTrackRecordDistance.setText(String.valueOf(q3));
                    this.mapTrackRecordDistance.append(this.n);
                    this.mapTrackRecordCompressDistance.setText(String.valueOf(q3));
                    this.mapTrackRecordCompressDistance.append(this.n);
                } else {
                    this.mapTrackRecordDistance.setText(String.format("%.1f", Float.valueOf(q3.intValue() / 1000.0f)));
                    this.mapTrackRecordDistance.append(this.l);
                    this.mapTrackRecordCompressDistance.setText(String.format("%.1f", Float.valueOf(q3.intValue() / 1000.0f)));
                    this.mapTrackRecordCompressDistance.append(this.l);
                }
                this.mapTrackRecordSpeed.setText("0.0");
                this.mapTrackRecordSpeed.append(this.m);
                this.mapTrackRecordCompressSpeed.setText("0.0");
                this.mapTrackRecordCompressSpeed.append(this.m);
                this.mapTrackRecordPauseBtn.setText(k0.c(R.string.common_carry_on));
                this.mapTrackRecordPauseBtn.setBackground(k0.e().getDrawable(R.drawable.track_record_continue_btn_bg));
                List<com.ifengyu.intercom.greendao.bean.c> list = MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(this.q.v()), new WhereCondition[0]).orderDesc(TrackPointDao.Properties.CurrentTime).limit(1).list();
                if (list.size() == 1) {
                    list.get(0).a(true);
                    MiTalkiApp.b().g().e().insertOrReplace(list.get(0));
                }
                Intent intent = new Intent(getActivity(), TrackRecordService.class);
                intent.putExtra("is_load_last_not_saved_track", true);
                intent.putExtra("last_not_saved_track_primary_key_id", d0.m());
                getActivity().startService(intent);
                getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.P, 1);
            }
        }
    }

    private void z() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
        this.r = translateAnimation;
        translateAnimation.setDuration(500L);
        this.r.setAnimationListener(new f());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        z.c("MapFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
        if (this.L) {
            this.t.a(bundle);
        }
        z();
        y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        z.c("MapFragment", "onAttach");
        super.onAttach(context);
        this.s = (MainActivity) getActivity();
    }

    @Subscribe
    public void onBeanUserLocationChanged(BeanUserLocation beanUserLocation) {
        if (this.L) {
            this.t.a(beanUserLocation);
        } else {
            this.u.a(beanUserLocation, true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = true;
        switch (view.getId()) {
            case R.id.bottom_channel_display_layout /* 2131296385 */:
                int g2 = d0.g();
                if (g2 == 4) {
                    switch (this.N) {
                        case 0:
                            if (this.Q != null) {
                                FragmentActivity activity = getActivity();
                                SealSharkChannel sealSharkChannel = this.Q;
                                if (this.R != 1) {
                                    z = false;
                                }
                                SharkChannelSettingActivity.a(activity, sealSharkChannel, z);
                                return;
                            }
                            return;
                        case 1:
                        case 2:
                            c0.a((CharSequence) k0.c(R.string.sos_mode_can_not_setting), false);
                            return;
                        case 3:
                        case 4:
                            c0.a((CharSequence) k0.c(R.string.scan_mode_can_not_setting), false);
                            return;
                        case 5:
                        case 6:
                            c0.a((CharSequence) k0.c(R.string.team_mode_can_not_setting), false);
                            return;
                        default:
                            return;
                    }
                } else if (g2 == 5 && this.Q != null) {
                    SealChannelSettingActivity.a(getActivity(), this.Q, true);
                    return;
                } else {
                    return;
                }
            case R.id.map_icon_location_share_iv /* 2131296857 */:
                L();
                return;
            case R.id.map_icon_my_locate_iv /* 2131296858 */:
                F();
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296859 */:
                if (this.L) {
                    this.t.n();
                    return;
                } else {
                    this.u.m();
                    return;
                }
            case R.id.map_icon_zoom_small_iv /* 2131296861 */:
                if (this.L) {
                    this.t.o();
                    return;
                } else {
                    this.u.n();
                    return;
                }
            case R.id.map_kit_altitude_btn_layout /* 2131296862 */:
                this.k.dismiss();
                Intent intent = new Intent(this.s, this.L ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                boolean z2 = this.L;
                intent.putExtra("map_kit_measure_what", "measure_altitude");
                if (this.L) {
                    intent.putExtra("gaode_map_cameraposition", this.t.b());
                } else {
                    MapCurrentStatus b2 = this.u.b();
                    intent.putExtra("osm_map_latitude", b2.currentCenterLatitude);
                    intent.putExtra("osm_map_longitude", b2.currentCenterLongitude);
                    intent.putExtra("osm_map_zoom_level", b2.currentZoomLevel);
                }
                startActivity(intent);
                return;
            case R.id.map_kit_iv /* 2131296863 */:
                I();
                return;
            case R.id.map_kit_latandlong_btn_layout /* 2131296864 */:
                this.k.dismiss();
                Intent intent2 = new Intent(this.s, this.L ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                boolean z3 = this.L;
                intent2.putExtra("map_kit_measure_what", "measure_latLong");
                if (this.L) {
                    intent2.putExtra("gaode_map_cameraposition", this.t.b());
                    Location d2 = this.t.d();
                    intent2.putExtra("gaode_my_location_longitude", d2.getLongitude());
                    intent2.putExtra("gaode_my_location_latitude", d2.getLatitude());
                } else {
                    MapCurrentStatus b3 = this.u.b();
                    intent2.putExtra("osm_map_latitude", b3.currentCenterLatitude);
                    intent2.putExtra("osm_map_longitude", b3.currentCenterLongitude);
                    intent2.putExtra("osm_map_zoom_level", b3.currentZoomLevel);
                }
                startActivity(intent2);
                return;
            case R.id.map_kit_ranging_btn_layout /* 2131296869 */:
                this.k.dismiss();
                Intent intent3 = new Intent(this.s, this.L ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                boolean z4 = this.L;
                intent3.putExtra("map_kit_measure_what", "measure_distance");
                if (this.L) {
                    intent3.putExtra("gaode_map_cameraposition", this.t.b());
                } else {
                    MapCurrentStatus b4 = this.u.b();
                    intent3.putExtra("osm_map_latitude", b4.currentCenterLatitude);
                    intent3.putExtra("osm_map_longitude", b4.currentCenterLongitude);
                    intent3.putExtra("osm_map_zoom_level", b4.currentZoomLevel);
                }
                startActivity(intent3);
                return;
            case R.id.map_switch_mode_gaode_normal /* 2131296871 */:
                p();
                return;
            case R.id.map_switch_mode_gaode_satellite /* 2131296873 */:
                q();
                return;
            case R.id.map_switch_mode_satellitic /* 2131296875 */:
                t();
                return;
            case R.id.map_switch_mode_standard /* 2131296877 */:
                s();
                return;
            case R.id.map_switch_type_btn /* 2131296879 */:
                J();
                return;
            case R.id.map_track_record_btn /* 2131296884 */:
                v();
                return;
            case R.id.map_track_record_close_btn /* 2131296885 */:
                TrackRecordService trackRecordService = this.o;
                if (trackRecordService != null) {
                    trackRecordService.b();
                    return;
                }
                return;
            case R.id.map_track_record_pause_btn /* 2131296886 */:
                x();
                return;
            case R.id.my_device_manager /* 2131296971 */:
                this.s.startActivity(new Intent(this.s, SelectDeviceActivity.class));
                return;
            case R.id.title_bar_right /* 2131297306 */:
                K();
                return;
            case R.id.top_ble_is_unconnect_close /* 2131297319 */:
                this.K = true;
                this.bleIsUnConnectLayout.startAnimation(this.r);
                this.bleReconnectImmediatelyBtn.setClickable(false);
                this.bleUnConnectCloseBtn.setClickable(false);
                return;
            case R.id.top_have_mcu_update_close /* 2131297322 */:
                this.mcuHaveUpdateLayout.startAnimation(this.r);
                this.mcuHaveUpdateCloseBtn.setClickable(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                this.H = false;
                return;
            case R.id.top_mcu_update_immediately /* 2131297327 */:
                this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
                d0.i(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                int g3 = d0.g();
                if (g3 == 1) {
                    Intent intent4 = new Intent(this.s, UpdateMcuActivity.class);
                    int k2 = d0.k();
                    String str = UpdateManager.d().a().get("versionCode");
                    intent4.putExtra("update_info_message", k2 >= 65542 ? "update_mcu_ble" : "update_mcu");
                    intent4.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt(str));
                    intent4.setAction("com.ifengyu.intercom.FORM_MAIN");
                    this.s.startActivity(intent4);
                } else if (g3 == 36611) {
                    LiteUpgradeActivity.start(getContext());
                } else if (g3 == 4) {
                    Intent intent5 = new Intent(this.s, SealSharkMcuUpdateActivity.class);
                    intent5.putExtra("mcu_update_device_type", "shark");
                    intent5.putExtra("mcu_have_update", true);
                    intent5.putExtra("mcu_update_info", this.M);
                    intent5.setAction("mcu_update_action_from_main");
                    startActivity(intent5);
                } else if (g3 == 5) {
                    Intent intent6 = new Intent(this.s, SealSharkMcuUpdateActivity.class);
                    intent6.putExtra("mcu_update_device_type", "seal");
                    intent6.putExtra("mcu_have_update", true);
                    intent6.putExtra("mcu_update_info", this.M);
                    intent6.setAction("mcu_update_action_from_main");
                    startActivity(intent6);
                }
                this.mcuHaveUpdateLayout.setVisibility(8);
                return;
            case R.id.top_reconnect_immediately /* 2131297329 */:
                this.bleReconnectImmediatelyBtn.setClickable(false);
                Intent intent7 = new Intent(this.s, ConnectDeviceActivity.class);
                intent7.putExtra("device_address", this.s.l());
                intent7.putExtra(ai.J, this.s.m());
                intent7.putExtra(ai.ai, this.s.n());
                intent7.setAction("com.ifengyu.intercom.RECONNECT_DEVICE");
                this.s.startActivity(intent7);
                this.bleIsUnConnectLayout.setVisibility(8);
                return;
            case R.id.track_record_compress_btn /* 2131297349 */:
                w();
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        z.c("MapFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        z.c("MapFragment", "onCreateView");
        if (this.D == null) {
            this.D = layoutInflater.inflate(R.layout.fragment_map, viewGroup, false);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.D.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.D);
        }
        ButterKnife.bind(this, this.D);
        D();
        B();
        MapsInitializer.sdcardDir = c0.a(this.s);
        C();
        E();
        A();
        return this.D;
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroy() {
        z.c("MapFragment", "onDestroy");
        super.onDestroy();
        this.O.removeCallbacksAndMessages(null);
        TrackRecordService trackRecordService = this.o;
        if (trackRecordService != null) {
            trackRecordService.d();
            this.s.unbindService(this.P);
            this.o = null;
        }
        if (this.L) {
            this.t.e();
            this.t = null;
        } else {
            this.u.d();
            this.u = null;
        }
        com.ifengyu.intercom.lite.utils.j.a().b(this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.mcuHaveUpdateLayout.setVisibility(8);
        if (this.L) {
            this.t.f();
        } else {
            this.u.e();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        z.c("MapFragment", "onResume");
        super.onResume();
        if (this.L) {
            this.t.g();
        } else {
            this.u.f();
        }
        int g2 = d0.g();
        if (g2 == 36611) {
            if (this.e0.d().i()) {
                this.O.sendEmptyMessage(5);
                this.S.setVisibility(0);
                this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
                this.titleBarRight.setVisibility(0);
                this.bleIsUnConnectLayout.clearAnimation();
                this.bleIsUnConnectLayout.setVisibility(8);
                this.bottomChannelLayout.setVisibility(8);
                this.e0.l();
                this.e0.m();
                this.e0.n();
            }
        } else if (com.ifengyu.intercom.f.a.b(g2)) {
            if (com.ifengyu.intercom.node.j.b().a()) {
                this.O.sendEmptyMessage(5);
                this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
                this.bleIsUnConnectLayout.clearAnimation();
                this.bleIsUnConnectLayout.setVisibility(8);
                McuUpdateInfoModel mcuUpdateInfoModel = this.M;
                if (mcuUpdateInfoModel != null) {
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int g3 = d0.g();
                    if (g3 != 4) {
                        if (g3 == 5 && this.mcuHaveUpdateLayout.getVisibility() == 0 && d0.D() >= parseInt) {
                            this.mcuHaveUpdateLayout.clearAnimation();
                            this.mcuHaveUpdateLayout.setVisibility(8);
                        }
                    } else if (this.mcuHaveUpdateLayout.getVisibility() == 0 && d0.K() >= parseInt) {
                        this.mcuHaveUpdateLayout.clearAnimation();
                        this.mcuHaveUpdateLayout.setVisibility(8);
                    }
                }
            } else {
                this.O.sendEmptyMessage(6);
            }
        }
        l();
        if (!d0.c0() && this.G && this.F && this.s.x() == 0) {
            o();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.L) {
            this.t.b(bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        z.c("MapFragment", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
        UpdateManager.d().a(this);
        G();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        z.c("MapFragment", "onStop");
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        UpdateManager.d().b();
        if (d0.g() == 1 && !d0.Z() && ShareLocationService.a() != null) {
            this.s.stopService(new Intent(this.s, ShareLocationService.class));
        }
        this.F = true;
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (!d0.c0()) {
            this.myDeviceManager.getViewTreeObserver().addOnGlobalLayoutListener(new w());
        }
    }

    @Subscribe
    public void receiveDolphinParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        z.c("MapFragment", "receive dolphin ParamResponse");
        if (paramUpdate.hasDevNameGBK()) {
            String p2 = d0.p();
            com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
            ConnectionConfiguration a2 = c2.a(p2);
            if (a2 != null) {
                a2.b(d0.q());
                a2.a(true);
                c2.b(a2);
            }
        }
        if (paramUpdate.hasShareLoc()) {
            if (paramUpdate.getShareLoc() != 0) {
                this.O.sendEmptyMessage(3);
            } else {
                this.O.sendEmptyMessage(4);
            }
        }
        if (paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.hasDeviceId()) {
            a(1, paramUpdate.getVersionMCU());
            n();
        }
        if (paramUpdate.hasResult() && paramUpdate.hasActivateChannel()) {
            k0.b(((MainActivity) getActivity()).p);
            if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS && paramUpdate.getActivateChannel() == 1) {
                u();
            } else {
                ((MainActivity) getActivity()).p.run();
            }
        }
        if (!MiTalkiApp.b().k() && d0.h() != null && d0.l() > 0) {
            com.ifengyu.intercom.g.a.a("dolphin", d0.h(), d0.l());
            MiTalkiApp.b().a(true);
        }
    }

    @Subscribe
    public void receiveSealChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        z.c("MapFragment", "receiveChannelStateOperateResp");
        getActivity().runOnUiThread(new d(sEAL_ChannelStateOperate));
        if (!MiTalkiApp.b().k() && d0.u() != null && d0.D() > 0) {
            g0.i();
            com.ifengyu.intercom.g.a.a("seal", d0.u(), d0.D());
            MiTalkiApp.b().a(true);
        }
    }

    @Subscribe
    public void receiveSealParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        z.c("MapFragment", "receive seal ParamResponse");
        if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                String p2 = d0.p();
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                ConnectionConfiguration a2 = c2.a(p2);
                a2.b(d0.q());
                a2.a(true);
                c2.b(a2);
            }
            getActivity().runOnUiThread(new b(sEAL_DeviceParam));
            a(5, sEAL_DeviceParam.getVerSoft());
            n();
            c(5);
        } else if (sEAL_DeviceParam.getResult() != SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
        } else {
            if (sEAL_DeviceParam.hasShareLoc()) {
                this.O.sendEmptyMessage(d0.x() ? 3 : 4);
            } else if (sEAL_DeviceParam.hasActivate()) {
                k0.b(((MainActivity) getActivity()).p);
                if (!sEAL_DeviceParam.hasActivate() || sEAL_DeviceParam.getActivate() != 1) {
                    ((MainActivity) getActivity()).p.run();
                } else {
                    u();
                }
            }
        }
    }

    @Subscribe
    public void receiveSharkChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        z.c("MapFragment", "receiveChannelStateOperateResp");
        getActivity().runOnUiThread(new e(sHARK_ChannelStateOperate));
        if (!MiTalkiApp.b().k() && d0.F() != null && d0.K() > 0) {
            com.ifengyu.intercom.i.h0.e();
            com.ifengyu.intercom.g.a.a("shark", d0.F(), d0.K());
            MiTalkiApp.b().a(true);
        }
    }

    @Subscribe
    public void receiveSharkParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        z.c("MapFragment", "receive shark ParamResponse");
        int i2 = 4;
        if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                String p2 = d0.p();
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                ConnectionConfiguration a2 = c2.a(p2);
                a2.b(d0.q());
                a2.a(true);
                c2.b(a2);
            }
            getActivity().runOnUiThread(new c());
            a(4, sHARK_DeviceParam.getVerSoft());
            n();
            c(4);
        } else if (sHARK_DeviceParam.getResult() != SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
        } else {
            if (sHARK_DeviceParam.hasShareLoc()) {
                x xVar = this.O;
                if (d0.G()) {
                    i2 = 3;
                }
                xVar.sendEmptyMessage(i2);
            } else if (sHARK_DeviceParam.hasActivate()) {
                k0.b(((MainActivity) getActivity()).p);
                if (!sHARK_DeviceParam.hasActivate() || sHARK_DeviceParam.getActivate() != 1) {
                    ((MainActivity) getActivity()).p.run();
                } else {
                    u();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (MiTalkiApp.b().f() instanceof MainActivity) {
            String a2 = com.ifengyu.intercom.f.a.a(d0.g());
            if (!TextUtils.isEmpty(a2)) {
                com.ifengyu.intercom.g.a.b(a2, new m(a2));
            }
        }
    }

    private void n() {
        if (this.I) {
            this.I = false;
            if (!d0.U()) {
                BaseApp.a().post(new j());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (d0.c0()) {
            return;
        }
        if (com.ifengyu.intercom.node.j.b().a() || this.e0.d().i()) {
            b(true);
            d0.h0();
        } else if (!d0.g0()) {
            b(false);
            d0.i0();
        }
    }

    private void p() {
        b(1);
        if (this.L) {
            this.t.l();
        } else {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.b().b(false);
            this.E = false;
            MapCurrentStatus b2 = this.u.b();
            if (this.mapContainer.getChildCount() == 1) {
                TextureMapView textureMapView = new TextureMapView(MiTalkiApp.b());
                this.v = textureMapView;
                this.mapContainer.addView(textureMapView, new FrameLayout.LayoutParams(-1, -1));
                com.ifengyu.intercom.ui.map.a aVar = new com.ifengyu.intercom.ui.map.a(this.s, this.v, this);
                this.t = aVar;
                aVar.a(1, false);
                this.t.a((Bundle) null);
            } else {
                this.v.setVisibility(0);
                this.mapContainer.removeViewAt(1);
                this.u.e();
                this.u.d();
                this.u = null;
                this.t.l();
            }
            this.t.g();
            this.t.a(b2);
            this.L = true;
            this.t.i();
            if (this.g) {
                this.t.k();
                this.t.a(MiTalkiApp.b().g().d().load(Long.valueOf(d0.m())));
            } else {
                this.t.k();
            }
        }
        d0.c(1);
        this.j.dismiss();
    }

    private void q() {
        b(2);
        if (this.L) {
            this.t.m();
        } else {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.b().b(false);
            this.E = false;
            MapCurrentStatus b2 = this.u.b();
            if (this.mapContainer.getChildCount() == 1) {
                TextureMapView textureMapView = new TextureMapView(MiTalkiApp.b());
                this.v = textureMapView;
                this.mapContainer.addView(textureMapView, new FrameLayout.LayoutParams(-1, -1));
                com.ifengyu.intercom.ui.map.a aVar = new com.ifengyu.intercom.ui.map.a(this.s, this.v, this);
                this.t = aVar;
                aVar.a(2, false);
                this.t.a((Bundle) null);
            } else {
                this.v.setVisibility(0);
                this.mapContainer.removeViewAt(1);
                this.u.e();
                this.u.d();
                this.u = null;
                this.t.m();
            }
            this.t.g();
            this.t.a(b2);
            this.L = true;
            this.t.i();
            if (this.g) {
                this.t.k();
                this.t.a(MiTalkiApp.b().g().d().load(Long.valueOf(d0.m())));
            } else {
                this.t.k();
            }
        }
        d0.c(2);
        this.j.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelModel r() {
        return this.e0.g().getValue();
    }

    private void s() {
        b(3);
        if (this.L) {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.b().b(false);
            this.E = false;
            MapCurrentStatus c2 = this.t.c();
            if (this.mapContainer.getChildCount() == 1) {
                this.w = new MapView(MiTalkiApp.b());
                this.v.setVisibility(4);
                this.mapContainer.addView(this.w, new FrameLayout.LayoutParams(-1, -1));
                com.ifengyu.intercom.ui.map.b bVar = new com.ifengyu.intercom.ui.map.b(getActivity(), this.w, this);
                this.u = bVar;
                bVar.a(MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP, false);
            } else {
                this.mapContainer.removeViewAt(1);
                this.t.f();
                this.t.e();
                this.t = null;
                this.u.l();
            }
            this.u.f();
            this.u.a(c2);
            this.L = false;
            this.u.h();
            if (this.g) {
                this.u.j();
                this.u.a(MiTalkiApp.b().g().d().load(Long.valueOf(d0.m())));
            } else {
                this.u.j();
            }
        } else {
            this.u.l();
        }
        d0.c(3);
        this.j.dismiss();
    }

    private void t() {
        b(4);
        if (this.L) {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.b().b(false);
            this.E = false;
            MapCurrentStatus c2 = this.t.c();
            if (this.mapContainer.getChildCount() == 1) {
                this.w = new MapView(MiTalkiApp.b());
                this.v.setVisibility(4);
                this.mapContainer.addView(this.w, new FrameLayout.LayoutParams(-1, -1));
                com.ifengyu.intercom.ui.map.b bVar = new com.ifengyu.intercom.ui.map.b(getActivity(), this.w, this);
                this.u = bVar;
                bVar.a(MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP, false);
            } else {
                this.mapContainer.removeViewAt(1);
                this.t.f();
                this.t.e();
                this.t = null;
                this.u.k();
            }
            this.u.f();
            this.u.a(c2);
            this.L = false;
            this.u.h();
            if (this.g) {
                this.u.j();
                this.u.a(MiTalkiApp.b().g().d().load(Long.valueOf(d0.m())));
            } else {
                this.u.j();
            }
        } else {
            this.u.k();
        }
        d0.c(4);
        this.j.dismiss();
    }

    private void u() {
        BaseApp.a().post(new l());
    }

    private void v() {
        if (getActivity() != null && (getActivity() instanceof MainActivity) && ((MainActivity) getActivity()).w()) {
            if (!((LocationManager) getActivity().getSystemService("location")).isProviderEnabled("gps")) {
                com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
                eVar.d(R.string.toast_please_start_gps);
                eVar.a(0, R.string.common_cancel, 2, i.f6457a);
                com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
                eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.h
                    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                    public final void a(b bVar, int i2) {
                        MapFragment.this.b(bVar, i2);
                    }
                });
                eVar2.a(R.style.DialogTheme2).show();
                return;
            }
            com.ifengyu.intercom.lite.c.b.e eVar3 = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar3.d(R.string.track_record_ask_start_record_track);
            eVar3.a(0, R.string.common_cancel, 2, d.f6452a);
            com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
            eVar4.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.g
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i2) {
                    MapFragment.this.a(bVar, i2);
                }
            });
            eVar4.a(R.style.DialogTheme2).show();
        }
    }

    public /* synthetic */ void e(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        TrackRecordService trackRecordService = this.o;
        if (trackRecordService != null) {
            trackRecordService.a(false, false);
        }
        bVar.dismiss();
    }

    public /* synthetic */ void f(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        LiteUpgradeActivity.start(getContext());
        bVar.dismiss();
    }

    public void l() {
        int g2 = d0.g();
        int i2 = R.drawable.home_icon_position_open;
        if (g2 == 1) {
            this.locationShareIV.setVisibility(0);
            ImageView imageView = this.locationShareIV;
            if (!d0.Z()) {
                i2 = R.drawable.home_icon_position;
            }
            imageView.setImageResource(i2);
        } else if (g2 == 36611) {
            this.locationShareIV.setVisibility(8);
        } else if (g2 == 4) {
            this.locationShareIV.setVisibility(0);
            ImageView imageView2 = this.locationShareIV;
            if (!d0.G()) {
                i2 = R.drawable.home_icon_position;
            }
            imageView2.setImageResource(i2);
        } else if (g2 == 5) {
            this.locationShareIV.setVisibility(0);
            ImageView imageView3 = this.locationShareIV;
            if (!d0.x()) {
                i2 = R.drawable.home_icon_position;
            }
            imageView3.setImageResource(i2);
        }
    }

    public /* synthetic */ void c(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        TrackRecordService trackRecordService = this.o;
        if (trackRecordService != null) {
            trackRecordService.a(true, false);
        }
        bVar.dismiss();
    }

    public /* synthetic */ void d(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        TrackRecordService trackRecordService = this.o;
        if (trackRecordService != null) {
            trackRecordService.a(false, true);
        }
        bVar.dismiss();
    }

    public void j() {
        this.O.sendEmptyMessage(5);
        this.V = true;
        this.H = true;
        this.I = true;
        if (MiTalkiApp.b().f() instanceof MainActivity) {
            G();
        }
    }

    public void k() {
        Message obtain = Message.obtain();
        obtain.what = 6;
        obtain.arg1 = 1;
        obtain.arg2 = 0;
        this.O.sendMessage(obtain);
    }

    private void b(boolean z) {
        int[] iArr = new int[2];
        this.myDeviceManager.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.titleBarRight.getLocationOnScreen(iArr2);
        int[] iArr3 = new int[2];
        this.locationShareIV.getLocationOnScreen(iArr3);
        this.zoomBigIV.getLocationOnScreen(new int[2]);
        Intent intent = new Intent(MiTalkiApp.b(), UserGuideActivity.class);
        intent.putExtra("isConnect", z);
        intent.putExtra("titleBarLeftBtnPoint", iArr);
        intent.putExtra("titleBarRightBtnPoint", iArr2);
        intent.putExtra("shareLocationBtnPoint", iArr3);
        startActivity(intent);
    }

    private void c(int i2) {
        if (i2 == 4) {
            com.ifengyu.intercom.i.h0.b();
        } else if (i2 == 5) {
            g0.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ChannelModel channelModel) {
        if (channelModel == null) {
            this.S.setVisibility(8);
            return;
        }
        this.S.setVisibility(0);
        this.X.setText(channelModel.getDisplaySeq());
        this.X.setTypeface(com.ifengyu.intercom.i.p.f5323a);
        if (!channelModel.isEmpty()) {
            this.d0.setVisibility(0);
            this.Z.setVisibility(0);
            this.c0.setVisibility(0);
            this.Y.setTextSize(0, com.qmuiteam.qmui.util.d.c(getContext(), 17));
            this.Y.setText(com.ifengyu.intercom.lite.utils.f.a(channelModel.getDisplayReceiveFreqWithTone()));
            this.Z.setText(com.ifengyu.intercom.lite.utils.f.a(channelModel.getDisplaySendFreqWithTone()));
            this.b0.setText(R.string.lite_receive);
            this.c0.setText(R.string.lite_emission);
            return;
        }
        this.d0.setVisibility(8);
        this.Z.setVisibility(8);
        this.c0.setVisibility(8);
        this.Y.setTextSize(0, com.qmuiteam.qmui.util.d.c(getContext(), 15));
        this.Y.setText(R.string.lite_empty_channel_title);
        this.b0.setText(R.string.lite_empty_channel_detail);
        com.ifengyu.intercom.lite.utils.h.a(com.ifengyu.intercom.i.p.f5325c, this.Y, this.Z);
    }

    public /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        Intent intent = new Intent();
        intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.setFlags(268435456);
        startActivity(intent);
        bVar.dismiss();
    }

    private void b(int i2) {
        if (i2 == 1) {
            this.x.setImageResource(R.drawable.map_gaode_standard_selected);
            this.z.setTextColor(getResources().getColor(R.color.select_color));
            this.y.setImageResource(R.drawable.map_gaode_satellite_unselected);
            this.A.setTextColor(getResources().getColor(R.color.black80));
            this.h.setImageResource(R.drawable.map_google_standard_unselected);
            this.B.setTextColor(getResources().getColor(R.color.black80));
            this.i.setImageResource(R.drawable.map_google_satellite_unselected);
            this.C.setTextColor(getResources().getColor(R.color.black80));
        } else if (i2 == 2) {
            this.x.setImageResource(R.drawable.map_gaode_standard_unselected);
            this.z.setTextColor(getResources().getColor(R.color.black80));
            this.y.setImageResource(R.drawable.map_gaode_satellite_selected);
            this.A.setTextColor(getResources().getColor(R.color.select_color));
            this.h.setImageResource(R.drawable.map_google_standard_unselected);
            this.B.setTextColor(getResources().getColor(R.color.black80));
            this.i.setImageResource(R.drawable.map_google_satellite_unselected);
            this.C.setTextColor(getResources().getColor(R.color.black80));
        } else if (i2 == 3) {
            this.x.setImageResource(R.drawable.map_gaode_standard_unselected);
            this.z.setTextColor(getResources().getColor(R.color.black80));
            this.y.setImageResource(R.drawable.map_gaode_satellite_unselected);
            this.A.setTextColor(getResources().getColor(R.color.black80));
            this.h.setImageResource(R.drawable.map_google_standard_selected);
            this.B.setTextColor(getResources().getColor(R.color.select_color));
            this.i.setImageResource(R.drawable.map_google_satellite_unselected);
            this.C.setTextColor(getResources().getColor(R.color.black80));
        } else if (i2 == 4) {
            this.x.setImageResource(R.drawable.map_gaode_standard_unselected);
            this.z.setTextColor(getResources().getColor(R.color.black80));
            this.y.setImageResource(R.drawable.map_gaode_satellite_unselected);
            this.A.setTextColor(getResources().getColor(R.color.black80));
            this.h.setImageResource(R.drawable.map_google_standard_unselected);
            this.B.setTextColor(getResources().getColor(R.color.black80));
            this.i.setImageResource(R.drawable.map_google_satellite_selected);
            this.C.setTextColor(getResources().getColor(R.color.select_color));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(UpgradeInfoDTO upgradeInfoDTO) {
        if (this.U == null) {
            com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar.c(R.string.firmware_update);
            com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
            eVar2.a(false);
            com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
            eVar3.b(false);
            com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
            eVar4.a((CharSequence) upgradeInfoDTO.a());
            eVar4.a(0, R.string.lite_upgrade_btn_start_update, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.b
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
                    MapFragment.this.f(bVar, i2);
                }
            });
            this.U = eVar4.a(R.style.DialogTheme4);
        }
        if (!this.U.isShowing()) {
            this.U.show();
        }
    }

    @Override // com.ifengyu.intercom.network.a
    public void a(UpdateManager.CHECK_CONDITION check_condition, boolean z) {
        if (check_condition == UpdateManager.CHECK_CONDITION.MCU && !z) {
            this.O.sendEmptyMessage(2);
            if (d0.f5308a == 1) {
                c0.a((CharSequence) k0.c(R.string.please_update_your_firmware), true);
            }
        } else if (c0.a()) {
            if (!d0.i().equals("mcu_language_type_english")) {
                this.O.sendEmptyMessage(2);
            }
        } else if (c0.b() && !d0.i().equals("mcu_language_type_chinese")) {
            this.O.sendEmptyMessage(2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private SpannableString b(String str) {
        char c2;
        String str2;
        switch (str.hashCode()) {
            case 3322030:
                if (str.equals("lite")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3526141:
                if (str.equals("seal")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 109400037:
                if (str.equals("shark")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1837070814:
                if (str.equals("dolphin")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            str2 = k0.c(R.string.device_dolphin_name);
        } else if (c2 == 1) {
            str2 = k0.c(R.string.device_shark_name);
        } else if (c2 != 2) {
            str2 = c2 != 3 ? "" : k0.c(R.string.device_lite_name);
        } else {
            str2 = k0.c(R.string.device_seal_name);
        }
        String string = getString(R.string.user_protocol);
        String string2 = getString(R.string.user_protocol_updated_suffix);
        SpannableString spannableString = new SpannableString(str2 + string + string2);
        o oVar = new o(androidx.core.content.b.a(getContext(), (int) R.color.lite_colorAccent), androidx.core.content.b.a(getContext(), (int) R.color.lite_colorAccent50), 0, 0);
        oVar.b(true);
        spannableString.setSpan(oVar, str2.length(), str2.length() + string.length(), 17);
        return spannableString;
    }

    @Override // com.ifengyu.intercom.ui.service.TrackRecordService.c
    public void a(ArrayList<ArrayList<LocationBean>> arrayList, boolean z) {
        if (this.L) {
            this.t.a(this.p, arrayList, z);
        } else {
            this.u.a(this.p, arrayList, z);
        }
    }

    @Override // com.ifengyu.intercom.ui.service.TrackRecordService.c
    public void a(long j2, String str, boolean z, boolean z2) {
        if (z) {
            com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar.d(R.string.track_record_ask_not_record_any_data);
            eVar.a(0, R.string.common_cancel, 2, e.f6453a);
            com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
            eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.j
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i2) {
                    MapFragment.this.c(bVar, i2);
                }
            });
            eVar2.a(R.style.DialogTheme2).show();
        } else if (z2) {
            com.ifengyu.intercom.lite.c.b.e eVar3 = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar3.d(R.string.track_record_ask_not_record_any_data);
            eVar3.a(0, R.string.common_cancel, 2, f.f6454a);
            com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
            eVar4.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.k
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i2) {
                    MapFragment.this.d(bVar, i2);
                }
            });
            eVar4.a(R.style.DialogTheme2).show();
        } else {
            com.ifengyu.intercom.lite.c.b.e eVar5 = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar5.d(R.string.track_record_ask_finish_current_record);
            eVar5.a(0, R.string.common_cancel, 2, c.f6451a);
            com.ifengyu.intercom.lite.c.b.e eVar6 = eVar5;
            eVar6.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.l
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i2) {
                    MapFragment.this.e(bVar, i2);
                }
            });
            eVar6.a(R.style.DialogTheme2).show();
        }
    }

    @Override // com.ifengyu.intercom.ui.service.TrackRecordService.c
    public void a(long j2, boolean z) {
        this.g = false;
        this.trackRecordingDataLayout.setVisibility(8);
        this.mapTrackRecordBtn.setVisibility(0);
        if (this.L) {
            this.t.k();
        } else {
            this.u.j();
        }
        if (!z) {
            getActivity().unbindService(this.P);
            this.o = null;
            getActivity().stopService(new Intent(getActivity(), TrackRecordService.class));
            return;
        }
        Intent intent = new Intent(getActivity(), TrackInfoDetailActivity.class);
        intent.putExtra("trackInfoPrimaryKeyId", j2);
        intent.putExtra("track_info_for_what", "for_preview_track");
        startActivity(intent);
        getActivity().unbindService(this.P);
        this.o = null;
        getActivity().stopService(new Intent(getActivity(), TrackRecordService.class));
    }

    @Override // com.ifengyu.intercom.ui.service.TrackRecordService.c
    public void a(int i2, int i3, int i4, float f2) {
        if (getActivity() != null) {
            getActivity().runOnUiThread(new a(i2, i3, i4, f2));
        }
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        H();
        bVar.dismiss();
    }

    private void a(int i2, int i3) {
        if (this.H) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.arg1 = i2;
            obtain.arg2 = i3;
            this.O.sendMessage(obtain);
        }
    }

    public void a(int i2) {
        this.myLocateIV.setImageResource(i2);
        this.E = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final int i2) {
        if (this.W == null) {
            com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
            eVar.c(R.string.user_protocol_updated);
            com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
            eVar2.a(b(str));
            eVar2.a(false);
            com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
            eVar3.b(false);
            com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
            eVar4.a(0, R.string.common_cancel, 2, new n());
            com.ifengyu.intercom.lite.c.b.e eVar5 = eVar4;
            eVar5.a(0, R.string.agree_and_continue, 1, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.fragment.a
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i3) {
                    MapFragment.this.a(str, i2, bVar, i3);
                }
            });
            this.W = eVar5.a(R.style.DialogTheme2);
        }
        if (!this.W.isShowing()) {
            this.W.show();
        }
    }

    public /* synthetic */ void a(String str, int i2, com.qmuiteam.qmui.widget.dialog.b bVar, int i3) {
        bVar.dismiss();
        this.W = null;
        l0.a(str);
        d0.a(str, i2);
    }
}
