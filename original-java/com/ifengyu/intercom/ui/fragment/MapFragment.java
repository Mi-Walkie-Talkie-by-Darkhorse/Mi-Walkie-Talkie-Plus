package com.ifengyu.intercom.ui.fragment;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.TextureMapView;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.g;
import com.ifengyu.intercom.a.b.h;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.greendao.bean.c;
import com.ifengyu.intercom.greendao.dao.TrackPointDao.Properties;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity;
import com.ifengyu.intercom.ui.activity.OsmMapToolOperateActivity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SelectDeviceActivity;
import com.ifengyu.intercom.ui.activity.TrackInfoDetailActivity;
import com.ifengyu.intercom.ui.activity.UserGuideActivity;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.ifengyu.intercom.ui.map.MapDataProvider.MAP_TYPE;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.service.TrackRecordService;
import com.ifengyu.intercom.ui.service.TrackRecordService.b;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.seal.SealSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkChannelSettingActivity;
import com.ifengyu.intercom.ui.setting.shark.SharkSettingActivity;
import com.ifengyu.intercom.ui.widget.view.ShadowLayout;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.UpdateMcuActivity;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.greenrobot.greendao.c.i;
import org.osmdroid.views.MapView;

public class MapFragment extends BaseFragment implements OnClickListener, com.ifengyu.intercom.network.a, com.ifengyu.intercom.ui.service.TrackRecordService.a {
    private boolean A;
    /* access modifiers changed from: private */
    public boolean B;
    private boolean C = true;
    private boolean D = false;
    /* access modifiers changed from: private */
    public boolean E;
    /* access modifiers changed from: private */
    public boolean F;
    /* access modifiers changed from: private */
    public boolean G;
    /* access modifiers changed from: private */
    public McuUpdateInfoModel H;
    /* access modifiers changed from: private */
    public int I = -1;
    /* access modifiers changed from: private */
    public a J = new a(this);
    private ServiceConnection K = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            s.c("MapFragment", "onServiceConnected");
            MapFragment.this.j = ((b) iBinder).a();
            MapFragment.this.j.a((com.ifengyu.intercom.ui.service.TrackRecordService.a) MapFragment.this);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            s.c("MapFragment", "onServiceDisconnected");
            if (MapFragment.this.j != null) {
                MapFragment.this.j.d();
            }
        }
    };
    /* access modifiers changed from: private */
    public SealSharkChannel L;
    /* access modifiers changed from: private */
    public int M;
    private boolean b;
    @BindView(2131755611)
    ShadowLayout bleIsUnConnectLayout;
    @BindView(2131755612)
    TextView bleReconnectImmediatelyBtn;
    @BindView(2131755613)
    ImageView bleUnConnectCloseBtn;
    @BindView(2131755591)
    ShadowLayout bottomChannelLayout;
    @BindView(2131755592)
    TextView bottomChannelName;
    @BindView(2131755593)
    TextView bottomChannelNumber;
    private ImageView c;
    private ImageView d;
    private PopupWindow e;
    private PopupWindow f;
    /* access modifiers changed from: private */
    public SpannableString g;
    @BindView(2131755603)
    TextView gpsNoAccuracyPrompt;
    /* access modifiers changed from: private */
    public SpannableString h;
    /* access modifiers changed from: private */
    public SpannableString i;
    /* access modifiers changed from: private */
    public TrackRecordService j;
    private boolean k;
    private com.ifengyu.intercom.greendao.bean.b l;
    @BindView(2131755594)
    ImageView locationShareIV;
    /* access modifiers changed from: private */
    public TranslateAnimation m;
    @BindView(2131755589)
    FrameLayout mapContainer;
    @BindView(2131755596)
    TextView mapKitBtn;
    @BindView(2131755597)
    TextView mapSwitchTypeBtn;
    @BindView(2131755595)
    TextView mapTrackRecordBtn;
    @BindView(2131755609)
    TextView mapTrackRecordCloseBtn;
    @BindView(2131755602)
    TextView mapTrackRecordCompressDistance;
    @BindView(2131755600)
    TextView mapTrackRecordCompressSpeed;
    @BindView(2131755606)
    TextView mapTrackRecordDistance;
    @BindView(2131755598)
    ImageView mapTrackRecordGpsAccuracy;
    @BindView(2131755608)
    TextView mapTrackRecordPauseBtn;
    @BindView(2131755605)
    TextView mapTrackRecordSpeed;
    @BindView(2131755607)
    TextView mapTrackRecordTiming;
    @BindView(2131755617)
    ImageView mcuHaveUpdateCloseBtn;
    @BindView(2131755614)
    ShadowLayout mcuHaveUpdateLayout;
    @BindView(2131755615)
    TextView mcuHaveUpdateTV;
    @BindView(2131755616)
    TextView mcuUpdateImmediatelyBtn;
    @BindView(2131755587)
    LinearLayout myDeviceManager;
    @BindView(2131755237)
    ImageView myLocateIV;
    /* access modifiers changed from: private */
    public MainActivity n;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.map.a o;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.map.b p;
    @BindView(2131755292)
    View popupBg;
    private TextureMapView q;
    private MapView r;
    private ImageView s;
    private ImageView t;
    @BindView(2131755355)
    ImageView titleBarRight;
    @BindView(2131755588)
    TextView titleBarTitle;
    @BindView(2131755610)
    ImageView trackRecordingCompressBtn;
    @BindView(2131755604)
    ViewGroup trackRecordingCompressCanHideLayout;
    @BindView(2131755601)
    ViewGroup trackRecordingCompressDistanceLayout;
    @BindView(2131755599)
    ViewGroup trackRecordingCompressSpeedLayout;
    @BindView(2131755590)
    ViewGroup trackRecordingDataLayout;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private View y;
    private boolean z;
    @BindView(2131755235)
    ImageView zoomBigIV;
    @BindView(2131755236)
    ImageView zoomSmallIV;

    private static class a extends com.ifengyu.intercom.ui.baseui.a<MapFragment> {
        public a(MapFragment mapFragment) {
            super(mapFragment);
        }

        public void a(Message message, final MapFragment mapFragment) {
            switch (message.what) {
                case 1:
                    b(message, mapFragment);
                    return;
                case 2:
                    a(mapFragment);
                    return;
                case 3:
                    if (mapFragment.locationShareIV != null) {
                        mapFragment.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                    }
                    ((MainActivity) mapFragment.getActivity()).b(mapFragment.getActivity().getString(R.string.share_location_opened));
                    ((MainActivity) mapFragment.getActivity()).d(R.drawable.mine_icon_win);
                    MiTalkiApp.n().postDelayed(new Runnable() {
                        public void run() {
                            ((MainActivity) mapFragment.getActivity()).k();
                        }
                    }, 500);
                    return;
                case 4:
                    if (mapFragment.locationShareIV != null) {
                        mapFragment.locationShareIV.setImageResource(R.drawable.home_icon_position);
                    }
                    ((MainActivity) mapFragment.getActivity()).b(mapFragment.getActivity().getString(R.string.share_location_closed));
                    ((MainActivity) mapFragment.getActivity()).d(R.drawable.mine_icon_win);
                    MiTalkiApp.n().postDelayed(new Runnable() {
                        public void run() {
                            ((MainActivity) mapFragment.getActivity()).k();
                        }
                    }, 500);
                    return;
                case 5:
                    b(mapFragment);
                    return;
                case 6:
                    c(message, mapFragment);
                    return;
                default:
                    return;
            }
        }

        private void b(Message message, final MapFragment mapFragment) {
            switch (message.arg1) {
                case 1:
                    UpdateManager a = UpdateManager.a();
                    UpdateManager a2 = UpdateManager.a();
                    a2.getClass();
                    a.a(new UpdateManager.b(a2, mapFragment.n, CHECK_CONDITION.MCU), message.arg2);
                    return;
                case 4:
                    com.ifengyu.intercom.a.a.e(new h() {
                        public void a(Call call, Exception exc, int i) {
                        }

                        public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                            if (mcuUpdateInfoModel != null) {
                                int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                                int G = w.G();
                                if (G > 0 && G < parseInt) {
                                    w.k(true);
                                    mapFragment.J.sendEmptyMessage(2);
                                    mapFragment.H = mcuUpdateInfoModel;
                                }
                            }
                        }
                    });
                    return;
                case 5:
                    com.ifengyu.intercom.a.a.d(new g() {
                        public void a(Call call, Exception exc, int i) {
                        }

                        public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                            if (mcuUpdateInfoModel != null) {
                                int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                                int s = w.s();
                                if (s > 0 && s < parseInt) {
                                    w.h(true);
                                    mapFragment.J.sendEmptyMessage(2);
                                    mapFragment.H = mcuUpdateInfoModel;
                                }
                            }
                        }
                    });
                    return;
                default:
                    return;
            }
        }

        private void a(MapFragment mapFragment) {
            if (w.ac()) {
                mapFragment.titleBarRight.setImageResource(R.drawable.home_icon_set_news);
            }
            if (mapFragment.bleIsUnConnectLayout.getVisibility() == 0) {
                mapFragment.E = true;
                return;
            }
            mapFragment.mcuHaveUpdateLayout.setVisibility(0);
            mapFragment.mcuUpdateImmediatelyBtn.setClickable(true);
            mapFragment.mcuHaveUpdateCloseBtn.setClickable(true);
            switch (w.ad()) {
                case 1:
                    if (v.a()) {
                        if (w.p().equals("mcu_language_type_english")) {
                            mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                            return;
                        } else {
                            mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_different_language_update));
                            return;
                        }
                    } else if (!v.b()) {
                        mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                        return;
                    } else if (w.p().equals("mcu_language_type_chinese")) {
                        mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                        return;
                    } else {
                        mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_different_language_update));
                        return;
                    }
                case 4:
                    mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                    return;
                case 5:
                    mapFragment.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
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
                mapFragment.titleBarTitle.setText(w.ae());
                mapFragment.titleBarRight.setVisibility(0);
                mapFragment.locationShareIV.setVisibility(0);
                if (w.ad() == 5 || w.ad() == 4) {
                    mapFragment.bottomChannelLayout.setVisibility(0);
                } else {
                    mapFragment.bottomChannelLayout.setVisibility(8);
                }
                if (mapFragment.bleIsUnConnectLayout.getVisibility() == 0) {
                    mapFragment.bleIsUnConnectLayout.startAnimation(mapFragment.m);
                    mapFragment.bleReconnectImmediatelyBtn.setClickable(false);
                    mapFragment.bleUnConnectCloseBtn.setClickable(false);
                }
            }
            if (mapFragment.G) {
                if (mapFragment.o != null) {
                    mapFragment.o.d();
                }
            } else if (mapFragment.p != null) {
                mapFragment.p.f();
            }
        }

        private void c(Message message, MapFragment mapFragment) {
            boolean z;
            boolean z2 = mapFragment.titleBarRight != null;
            if (mapFragment.locationShareIV != null) {
                z = true;
            } else {
                z = false;
            }
            if (z2 && z) {
                mapFragment.titleBarTitle.setText(R.string.device_not_connected);
                mapFragment.titleBarRight.setVisibility(8);
                mapFragment.locationShareIV.setVisibility(8);
                mapFragment.bottomChannelLayout.setVisibility(8);
                mapFragment.mcuHaveUpdateLayout.clearAnimation();
                mapFragment.mcuHaveUpdateLayout.setVisibility(8);
                if (message.arg1 == 1) {
                    mapFragment.F = false;
                }
                if (mapFragment.n.o() == null || mapFragment.n.p() == null) {
                    mapFragment.F = true;
                }
                if (mapFragment.F) {
                    mapFragment.bleIsUnConnectLayout.clearAnimation();
                    mapFragment.bleIsUnConnectLayout.setVisibility(8);
                } else {
                    mapFragment.bleIsUnConnectLayout.setVisibility(0);
                    mapFragment.bleReconnectImmediatelyBtn.setClickable(true);
                    mapFragment.bleUnConnectCloseBtn.setClickable(true);
                }
            }
            if (mapFragment.G) {
                if (mapFragment.o != null) {
                    mapFragment.o.e();
                }
            } else if (mapFragment.p != null) {
                mapFragment.p.g();
            }
        }
    }

    public static MapFragment a() {
        s.c("MapFragment", "newInstance");
        return new MapFragment();
    }

    public void onAttach(Context context) {
        s.c("MapFragment", "onAttach");
        super.onAttach(context);
        this.n = (MainActivity) getActivity();
    }

    public void onCreate(@Nullable Bundle bundle) {
        s.c("MapFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        s.c("MapFragment", "onCreateView");
        if (this.y == null) {
            this.y = layoutInflater.inflate(R.layout.fragment_map, viewGroup, false);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.y.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.y);
        }
        ButterKnife.bind((Object) this, this.y);
        h();
        i();
        MapsInitializer.sdcardDir = v.d((Context) this.n);
        g();
        return this.y;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        s.c("MapFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
        if (this.G) {
            this.o.a(bundle);
        }
        j();
        q();
    }

    public void onStart() {
        s.c("MapFragment", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        UpdateManager.a().a((com.ifengyu.intercom.network.a) this);
        A();
    }

    public void onResume() {
        s.c("MapFragment", "onResume");
        super.onResume();
        if (this.G) {
            this.o.a();
        } else {
            this.p.a();
        }
        if (k.a().b()) {
            this.J.sendEmptyMessage(5);
            this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
            this.bleIsUnConnectLayout.clearAnimation();
            this.bleIsUnConnectLayout.setVisibility(8);
            if (this.H != null) {
                int parseInt = Integer.parseInt(this.H.getVersionCode());
                switch (w.ad()) {
                    case 4:
                        if (this.mcuHaveUpdateLayout.getVisibility() == 0 && w.G() >= parseInt) {
                            this.mcuHaveUpdateLayout.clearAnimation();
                            this.mcuHaveUpdateLayout.setVisibility(8);
                            break;
                        }
                    case 5:
                        if (this.mcuHaveUpdateLayout.getVisibility() == 0 && w.s() >= parseInt) {
                            this.mcuHaveUpdateLayout.clearAnimation();
                            this.mcuHaveUpdateLayout.setVisibility(8);
                            break;
                        }
                }
            }
        } else {
            this.J.sendEmptyMessage(6);
        }
        d();
        if (!w.T() && this.B && this.A && this.n.a() == 0) {
            k();
        }
    }

    public void d() {
        int i2 = 2130837751;
        switch (w.ad()) {
            case 1:
                ImageView imageView = this.locationShareIV;
                if (!w.j()) {
                    i2 = R.drawable.home_icon_position;
                }
                imageView.setImageResource(i2);
                return;
            case 4:
                ImageView imageView2 = this.locationShareIV;
                if (!w.H()) {
                    i2 = R.drawable.home_icon_position;
                }
                imageView2.setImageResource(i2);
                return;
            case 5:
                ImageView imageView3 = this.locationShareIV;
                if (!w.t()) {
                    i2 = R.drawable.home_icon_position;
                }
                imageView3.setImageResource(i2);
                return;
            default:
                return;
        }
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (!w.T()) {
            this.myDeviceManager.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    MapFragment.this.B = true;
                    MapFragment.this.k();
                    MapFragment.this.myDeviceManager.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
        }
    }

    public void onStop() {
        s.c("MapFragment", "onStop");
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        UpdateManager.a().c();
        if (w.ad() == 1 && !w.j() && ShareLocationService.a() != null) {
            this.n.stopService(new Intent(this.n, ShareLocationService.class));
        }
        this.A = true;
    }

    public void onPause() {
        super.onPause();
        this.mcuHaveUpdateLayout.setVisibility(8);
        if (this.G) {
            this.o.b();
        } else {
            this.p.b();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.G) {
            this.o.b(bundle);
        }
    }

    public void onDestroy() {
        s.c("MapFragment", "onDestroy");
        super.onDestroy();
        this.J.removeCallbacksAndMessages(null);
        if (this.j != null) {
            this.j.d();
            this.n.unbindService(this.K);
            this.j = null;
        }
        if (this.G) {
            this.o.c();
            this.o = null;
            return;
        }
        this.p.c();
        this.p = null;
    }

    public void onClick(View view) {
        boolean z2 = true;
        switch (view.getId()) {
            case R.id.map_icon_zoom_big_iv /*2131755235*/:
                if (this.G) {
                    this.o.k();
                    return;
                } else {
                    this.p.l();
                    return;
                }
            case R.id.map_icon_zoom_small_iv /*2131755236*/:
                if (this.G) {
                    this.o.l();
                    return;
                } else {
                    this.p.m();
                    return;
                }
            case R.id.map_icon_my_locate_iv /*2131755237*/:
                x();
                return;
            case R.id.title_bar_right /*2131755355*/:
                l();
                return;
            case R.id.my_device_manager /*2131755587*/:
                this.n.startActivity(new Intent(this.n, SelectDeviceActivity.class));
                MiStatInterface.recordCountEvent("map_tab_page", "deviceListBtnClick");
                return;
            case R.id.bottom_channel_display_layout /*2131755591*/:
                switch (w.ad()) {
                    case 4:
                        switch (this.I) {
                            case 0:
                                if (this.L != null) {
                                    FragmentActivity activity = getActivity();
                                    SealSharkChannel sealSharkChannel = this.L;
                                    if (this.M != 1) {
                                        z2 = false;
                                    }
                                    SharkChannelSettingActivity.a(activity, sealSharkChannel, z2);
                                    return;
                                }
                                return;
                            case 1:
                            case 2:
                                v.a((CharSequence) getString(R.string.sos_mode_can_not_setting), false);
                                return;
                            case 3:
                            case 4:
                                v.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
                                return;
                            case 5:
                            case 6:
                                v.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
                                return;
                            default:
                                return;
                        }
                    case 5:
                        if (this.L != null) {
                            SealChannelSettingActivity.a(getActivity(), this.L, true);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            case R.id.map_icon_location_share_iv /*2131755594*/:
                y();
                MiStatInterface.recordCountEvent("map_tab_page", "shareLocationBtnClick");
                return;
            case R.id.map_track_record_btn /*2131755595*/:
                t();
                MiStatInterface.recordCountEvent("map_tab_page", "trackBtnClick");
                return;
            case R.id.map_kit_iv /*2131755596*/:
                v();
                MiStatInterface.recordCountEvent("map_tab_page", "mapToolBtnClick");
                return;
            case R.id.map_switch_type_btn /*2131755597*/:
                w();
                MiStatInterface.recordCountEvent("map_tab_page", "mapSwitchBtnClick");
                return;
            case R.id.map_track_record_pause_btn /*2131755608*/:
                s();
                return;
            case R.id.map_track_record_close_btn /*2131755609*/:
                if (this.j != null) {
                    this.j.c();
                    return;
                }
                return;
            case R.id.track_record_compress_btn /*2131755610*/:
                r();
                return;
            case R.id.top_reconnect_immediately /*2131755612*/:
                this.bleReconnectImmediatelyBtn.setClickable(false);
                Intent intent = new Intent(this.n, ConnectDeviceActivity.class);
                intent.putExtra("device_address", this.n.p());
                intent.putExtra("device_name", this.n.o());
                intent.setAction("com.ifengyu.intercom.RECONNECT_DEVICE");
                this.n.startActivity(intent);
                if (!TextUtils.isEmpty(this.n.p())) {
                    d b2 = com.ifengyu.intercom.service.a.b();
                    if (b2 != null) {
                        b2.a(this.n.p());
                    }
                }
                this.bleIsUnConnectLayout.setVisibility(8);
                return;
            case R.id.top_ble_is_unconnect_close /*2131755613*/:
                this.F = true;
                this.bleIsUnConnectLayout.startAnimation(this.m);
                this.bleReconnectImmediatelyBtn.setClickable(false);
                this.bleUnConnectCloseBtn.setClickable(false);
                return;
            case R.id.top_mcu_update_immediately /*2131755616*/:
                this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
                w.o(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                switch (w.ad()) {
                    case 1:
                        Intent intent2 = new Intent(this.n, UpdateMcuActivity.class);
                        String str = (String) UpdateManager.a().e().get("versionCode");
                        intent2.putExtra("update_info_message", w.m() >= 65542 ? "update_mcu_ble" : "update_mcu");
                        intent2.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt(str));
                        intent2.setAction("com.ifengyu.intercom.FORM_MAIN");
                        this.n.startActivity(intent2);
                        break;
                    case 4:
                        Intent intent3 = new Intent(this.n, SealSharkMcuUpdateActivity.class);
                        intent3.putExtra("mcu_update_device_type", "shark");
                        intent3.putExtra("mcu_have_update", true);
                        intent3.putExtra("mcu_update_info", this.H);
                        intent3.setAction("mcu_update_action_from_main");
                        startActivity(intent3);
                        break;
                    case 5:
                        Intent intent4 = new Intent(this.n, SealSharkMcuUpdateActivity.class);
                        intent4.putExtra("mcu_update_device_type", "seal");
                        intent4.putExtra("mcu_have_update", true);
                        intent4.putExtra("mcu_update_info", this.H);
                        intent4.setAction("mcu_update_action_from_main");
                        startActivity(intent4);
                        break;
                }
                this.mcuHaveUpdateLayout.setVisibility(8);
                return;
            case R.id.top_have_mcu_update_close /*2131755617*/:
                this.mcuHaveUpdateLayout.startAnimation(this.m);
                this.mcuHaveUpdateCloseBtn.setClickable(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                this.C = false;
                return;
            case R.id.map_switch_mode_gaode_normal /*2131755737*/:
                m();
                return;
            case R.id.map_switch_mode_gaode_satellite /*2131755739*/:
                n();
                return;
            case R.id.map_switch_mode_standard /*2131755741*/:
                o();
                return;
            case R.id.map_switch_mode_satellitic /*2131755743*/:
                p();
                return;
            case R.id.map_kit_ranging_btn_layout /*2131755753*/:
                this.f.dismiss();
                Intent intent5 = new Intent(this.n, this.G ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                intent5.putExtra("map_kit_measure_what", this.G ? "measure_distance" : "measure_distance");
                if (this.G) {
                    intent5.putExtra("gaode_map_cameraposition", this.o.i());
                } else {
                    MapCurrentStatus n2 = this.p.n();
                    intent5.putExtra("osm_map_latitude", n2.currentCenterLatitude);
                    intent5.putExtra("osm_map_longitude", n2.currentCenterLongitude);
                    intent5.putExtra("osm_map_zoom_level", n2.currentZoomLevel);
                }
                startActivity(intent5);
                return;
            case R.id.map_kit_altitude_btn_layout /*2131755754*/:
                this.f.dismiss();
                Intent intent6 = new Intent(this.n, this.G ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                intent6.putExtra("map_kit_measure_what", this.G ? "measure_altitude" : "measure_altitude");
                if (this.G) {
                    intent6.putExtra("gaode_map_cameraposition", this.o.i());
                } else {
                    MapCurrentStatus n3 = this.p.n();
                    intent6.putExtra("osm_map_latitude", n3.currentCenterLatitude);
                    intent6.putExtra("osm_map_longitude", n3.currentCenterLongitude);
                    intent6.putExtra("osm_map_zoom_level", n3.currentZoomLevel);
                }
                startActivity(intent6);
                return;
            case R.id.map_kit_latandlong_btn_layout /*2131755755*/:
                this.f.dismiss();
                Intent intent7 = new Intent(this.n, this.G ? GaoDeMapToolOperateActivity.class : OsmMapToolOperateActivity.class);
                intent7.putExtra("map_kit_measure_what", this.G ? "measure_latLong" : "measure_latLong");
                if (this.G) {
                    intent7.putExtra("gaode_map_cameraposition", this.o.i());
                    Location j2 = this.o.j();
                    intent7.putExtra("gaode_my_location_longitude", j2.getLongitude());
                    intent7.putExtra("gaode_my_location_latitude", j2.getLatitude());
                } else {
                    MapCurrentStatus n4 = this.p.n();
                    intent7.putExtra("osm_map_latitude", n4.currentCenterLatitude);
                    intent7.putExtra("osm_map_longitude", n4.currentCenterLongitude);
                    intent7.putExtra("osm_map_zoom_level", n4.currentZoomLevel);
                }
                startActivity(intent7);
                return;
            default:
                return;
        }
    }

    public void a(CHECK_CONDITION check_condition, boolean z2) {
        if (check_condition == CHECK_CONDITION.MCU && !z2) {
            this.J.sendEmptyMessage(2);
            if (w.a == 1) {
                v.a((CharSequence) ad.a((int) R.string.please_update_your_firmware), true);
            }
        } else if (v.a()) {
            if (!w.p().equals("mcu_language_type_english")) {
                this.J.sendEmptyMessage(2);
            }
        } else if (v.b() && !w.p().equals("mcu_language_type_chinese")) {
            this.J.sendEmptyMessage(2);
        }
    }

    public void a(ArrayList<ArrayList<LocationBean>> arrayList, boolean z2) {
        if (this.G) {
            this.o.a(this.k, arrayList, z2);
        } else {
            this.p.a(this.k, arrayList, z2);
        }
    }

    public void a(long j2, String str, boolean z2, boolean z3) {
        if (z2) {
            new com.ifengyu.intercom.ui.widget.dialog.d(getActivity()).b((CharSequence) ad.a((int) R.string.track_record_ask_not_record_any_data)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (MapFragment.this.j != null) {
                        MapFragment.this.j.a(true, false);
                    }
                }
            }).b().c();
        } else if (z3) {
            new com.ifengyu.intercom.ui.widget.dialog.d(getActivity()).b((CharSequence) ad.a((int) R.string.track_record_ask_not_record_any_data)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (MapFragment.this.j != null) {
                        MapFragment.this.j.a(false, true);
                    }
                }
            }).b().c();
        } else {
            new com.ifengyu.intercom.ui.widget.dialog.d(getActivity()).b((CharSequence) ad.a((int) R.string.track_record_ask_finish_current_record)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (MapFragment.this.j != null) {
                        MapFragment.this.j.a(false, false);
                    }
                }
            }).b().c();
        }
    }

    public void a(long j2, boolean z2) {
        this.b = false;
        this.trackRecordingDataLayout.setVisibility(8);
        this.mapTrackRecordBtn.setVisibility(0);
        if (this.G) {
            this.o.g();
        } else {
            this.p.e();
        }
        if (!z2) {
            getActivity().unbindService(this.K);
            this.j = null;
            getActivity().stopService(new Intent(getActivity(), TrackRecordService.class));
            return;
        }
        Intent intent = new Intent(getActivity(), TrackInfoDetailActivity.class);
        intent.putExtra("trackInfoPrimaryKeyId", j2);
        intent.putExtra("track_info_for_what", "for_preview_track");
        startActivity(intent);
        getActivity().unbindService(this.K);
        this.j = null;
        getActivity().stopService(new Intent(getActivity(), TrackRecordService.class));
    }

    public void a(int i2, int i3, int i4, float f2) {
        if (getActivity() != null) {
            final int i5 = i2;
            final int i6 = i3;
            final int i7 = i4;
            final float f3 = f2;
            getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    if (i5 < 0) {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_none);
                        MapFragment.this.gpsNoAccuracyPrompt.setText(MapFragment.this.getString(R.string.current_gps_no_accuracy_please_change_place));
                    } else if (i5 <= 10) {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_all);
                        MapFragment.this.gpsNoAccuracyPrompt.setText("");
                    } else if (i5 <= 20) {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_three);
                        MapFragment.this.gpsNoAccuracyPrompt.setText("");
                    } else if (i5 <= 30) {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_two);
                        MapFragment.this.gpsNoAccuracyPrompt.setText("");
                    } else if (i5 <= 50) {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_one);
                        MapFragment.this.gpsNoAccuracyPrompt.setText("");
                    } else {
                        MapFragment.this.mapTrackRecordGpsAccuracy.setImageResource(R.drawable.trail_gps_none);
                        MapFragment.this.gpsNoAccuracyPrompt.setText(MapFragment.this.getString(R.string.current_gps_no_accuracy_please_change_place));
                    }
                    SpannableString spannableString = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", new Object[]{Integer.valueOf(i6 / 3600), Integer.valueOf((i6 % 3600) / 60), Integer.valueOf(i6 % 60)}));
                    spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
                    MapFragment.this.mapTrackRecordTiming.setText(spannableString);
                    if (i7 < 1000) {
                        MapFragment.this.mapTrackRecordDistance.setText(String.valueOf(i7));
                        MapFragment.this.mapTrackRecordDistance.append(MapFragment.this.i);
                        MapFragment.this.mapTrackRecordCompressDistance.setText(String.valueOf(i7));
                        MapFragment.this.mapTrackRecordCompressDistance.append(MapFragment.this.i);
                    } else {
                        MapFragment.this.mapTrackRecordDistance.setText(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) i7) / 1000.0f)}));
                        MapFragment.this.mapTrackRecordDistance.append(MapFragment.this.g);
                        MapFragment.this.mapTrackRecordCompressDistance.setText(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) i7) / 1000.0f)}));
                        MapFragment.this.mapTrackRecordCompressDistance.append(MapFragment.this.g);
                    }
                    MapFragment.this.mapTrackRecordSpeed.setText(String.valueOf(f3));
                    MapFragment.this.mapTrackRecordSpeed.append(MapFragment.this.h);
                    MapFragment.this.mapTrackRecordCompressSpeed.setText(String.valueOf(f3));
                    MapFragment.this.mapTrackRecordCompressSpeed.append(MapFragment.this.h);
                }
            });
        }
    }

    @Subscribe
    public void receiveDolphinParamResponse(ParamUpdate paramUpdate) {
        s.c("MapFragment", "receive dolphin ParamResponse");
        if (paramUpdate.hasDevNameGBK()) {
            String af = w.af();
            d a2 = d.a();
            ConnectionConfiguration c2 = a2.c(af);
            if (c2 != null) {
                c2.b(w.ae());
                c2.a(true);
                a2.c(c2);
            }
        }
        if (paramUpdate.hasShareLoc()) {
            if (paramUpdate.getShareLoc() != 0) {
                this.J.sendEmptyMessage(3);
            } else {
                this.J.sendEmptyMessage(4);
            }
        }
        if (paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.hasDeviceId()) {
            a(1, paramUpdate.getVersionMCU());
            z();
        }
        if (paramUpdate.hasResult() && paramUpdate.hasActivateChannel()) {
            ad.b(((MainActivity) getActivity()).p);
            if (paramUpdate.getResult() == STATECODE.SUCCESS && paramUpdate.getActivateChannel() == 1) {
                B();
            } else {
                ((MainActivity) getActivity()).p.run();
            }
        }
        if (!MiTalkiApp.a().i() && w.o() != null && w.l() > 0) {
            com.ifengyu.intercom.a.a.a("dolphin", w.o(), w.l());
            MiTalkiApp.a().d(true);
        }
    }

    @Subscribe
    public void receiveSealParamResponse(SEAL_DeviceParam sEAL_DeviceParam) {
        s.c("MapFragment", "receive seal ParamResponse");
        if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                String af = w.af();
                d a2 = d.a();
                ConnectionConfiguration c2 = a2.c(af);
                c2.b(w.ae());
                c2.a(true);
                a2.c(c2);
            }
            getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    MapFragment.this.d();
                }
            });
            a(5, sEAL_DeviceParam.getVerSoft());
            z();
            b(5);
        } else if (sEAL_DeviceParam.getResult() != SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
        } else {
            if (sEAL_DeviceParam.hasShareLoc()) {
                this.J.sendEmptyMessage(w.t() ? 3 : 4);
            } else if (sEAL_DeviceParam.hasActivate()) {
                ad.b(((MainActivity) getActivity()).p);
                if (!sEAL_DeviceParam.hasActivate() || sEAL_DeviceParam.getActivate() != 1) {
                    ((MainActivity) getActivity()).p.run();
                } else {
                    B();
                }
            }
        }
    }

    @Subscribe
    public void receiveSharkParamResponse(SHARK_DeviceParam sHARK_DeviceParam) {
        int i2 = 4;
        s.c("MapFragment", "receive shark ParamResponse");
        if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                String af = w.af();
                d a2 = d.a();
                ConnectionConfiguration c2 = a2.c(af);
                c2.b(w.ae());
                c2.a(true);
                a2.c(c2);
            }
            getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    MapFragment.this.d();
                }
            });
            a(4, sHARK_DeviceParam.getVerSoft());
            z();
            b(4);
        } else if (sHARK_DeviceParam.getResult() != SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
        } else {
            if (sHARK_DeviceParam.hasShareLoc()) {
                a aVar = this.J;
                if (w.H()) {
                    i2 = 3;
                }
                aVar.sendEmptyMessage(i2);
            } else if (sHARK_DeviceParam.hasActivate()) {
                ad.b(((MainActivity) getActivity()).p);
                if (!sHARK_DeviceParam.hasActivate() || sHARK_DeviceParam.getActivate() != 1) {
                    ((MainActivity) getActivity()).p.run();
                } else {
                    B();
                }
            }
        }
    }

    private void b(int i2) {
        switch (i2) {
            case 4:
                ab.d();
                return;
            case 5:
                aa.c();
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveSealChannelStateOperateResp(final SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        s.c("MapFragment", "receiveChannelStateOperateResp");
        getActivity().runOnUiThread(new Runnable() {
            public void run() {
                if (sEAL_ChannelStateOperate.hasResult() && sEAL_ChannelStateOperate.getResult() == SEAL_ST_UERR.SEAL_ST_OK && sEAL_ChannelStateOperate.hasCh1()) {
                    SEAL_ChannelInfo ch1 = sEAL_ChannelStateOperate.getCh1();
                    if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                        MapFragment.this.L = aa.a(ch1);
                        if (MapFragment.this.L == null) {
                            return;
                        }
                        if (MapFragment.this.L.o()) {
                            MapFragment.this.bottomChannelName.setText(MapFragment.this.L.g());
                            MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                            MapFragment.this.bottomChannelNumber.setText(v.c(MapFragment.this.L.e()));
                            return;
                        }
                        String format = String.format(Locale.getDefault(), "C%02d", new Object[]{Integer.valueOf(MapFragment.this.L.b() + 1)});
                        if (MapFragment.this.L.g().trim().length() == 0) {
                            MapFragment.this.bottomChannelName.setText(format);
                        } else {
                            MapFragment.this.bottomChannelName.setText(format + Token.SEPARATOR + MapFragment.this.L.g().trim());
                        }
                        MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                        MapFragment.this.bottomChannelNumber.setText(v.c(MapFragment.this.L.e()));
                    }
                }
            }
        });
        if (!MiTalkiApp.a().i() && w.q() != null && w.s() > 0) {
            aa.i();
            com.ifengyu.intercom.a.a.a("seal", w.q(), w.s());
            MiTalkiApp.a().d(true);
        }
    }

    @Subscribe
    public void receiveSharkChannelStateOperateResp(final SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.c("MapFragment", "receiveChannelStateOperateResp");
        getActivity().runOnUiThread(new Runnable() {
            public void run() {
                if (sHARK_ChannelStateOperate.hasResult() && sHARK_ChannelStateOperate.getResult() == SHARK_ST_UERR.SHARK_ST_OK && sHARK_ChannelStateOperate.hasDeviceMode()) {
                    MapFragment.this.I = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
                    if (MapFragment.this.I == SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                        if (sHARK_ChannelStateOperate.hasStateMode()) {
                            int stateMode = sHARK_ChannelStateOperate.getStateMode();
                            if (stateMode == 1) {
                                if (sHARK_ChannelStateOperate.hasCh1()) {
                                    MapFragment.this.L = ab.a(sHARK_ChannelStateOperate.getCh1());
                                    MapFragment.this.M = 1;
                                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                                    MapFragment.this.L = ab.a(sHARK_ChannelStateOperate.getCh2());
                                    MapFragment.this.M = 2;
                                }
                                MapFragment.this.bottomChannelName.setText(MapFragment.this.L.g());
                                MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                                MapFragment.this.bottomChannelNumber.setText(v.c(MapFragment.this.L.e()));
                            } else if (stateMode == 2) {
                                if (sHARK_ChannelStateOperate.getCurrentChId() == 2) {
                                    MapFragment.this.L = ab.a(sHARK_ChannelStateOperate.getCh2());
                                    MapFragment.this.M = 2;
                                } else {
                                    MapFragment.this.L = ab.a(sHARK_ChannelStateOperate.getCh1());
                                    MapFragment.this.M = 1;
                                }
                                MapFragment.this.bottomChannelName.setText(MapFragment.this.L.g());
                                MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                                MapFragment.this.bottomChannelNumber.setText(v.c(MapFragment.this.L.e()));
                            }
                        }
                    } else if (MapFragment.this.I != 1 && MapFragment.this.I != 2) {
                        switch (MapFragment.this.I) {
                            case 3:
                            case 4:
                                MapFragment.this.bottomChannelName.setText(MapFragment.this.getString(R.string.device_mode_channel_scan));
                                MapFragment.this.bottomChannelNumber.setTextSize(15.0f);
                                MapFragment.this.bottomChannelNumber.setText(MapFragment.this.getString(R.string.device_mode_channel_scan_ing_describe));
                                return;
                            case 5:
                            case 6:
                                MapFragment.this.bottomChannelName.setText(MapFragment.this.getString(R.string.device_mode_team));
                                MapFragment.this.bottomChannelNumber.setTextSize(15.0f);
                                MapFragment.this.bottomChannelNumber.setText(MapFragment.this.getString(R.string.device_mode_team_ing_describe));
                                return;
                            default:
                                return;
                        }
                    } else if (sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                        SealSharkChannel a2 = ab.a(sHARK_ChannelStateOperate.getCh1());
                        if (a2 != null) {
                            MapFragment.this.bottomChannelName.setText(a2.g());
                            MapFragment.this.bottomChannelNumber.setTextSize(17.0f);
                            MapFragment.this.bottomChannelNumber.setText(v.c(a2.e()));
                        }
                    }
                }
            }
        });
        if (!MiTalkiApp.a().i() && w.E() != null && w.G() > 0) {
            ab.f();
            com.ifengyu.intercom.a.a.a("shark", w.E(), w.G());
            MiTalkiApp.a().d(true);
        }
    }

    @Subscribe
    public void onBeanUserLocationChanged(BeanUserLocation beanUserLocation) {
        if (this.G) {
            this.o.a(beanUserLocation);
        } else {
            this.p.a(beanUserLocation, true);
        }
    }

    private void g() {
        int i2 = 2;
        int X = w.X();
        if (X == 1 || X == 2) {
            this.q = new TextureMapView(MiTalkiApp.a());
            this.mapContainer.addView(this.q, new LayoutParams(-1, -1));
            this.o = new com.ifengyu.intercom.ui.map.a(getActivity(), this.q, this);
            com.ifengyu.intercom.ui.map.a aVar = this.o;
            if (X == 1) {
                i2 = 1;
            }
            aVar.a(i2, true);
            this.G = true;
            return;
        }
        this.r = new MapView(MiTalkiApp.a());
        this.mapContainer.addView(this.r, new LayoutParams(-1, -1));
        this.p = new com.ifengyu.intercom.ui.map.b(getActivity(), this.r, this);
        this.p.a(X == 3 ? MAP_TYPE.GOOGLE_2D_MAP : MAP_TYPE.GOOGLE_SATELLITE_MAP, true);
        this.G = false;
    }

    private void h() {
        this.a = (ViewGroup) this.y.findViewById(R.id.title_bar);
        c();
        this.trackRecordingDataLayout.setClickable(true);
        Typeface typeface = l.c;
        this.mapTrackRecordTiming.setTypeface(typeface);
        this.mapTrackRecordDistance.setTypeface(typeface);
        this.mapTrackRecordCompressDistance.setTypeface(typeface);
        this.mapTrackRecordSpeed.setTypeface(typeface);
        this.mapTrackRecordCompressSpeed.setTypeface(typeface);
        this.bottomChannelNumber.setTypeface(typeface);
        this.g = new SpannableString(" km");
        this.g.setSpan(new AbsoluteSizeSpan(13, true), 0, this.g.length(), 17);
        this.h = new SpannableString(" km/h");
        this.h.setSpan(new AbsoluteSizeSpan(13, true), 0, this.h.length(), 17);
        this.i = new SpannableString(" m");
        this.i.setSpan(new AbsoluteSizeSpan(13, true), 0, this.i.length(), 17);
        SpannableString spannableString = new SpannableString("00:00:00");
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
        this.mapTrackRecordTiming.setText(spannableString);
        this.mapTrackRecordDistance.setText("0");
        this.mapTrackRecordDistance.append(this.i);
        this.mapTrackRecordCompressDistance.setText("0");
        this.mapTrackRecordCompressDistance.append(this.i);
        this.mapTrackRecordSpeed.setText("0.0");
        this.mapTrackRecordSpeed.append(this.h);
        this.mapTrackRecordCompressSpeed.setText("0.0");
        this.mapTrackRecordCompressSpeed.append(this.h);
        if (!v.b()) {
            this.mapTrackRecordBtn.setTextSize(8.0f);
            this.mapKitBtn.setTextSize(8.0f);
            this.mapSwitchTypeBtn.setTextSize(8.0f);
        }
    }

    private void i() {
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

    private void j() {
        this.m = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
        this.m.setDuration(500);
        this.m.setAnimationListener(new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                if (MapFragment.this.bleIsUnConnectLayout.getVisibility() == 0) {
                    MapFragment.this.bleIsUnConnectLayout.clearAnimation();
                    MapFragment.this.bleIsUnConnectLayout.setVisibility(8);
                    if (MapFragment.this.E) {
                        MapFragment.this.E = false;
                        MapFragment.this.mcuHaveUpdateLayout.setVisibility(0);
                        MapFragment.this.mcuUpdateImmediatelyBtn.setClickable(true);
                        MapFragment.this.mcuHaveUpdateCloseBtn.setClickable(true);
                        if (w.ad() != 1) {
                            MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                        } else if (v.a()) {
                            if (w.p().equals("mcu_language_type_english")) {
                                MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                            } else {
                                MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_different_language_update));
                            }
                        } else if (!v.b()) {
                            MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                        } else if (w.p().equals("mcu_language_type_chinese")) {
                            MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_mcu_update_please_update));
                        } else {
                            MapFragment.this.mcuHaveUpdateTV.setText(ad.a((int) R.string.have_different_language_update));
                        }
                    }
                }
                if (MapFragment.this.mcuHaveUpdateLayout.getVisibility() == 0) {
                    MapFragment.this.mcuHaveUpdateLayout.clearAnimation();
                    MapFragment.this.mcuHaveUpdateLayout.setVisibility(8);
                }
            }

            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    /* access modifiers changed from: private */
    public void k() {
        if (w.T()) {
            return;
        }
        if (k.a().b()) {
            b(true);
            w.U();
        } else if (!w.R()) {
            b(false);
            w.S();
        }
    }

    private void b(boolean z2) {
        int[] iArr = new int[2];
        this.myDeviceManager.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.titleBarRight.getLocationOnScreen(iArr2);
        int[] iArr3 = new int[2];
        this.locationShareIV.getLocationOnScreen(iArr3);
        this.zoomBigIV.getLocationOnScreen(new int[2]);
        Intent intent = new Intent(MiTalkiApp.a(), UserGuideActivity.class);
        intent.putExtra("isConnect", z2);
        intent.putExtra("titleBarLeftBtnPoint", iArr);
        intent.putExtra("titleBarRightBtnPoint", iArr2);
        intent.putExtra("shareLocationBtnPoint", iArr3);
        startActivity(intent);
    }

    private void l() {
        this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
        w.o(false);
        if (k.a().b()) {
            switch (w.ad()) {
                case 1:
                    this.n.startActivity(new Intent(this.n, DolphinSettingActivity.class));
                    break;
                case 4:
                    this.n.startActivity(new Intent(this.n, SharkSettingActivity.class));
                    break;
                case 5:
                    this.n.startActivity(new Intent(this.n, SealSettingActivity.class));
                    break;
            }
        } else {
            Intent intent = new Intent(this.n, ConnectDeviceActivity.class);
            intent.setAction("com.ifengyu.intercom.FROM_DEVICE");
            startActivity(intent);
        }
        MiStatInterface.recordCountEvent("map_tab_page", "deviceSettingClick");
    }

    private void m() {
        c(1);
        if (this.G) {
            this.o.m();
        } else {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.a().c(false);
            this.z = false;
            MapCurrentStatus n2 = this.p.n();
            if (this.mapContainer.getChildCount() == 1) {
                this.q = new TextureMapView(MiTalkiApp.a());
                this.mapContainer.addView(this.q, new LayoutParams(-1, -1));
                this.o = new com.ifengyu.intercom.ui.map.a(this.n, this.q, this);
                this.o.a(1, false);
                this.o.a((Bundle) null);
            } else {
                this.q.setVisibility(0);
                this.mapContainer.removeViewAt(1);
                this.p.b();
                this.p.c();
                this.p = null;
                this.o.m();
            }
            this.o.a();
            this.o.a(n2);
            this.G = true;
            this.o.d();
            if (this.b) {
                this.o.g();
                this.o.a((com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(w.W())));
            } else {
                this.o.g();
            }
        }
        w.m(1);
        this.e.dismiss();
    }

    private void n() {
        c(2);
        if (this.G) {
            this.o.n();
        } else {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.a().c(false);
            this.z = false;
            MapCurrentStatus n2 = this.p.n();
            if (this.mapContainer.getChildCount() == 1) {
                this.q = new TextureMapView(MiTalkiApp.a());
                this.mapContainer.addView(this.q, new LayoutParams(-1, -1));
                this.o = new com.ifengyu.intercom.ui.map.a(this.n, this.q, this);
                this.o.a(2, false);
                this.o.a((Bundle) null);
            } else {
                this.q.setVisibility(0);
                this.mapContainer.removeViewAt(1);
                this.p.b();
                this.p.c();
                this.p = null;
                this.o.n();
            }
            this.o.a();
            this.o.a(n2);
            this.G = true;
            this.o.d();
            if (this.b) {
                this.o.g();
                this.o.a((com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(w.W())));
            } else {
                this.o.g();
            }
        }
        w.m(2);
        this.e.dismiss();
    }

    private void o() {
        c(3);
        if (this.G) {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.a().c(false);
            this.z = false;
            MapCurrentStatus h2 = this.o.h();
            if (this.mapContainer.getChildCount() == 1) {
                this.r = new MapView(MiTalkiApp.a());
                this.q.setVisibility(4);
                this.mapContainer.addView(this.r, new LayoutParams(-1, -1));
                this.p = new com.ifengyu.intercom.ui.map.b(getActivity(), this.r, this);
                this.p.a(MAP_TYPE.GOOGLE_2D_MAP, false);
            } else {
                this.mapContainer.removeViewAt(1);
                this.o.b();
                this.o.c();
                this.o = null;
                this.p.h();
            }
            this.p.a();
            this.p.a(h2);
            this.G = false;
            this.p.f();
            if (this.b) {
                this.p.e();
                this.p.a((com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(w.W())));
            } else {
                this.p.e();
            }
        } else {
            this.p.h();
        }
        w.m(3);
        this.e.dismiss();
    }

    private void p() {
        c(4);
        if (this.G) {
            this.myLocateIV.setImageResource(R.drawable.home_icon_location);
            MiTalkiApp.a().c(false);
            this.z = false;
            MapCurrentStatus h2 = this.o.h();
            if (this.mapContainer.getChildCount() == 1) {
                this.r = new MapView(MiTalkiApp.a());
                this.q.setVisibility(4);
                this.mapContainer.addView(this.r, new LayoutParams(-1, -1));
                this.p = new com.ifengyu.intercom.ui.map.b(getActivity(), this.r, this);
                this.p.a(MAP_TYPE.GOOGLE_SATELLITE_MAP, false);
            } else {
                this.mapContainer.removeViewAt(1);
                this.o.b();
                this.o.c();
                this.o = null;
                this.p.i();
            }
            this.p.a();
            this.p.a(h2);
            this.G = false;
            this.p.f();
            if (this.b) {
                this.p.e();
                this.p.a((com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(w.W())));
            } else {
                this.p.e();
            }
        } else {
            this.p.i();
        }
        w.m(4);
        this.e.dismiss();
    }

    private void q() {
        s.c("MapFragment", "handleTrackRecordWhenStartUp");
        long W = w.W();
        if (W > 0) {
            this.l = (com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(W));
            if (this.l == null) {
                return;
            }
            if (v.a((Context) getActivity(), TrackRecordService.class.getName())) {
                getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.K, 1);
                this.trackRecordingDataLayout.setVisibility(0);
                this.mapTrackRecordBtn.setVisibility(8);
                this.b = true;
                Integer n2 = this.l.n();
                if (n2 == null) {
                    n2 = Integer.valueOf(0);
                }
                SpannableString spannableString = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", new Object[]{Integer.valueOf(n2.intValue() / 3600), Integer.valueOf((n2.intValue() % 3600) / 60), Integer.valueOf(n2.intValue() % 60)}));
                spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
                this.mapTrackRecordTiming.setText(spannableString);
                Integer o2 = this.l.o();
                if (o2 == null) {
                    o2 = Integer.valueOf(0);
                }
                if (o2.intValue() < 1000) {
                    this.mapTrackRecordDistance.setText(String.valueOf(o2));
                    this.mapTrackRecordDistance.append(this.i);
                    this.mapTrackRecordCompressDistance.setText(String.valueOf(o2));
                    this.mapTrackRecordCompressDistance.append(this.i);
                } else {
                    this.mapTrackRecordDistance.setText(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) o2.intValue()) / 1000.0f)}));
                    this.mapTrackRecordDistance.append(this.g);
                    this.mapTrackRecordCompressDistance.setText(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) o2.intValue()) / 1000.0f)}));
                    this.mapTrackRecordCompressDistance.append(this.g);
                }
                this.mapTrackRecordSpeed.setText("0.0");
                this.mapTrackRecordSpeed.append(this.h);
                this.mapTrackRecordCompressSpeed.setText("0.0");
                this.mapTrackRecordCompressSpeed.append(this.h);
                if (this.l.z().booleanValue()) {
                    this.mapTrackRecordPauseBtn.setText(getString(R.string.common_carry_on));
                    this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_continue_btn_bg));
                } else {
                    this.mapTrackRecordPauseBtn.setText(getString(R.string.common_pause));
                    this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
                }
                if (this.G) {
                    this.o.a(this.l);
                } else {
                    this.p.a(this.l);
                }
            } else if (!this.l.A().booleanValue()) {
                s.c("MapFragment", "track not be saved,so load track info and start TrackRecordService");
                this.k = true;
                this.trackRecordingDataLayout.setVisibility(0);
                this.mapTrackRecordBtn.setVisibility(8);
                this.b = true;
                Integer n3 = this.l.n();
                if (n3 == null) {
                    n3 = Integer.valueOf(0);
                }
                SpannableString spannableString2 = new SpannableString(String.format(Locale.CHINA, "%02d:%02d:%02d", new Object[]{Integer.valueOf(n3.intValue() / 3600), Integer.valueOf((n3.intValue() % 3600) / 60), Integer.valueOf(n3.intValue() % 60)}));
                spannableString2.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString2.length(), 17);
                this.mapTrackRecordTiming.setText(spannableString2);
                Integer o3 = this.l.o();
                if (o3 == null) {
                    o3 = Integer.valueOf(0);
                }
                if (o3.intValue() < 1000) {
                    this.mapTrackRecordDistance.setText(String.valueOf(o3));
                    this.mapTrackRecordDistance.append(this.i);
                    this.mapTrackRecordCompressDistance.setText(String.valueOf(o3));
                    this.mapTrackRecordCompressDistance.append(this.i);
                } else {
                    this.mapTrackRecordDistance.setText(String.format("%.1f", new Object[]{Float.valueOf(((float) o3.intValue()) / 1000.0f)}));
                    this.mapTrackRecordDistance.append(this.g);
                    this.mapTrackRecordCompressDistance.setText(String.format("%.1f", new Object[]{Float.valueOf(((float) o3.intValue()) / 1000.0f)}));
                    this.mapTrackRecordCompressDistance.append(this.g);
                }
                this.mapTrackRecordSpeed.setText("0.0");
                this.mapTrackRecordSpeed.append(this.h);
                this.mapTrackRecordCompressSpeed.setText("0.0");
                this.mapTrackRecordCompressSpeed.append(this.h);
                this.mapTrackRecordPauseBtn.setText(getString(R.string.common_carry_on));
                this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_continue_btn_bg));
                List c2 = MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(this.l.c()), new i[0]).b(Properties.g).a(1).c();
                if (c2.size() == 1) {
                    ((c) c2.get(0)).a(true);
                    MiTalkiApp.a().b().d().insertOrReplace(c2.get(0));
                }
                Intent intent = new Intent(getActivity(), TrackRecordService.class);
                intent.putExtra("is_load_last_not_saved_track", true);
                intent.putExtra("last_not_saved_track_primary_key_id", w.W());
                getActivity().startService(intent);
                getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.K, 1);
            }
        }
    }

    private void r() {
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

    private void s() {
        if (this.mapTrackRecordPauseBtn.getText().equals(getString(R.string.common_pause))) {
            this.mapTrackRecordPauseBtn.setText(getString(R.string.common_carry_on));
            this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_continue_btn_bg));
            if (this.j != null) {
                this.j.a();
            }
        } else if (!((LocationManager) getActivity().getSystemService("location")).isProviderEnabled(GeocodeSearch.GPS)) {
            v.a((CharSequence) ad.a((int) R.string.toast_please_start_gps), true);
            Intent intent = new Intent();
            intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
            intent.setFlags(268435456);
            startActivity(intent);
        } else {
            this.mapTrackRecordPauseBtn.setText(getString(R.string.common_pause));
            this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
            if (this.k) {
                this.k = false;
                if (this.G) {
                    this.o.a(this.l);
                } else {
                    this.p.a(this.l);
                }
            }
            if (this.j != null) {
                this.j.b();
            }
        }
    }

    private void t() {
        if (!((LocationManager) getActivity().getSystemService("location")).isProviderEnabled(GeocodeSearch.GPS)) {
            new com.ifengyu.intercom.ui.widget.dialog.d(getActivity()).b((CharSequence) ad.a((int) R.string.toast_please_start_gps)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    Intent intent = new Intent();
                    intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
                    intent.setFlags(268435456);
                    MapFragment.this.startActivity(intent);
                }
            }).b().c();
        } else {
            new com.ifengyu.intercom.ui.widget.dialog.d(getActivity()).b((CharSequence) ad.a((int) R.string.track_record_ask_start_record_track)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    MapFragment.this.u();
                }
            }).b().c();
        }
    }

    /* access modifiers changed from: private */
    public void u() {
        this.b = true;
        this.trackRecordingDataLayout.setVisibility(0);
        SpannableString spannableString = new SpannableString("00:00:00");
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString.length(), 17);
        this.mapTrackRecordTiming.setText(spannableString);
        this.mapTrackRecordDistance.setText("0");
        this.mapTrackRecordDistance.append(this.i);
        this.mapTrackRecordCompressDistance.setText("0");
        this.mapTrackRecordCompressDistance.append(this.i);
        this.mapTrackRecordSpeed.setText("0.0");
        this.mapTrackRecordSpeed.append(this.h);
        this.mapTrackRecordCompressSpeed.setText("0.0");
        this.mapTrackRecordCompressSpeed.append(this.h);
        this.mapTrackRecordPauseBtn.setText(getString(R.string.common_pause));
        this.mapTrackRecordPauseBtn.setBackground(getResources().getDrawable(R.drawable.track_record_stop_and_close_btn_bg));
        this.mapTrackRecordBtn.setVisibility(8);
        Intent intent = new Intent(getActivity(), TrackRecordService.class);
        intent.putExtra("is_load_last_not_saved_track", false);
        getActivity().startService(intent);
        getActivity().bindService(new Intent(getActivity(), TrackRecordService.class), this.K, 1);
        if (this.G) {
            this.o.f();
        } else {
            this.p.d();
        }
    }

    private void v() {
        View inflate = View.inflate(getActivity(), R.layout.map_tool_kit_layout, null);
        inflate.findViewById(R.id.map_kit_ranging_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_altitude_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_latandlong_btn_layout).setOnClickListener(this);
        this.f = new PopupWindow(inflate, -2, -2);
        this.f.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.f.setFocusable(true);
        this.f.setOutsideTouchable(true);
        this.f.setBackgroundDrawable(new ColorDrawable(0));
        this.f.setOnDismissListener(new OnDismissListener() {
            public void onDismiss() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
                alphaAnimation.setDuration(300);
                alphaAnimation.setAnimationListener(new com.ifengyu.intercom.ui.widget.view.a() {
                    public void onAnimationEnd(Animation animation) {
                        if (MapFragment.this.popupBg != null) {
                            MapFragment.this.popupBg.setVisibility(8);
                        }
                    }
                });
                if (MapFragment.this.popupBg != null) {
                    MapFragment.this.popupBg.startAnimation(alphaAnimation);
                }
            }
        });
        this.popupBg.setBackgroundColor(Integer.MIN_VALUE);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        alphaAnimation.setDuration(300);
        alphaAnimation.setAnimationListener(new com.ifengyu.intercom.ui.widget.view.a() {
            public void onAnimationStart(Animation animation) {
                MapFragment.this.popupBg.setVisibility(0);
            }
        });
        this.popupBg.startAnimation(alphaAnimation);
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        com.ifengyu.intercom.a.a((Activity) getActivity());
        this.f.showAtLocation(this.mapKitBtn, 0, (com.ifengyu.intercom.a.c / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
    }

    private void w() {
        View inflate = View.inflate(getActivity(), R.layout.map_switch_mode_layout, null);
        this.s = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_normal);
        this.u = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_normal_tv);
        this.t = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite);
        this.v = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite_tv);
        this.c = (ImageView) inflate.findViewById(R.id.map_switch_mode_standard);
        this.w = (TextView) inflate.findViewById(R.id.map_switch_mode_standard_tv);
        this.d = (ImageView) inflate.findViewById(R.id.map_switch_mode_satellitic);
        this.x = (TextView) inflate.findViewById(R.id.map_switch_mode_satellitic_tv);
        this.s.setOnClickListener(this);
        this.t.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        if (this.G) {
            if (this.o.o() == 1) {
                c(1);
            } else {
                c(2);
            }
        } else if (this.p.j() == MAP_TYPE.GOOGLE_2D_MAP) {
            c(3);
        } else {
            c(4);
        }
        this.e = new PopupWindow(inflate, -2, -2);
        this.e.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.e.setFocusable(true);
        this.e.setOutsideTouchable(true);
        this.e.setBackgroundDrawable(new ColorDrawable(0));
        this.e.setOnDismissListener(new OnDismissListener() {
            public void onDismiss() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
                alphaAnimation.setDuration(300);
                alphaAnimation.setAnimationListener(new com.ifengyu.intercom.ui.widget.view.a() {
                    public void onAnimationEnd(Animation animation) {
                        if (MapFragment.this.popupBg != null) {
                            MapFragment.this.popupBg.setVisibility(8);
                        }
                    }
                });
                if (MapFragment.this.popupBg != null) {
                    MapFragment.this.popupBg.startAnimation(alphaAnimation);
                }
            }
        });
        this.popupBg.setBackgroundColor(Integer.MIN_VALUE);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        alphaAnimation.setDuration(300);
        alphaAnimation.setAnimationListener(new com.ifengyu.intercom.ui.widget.view.a() {
            public void onAnimationStart(Animation animation) {
                MapFragment.this.popupBg.setVisibility(0);
            }
        });
        this.popupBg.startAnimation(alphaAnimation);
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        com.ifengyu.intercom.a.a((Activity) getActivity());
        this.e.showAtLocation(this.mapKitBtn, 0, (com.ifengyu.intercom.a.c / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
    }

    private void c(int i2) {
        switch (i2) {
            case 1:
                this.s.setImageResource(R.drawable.map_gaode_standard_selected);
                this.u.setTextColor(getResources().getColor(R.color.select_color));
                this.t.setImageResource(R.drawable.map_gaode_satellite_unselected);
                this.v.setTextColor(getResources().getColor(R.color.black80));
                this.c.setImageResource(R.drawable.map_google_standard_unselected);
                this.w.setTextColor(getResources().getColor(R.color.black80));
                this.d.setImageResource(R.drawable.map_google_satellite_unselected);
                this.x.setTextColor(getResources().getColor(R.color.black80));
                return;
            case 2:
                this.s.setImageResource(R.drawable.map_gaode_standard_unselected);
                this.u.setTextColor(getResources().getColor(R.color.black80));
                this.t.setImageResource(R.drawable.map_gaode_satellite_selected);
                this.v.setTextColor(getResources().getColor(R.color.select_color));
                this.c.setImageResource(R.drawable.map_google_standard_unselected);
                this.w.setTextColor(getResources().getColor(R.color.black80));
                this.d.setImageResource(R.drawable.map_google_satellite_unselected);
                this.x.setTextColor(getResources().getColor(R.color.black80));
                return;
            case 3:
                this.s.setImageResource(R.drawable.map_gaode_standard_unselected);
                this.u.setTextColor(getResources().getColor(R.color.black80));
                this.t.setImageResource(R.drawable.map_gaode_satellite_unselected);
                this.v.setTextColor(getResources().getColor(R.color.black80));
                this.c.setImageResource(R.drawable.map_google_standard_selected);
                this.w.setTextColor(getResources().getColor(R.color.select_color));
                this.d.setImageResource(R.drawable.map_google_satellite_unselected);
                this.x.setTextColor(getResources().getColor(R.color.black80));
                return;
            case 4:
                this.s.setImageResource(R.drawable.map_gaode_standard_unselected);
                this.u.setTextColor(getResources().getColor(R.color.black80));
                this.t.setImageResource(R.drawable.map_gaode_satellite_unselected);
                this.v.setTextColor(getResources().getColor(R.color.black80));
                this.c.setImageResource(R.drawable.map_google_standard_unselected);
                this.w.setTextColor(getResources().getColor(R.color.black80));
                this.d.setImageResource(R.drawable.map_google_satellite_selected);
                this.x.setTextColor(getResources().getColor(R.color.select_color));
                return;
            default:
                return;
        }
    }

    private void x() {
        this.z = !this.z;
        this.myLocateIV.setImageResource(this.z ? R.drawable.home_icon_location_open : R.drawable.home_icon_location);
        if (this.G) {
            this.o.a(this.z);
        } else {
            this.p.k();
        }
        MiTalkiApp.a().c(true);
    }

    private void y() {
        if (k.a().b()) {
            this.locationShareIV.setClickable(false);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    MapFragment.this.locationShareIV.setClickable(true);
                }
            }, 500);
            switch (w.ad()) {
                case 1:
                    if (!w.j()) {
                        f.a().a(1);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                        w.a(true);
                        break;
                    } else {
                        f.a().a(0);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                        w.a(false);
                        break;
                    }
                case 4:
                    if (!w.H()) {
                        ab.b(true);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                        break;
                    } else {
                        ab.b(false);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                        break;
                    }
                case 5:
                    if (!w.t()) {
                        aa.a(true);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                        break;
                    } else {
                        aa.a(false);
                        this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                        break;
                    }
            }
            ((MainActivity) getActivity()).a(false, false, getActivity().getString(R.string.please_wait), (int) R.drawable.load_spinner);
        } else if (w.ad() != 1) {
        } else {
            if (w.j()) {
                this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                w.a(false);
                getActivity().stopService(new Intent(getActivity(), ShareLocationService.class));
                return;
            }
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void z() {
        if (this.D) {
            this.D = false;
            if (!w.ag()) {
                MiTalkiApp.n().post(new Runnable() {
                    public void run() {
                        ((MainActivity) MapFragment.this.getActivity()).a((com.ifengyu.intercom.ui.baseui.BaseActivity.a) new com.ifengyu.intercom.ui.baseui.BaseActivity.a() {
                            public void a() {
                                String o = w.o();
                                String K = w.K();
                                if (!TextUtils.isEmpty(o) && !TextUtils.isEmpty(K)) {
                                    com.ifengyu.intercom.a.a.a(K, o, (com.ifengyu.intercom.a.b.b) null);
                                }
                            }

                            public void b() {
                            }

                            public void c() {
                            }
                        });
                    }
                });
            }
        }
    }

    private void a(int i2, int i3) {
        if (this.C) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.arg1 = i2;
            obtain.arg2 = i3;
            this.J.sendMessage(obtain);
        }
    }

    private void A() {
        switch (w.ad()) {
            case 1:
                f.a().b();
                return;
            case 4:
                ab.a();
                return;
            case 5:
                aa.a();
                return;
            case 6:
                com.ifengyu.intercom.b.h.a();
                return;
            default:
                return;
        }
    }

    private void B() {
        MiTalkiApp.n().post(new Runnable() {
            public void run() {
                ((MainActivity) MapFragment.this.getActivity()).d(R.drawable.mine_icon_win);
                ((MainActivity) MapFragment.this.getActivity()).e(R.string.activation_successful);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        ((MainActivity) MapFragment.this.getActivity()).k();
                        if (((MainActivity) MapFragment.this.getActivity()).n != null) {
                            ((MainActivity) MapFragment.this.getActivity()).n.a();
                        }
                    }
                }, 800);
                MiTalkiApp.a().a = true;
                w.p(true);
            }
        });
    }

    public void a(int i2) {
        this.myLocateIV.setImageResource(i2);
        this.z = false;
    }

    public void e() {
        this.J.sendEmptyMessage(5);
        A();
        this.C = true;
        this.D = true;
    }

    public void f() {
        Message obtain = Message.obtain();
        obtain.what = 6;
        obtain.arg1 = 1;
        this.J.sendMessage(obtain);
    }
}
