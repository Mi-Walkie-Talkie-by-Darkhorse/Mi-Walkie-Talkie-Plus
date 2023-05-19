package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.MapView;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MyLocationStyle;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.device.mi3.models.Mi3DeviceParamLiveData;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.event.OfflineMapDownloadedEvent;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p188k.FragmentMi3ShareLocationBinding;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.LocationUtil;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.PopupUtils;
import com.ifengyu.intercom.p216ui.activity.GaoDeMapToolOperateActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.p218c.p219f.MyFriendBaseAdapter;
import com.ifengyu.intercom.p216ui.p218c.p220g.Cluster;
import com.ifengyu.intercom.p216ui.p218c.p220g.ClusterClickListener;
import com.ifengyu.intercom.p216ui.p218c.p220g.ClusterItem;
import com.ifengyu.intercom.p216ui.p218c.p220g.ClusterOverlay;
import com.ifengyu.intercom.p216ui.widget.dialog.MapMarkerClickDialog;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* renamed from: com.ifengyu.intercom.l.b.c.v1 */
/* loaded from: classes2.dex */
public class Mi3ShareLocationFragment extends BaseFragment implements View.OnClickListener, AMap.OnMyLocationChangeListener, ClusterClickListener {

    /* renamed from: A */
    protected Mi3ViewModel f14213A;

    /* renamed from: B */
    private AMap f14214B;

    /* renamed from: C */
    private MyLocationStyle f14215C;

    /* renamed from: D */
    private UiSettings f14216D;

    /* renamed from: E */
    private boolean f14217E = true;

    /* renamed from: F */
    private ArrayList<ClusterItem> f14218F;

    /* renamed from: G */
    private ClusterOverlay f14219G;

    /* renamed from: H */
    private PopupWindow f14220H;

    /* renamed from: I */
    private PopupWindow f14221I;

    /* renamed from: J */
    private ImageView f14222J;

    /* renamed from: K */
    private ImageView f14223K;

    /* renamed from: L */
    private TextView f14224L;

    /* renamed from: M */
    private TextView f14225M;

    /* renamed from: z */
    private FragmentMi3ShareLocationBinding f14226z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ShareLocationFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.v1$a */
    /* loaded from: classes2.dex */
    public class C4052a extends ErrorConsumer {
        C4052a(Mi3ShareLocationFragment mi3ShareLocationFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m11659B3(List list, AdapterView adapterView, View view, int i, long j) {
        new MapMarkerClickDialog(getActivity(), ((ClusterItem) list.get(i)).m10228a()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m11657D3() {
        PopupUtils.m11170b(getContext(), this.f14221I, 0.6f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m11655F3() {
        PopupUtils.m11170b(getContext(), this.f14220H, 1.0f);
    }

    /* renamed from: G3 */
    private void m11654G3() {
        boolean m14282v = MiTalkiApp.m14296h().m14282v();
        MiTalkiApp.m14296h().m14302H(!m14282v);
        this.f14226z.f14029A.setImageResource(!m14282v ? R.drawable.home_icon_location_open : R.drawable.home_icon_location);
        if (m14282v) {
            double[] m11189r = MiTalkClientUtil.m11189r();
            this.f14214B.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(m11189r[0], m11189r[1], true)));
        }
    }

    /* renamed from: H3 */
    private void m11653H3(int i) {
        if (i == 1) {
            this.f14222J.setImageResource(R.drawable.map_gaode_standard_selected);
            this.f14224L.setTextColor(getResources().getColor(R.color.select_color));
            this.f14223K.setImageResource(R.drawable.map_gaode_satellite_unselected);
            this.f14225M.setTextColor(getResources().getColor(R.color.black80));
        } else if (i != 2) {
        } else {
            this.f14222J.setImageResource(R.drawable.map_gaode_standard_unselected);
            this.f14224L.setTextColor(getResources().getColor(R.color.black80));
            this.f14223K.setImageResource(R.drawable.map_gaode_satellite_selected);
            this.f14225M.setTextColor(getResources().getColor(R.color.select_color));
        }
    }

    /* renamed from: I3 */
    public static Mi3ShareLocationFragment m11652I3() {
        Mi3ShareLocationFragment mi3ShareLocationFragment = new Mi3ShareLocationFragment();
        mi3ShareLocationFragment.setArguments(new Bundle());
        return mi3ShareLocationFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public void m11624z3(Mi3ChannelState mi3ChannelState) {
        ChannelModel ch2Model;
        if (mi3ChannelState == null) {
            return;
        }
        if (this.f14213A.m11461w().getCurChIndex() == 1) {
            ch2Model = mi3ChannelState.getCh1Model() != null ? mi3ChannelState.getCh1Model() : mi3ChannelState.getCh2Model();
        } else {
            ch2Model = mi3ChannelState.getCh2Model() != null ? mi3ChannelState.getCh2Model() : mi3ChannelState.getCh1Model();
        }
        if (ch2Model != null) {
            this.f14226z.f14030B.setTitleText(ch2Model.getDisplayName());
            this.f14226z.f14030B.setValueText(ch2Model.getDisplayReceiveFreq());
        }
    }

    /* renamed from: K3 */
    private void m11650K3() {
        Location m11055a = LocationUtil.m11055a(getActivity());
        if (m11055a != null) {
            Bundle extras = m11055a.getExtras();
            if (extras != null && extras.getInt(MyLocationStyle.ERROR_CODE) == 0) {
                extras.getInt(MyLocationStyle.LOCATION_TYPE);
                if (this.f14217E) {
                    this.f14217E = false;
                    this.f14214B.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(m11055a.getLatitude(), m11055a.getLongitude(), true), 15.0f));
                } else if (MiTalkiApp.m14296h().m14282v()) {
                    this.f14214B.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(m11055a.getLatitude(), m11055a.getLongitude(), true)));
                }
                if (m11055a.hasAltitude()) {
                    MiTalkClientUtil.m11200l0(m11055a.getLatitude(), m11055a.getLongitude(), (int) m11055a.getAltitude());
                    return;
                } else {
                    MiTalkClientUtil.m11202k0(m11055a.getLatitude(), m11055a.getLongitude());
                    return;
                }
            }
            Log.e("amap", " setLocation  bundle is null");
        }
    }

    /* renamed from: L3 */
    private void m11649L3() {
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        this.f14215C = myLocationStyle;
        myLocationStyle.myLocationType(5);
        this.f14215C.interval(5000L);
        this.f14215C.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f14215C.anchor(0.5f, 0.5f);
        this.f14215C.radiusFillColor(0);
        this.f14215C.strokeColor(0);
        this.f14215C.strokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f14214B.setMyLocationStyle(this.f14215C);
        this.f14214B.setMyLocationEnabled(true);
        this.f14214B.setOnMyLocationChangeListener(this);
    }

    /* renamed from: M3 */
    private void m11648M3() {
        int m11199m = MiTalkClientUtil.m11199m();
        if (m11199m == 1 || m11199m == 2) {
            this.f14214B.setMapType(m11199m);
            if (m11199m == 1) {
                m11647N3();
            }
        }
    }

    /* renamed from: N3 */
    private void m11647N3() {
        String str = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style.data";
        String str2 = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style_extra.data";
    }

    /* renamed from: O3 */
    private void m11646O3() {
        UiSettings uiSettings = this.f14214B.getUiSettings();
        this.f14216D = uiSettings;
        uiSettings.setRotateGesturesEnabled(false);
        this.f14216D.setTiltGesturesEnabled(false);
        this.f14216D.setMyLocationButtonEnabled(false);
        this.f14216D.setLogoLeftMargin((int) MethodsUtils.m11292h(10.0f));
        this.f14216D.setScaleControlsEnabled(true);
        this.f14216D.setZoomControlsEnabled(false);
    }

    /* renamed from: P3 */
    private void m11645P3() {
        if (getContext() == null) {
            return;
        }
        View inflate = View.inflate(getContext(), R.layout.map_tool_kit_layout, null);
        inflate.findViewById(R.id.map_kit_ranging_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_latandlong_btn_layout).setOnClickListener(this);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.f14221I = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.f14221I.setFocusable(true);
        this.f14221I.setOutsideTouchable(true);
        this.f14221I.setBackgroundDrawable(new ColorDrawable(0));
        this.f14221I.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.ifengyu.intercom.l.b.c.u0
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                Mi3ShareLocationFragment.this.m11657D3();
            }
        });
        int[] iArr = new int[2];
        this.f14226z.f14035w.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        Variables.m12426c(getActivity());
        this.f14221I.showAtLocation(this.f14226z.f14035w, 0, (Variables.f13702a / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        PopupUtils.m11170b(getContext(), this.f14221I, 0.6f);
    }

    /* renamed from: Q3 */
    private void m11644Q3() {
        if (getContext() == null) {
            return;
        }
        View inflate = View.inflate(getContext(), R.layout.map_switch_mode_layout, null);
        this.f14222J = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_normal);
        this.f14224L = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_normal_tv);
        this.f14223K = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite);
        this.f14225M = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite_tv);
        this.f14222J.setOnClickListener(this);
        this.f14223K.setOnClickListener(this);
        if (this.f14214B.getMapType() == 1) {
            m11653H3(1);
        } else {
            m11653H3(2);
        }
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.f14220H = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.f14220H.setFocusable(true);
        this.f14220H.setOutsideTouchable(true);
        this.f14220H.setBackgroundDrawable(new ColorDrawable(0));
        this.f14220H.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.ifengyu.intercom.l.b.c.y0
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                Mi3ShareLocationFragment.this.m11655F3();
            }
        });
        int[] iArr = new int[2];
        this.f14226z.f14036x.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        Variables.m12426c(getActivity());
        this.f14220H.showAtLocation(this.f14226z.f14035w, 0, (Variables.f13702a / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        PopupUtils.m11170b(getContext(), this.f14220H, 0.6f);
    }

    /* renamed from: h3 */
    private void m11642h3() {
        this.f14220H.dismiss();
        m11653H3(1);
        this.f14214B.setMapType(1);
        m11647N3();
        MiTalkClientUtil.m11208h0(1);
    }

    /* renamed from: i3 */
    private void m11641i3() {
        this.f14220H.dismiss();
        m11653H3(2);
        this.f14214B.setMapType(2);
        MiTalkClientUtil.m11208h0(2);
    }

    /* renamed from: j3 */
    private void m11640j3() {
        AMap map = this.f14226z.f14032D.getMap();
        this.f14214B = map;
        map.setMaxZoomLevel(18.0f);
        m11648M3();
        m11649L3();
        m11646O3();
        this.f14214B.setOnMapLoadedListener(new AMap.OnMapLoadedListener() { // from class: com.ifengyu.intercom.l.b.c.s0
            @Override // com.amap.api.maps.AMap.OnMapLoadedListener
            public final void onMapLoaded() {
                Mi3ShareLocationFragment.this.m11636n3();
            }
        });
        if (MiTalkClientUtil.m11227X()) {
            this.f14214B.setLoadOfflineData(true);
            MiTalkClientUtil.m11210g0(false);
        }
        this.f14218F = new ArrayList<>();
        ((ObservableSubscribeProxy) Observable.timer(1000L, TimeUnit.MILLISECONDS).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.l.b.c.x0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Mi3ShareLocationFragment.this.m11634p3((Long) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.l.b.c.w0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3ShareLocationFragment.this.m11632r3((List) obj);
            }
        }, new C4052a(this));
    }

    /* renamed from: k3 */
    private void m11639k3() {
        if (getActivity() == null) {
            return;
        }
        this.f14226z.f14033E.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3ShareLocationFragment.this.m11630t3(view);
            }
        });
        this.f14226z.f14033E.m7338p(R.string.device_setting_public_my_location);
        m11640j3();
        this.f14226z.f14031C.getSwitch().setChecked(this.f14213A.m11461w().isShareLoc());
        Mi3ChannelState value = this.f14213A.m11464t().getValue();
        if (value != null) {
            m11625y3(value);
        }
    }

    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: l3 */
    private void m11638l3() {
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14213A = mi3ViewModel;
        mi3ViewModel.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.v0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ShareLocationFragment.this.m11628v3((OperationResult) obj);
            }
        });
        this.f14213A.m11461w().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.z0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ShareLocationFragment.this.m11626x3((Mi3DeviceParamLiveData) obj);
            }
        });
        this.f14213A.m11464t().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.t0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ShareLocationFragment.this.m11624z3((Mi3ChannelState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m11636n3() {
        double[] m11189r = MiTalkClientUtil.m11189r();
        this.f14214B.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(m11189r[0], m11189r[1], true), 15.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ List m11634p3(Long l) throws Exception {
        List<BeanUserLocation> m10691l = ShareLocationService.m10691l();
        this.f14218F.clear();
        for (BeanUserLocation beanUserLocation : m10691l) {
            this.f14218F.add(new ClusterItem(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        return m10691l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11632r3(List list) throws Exception {
        ClusterOverlay clusterOverlay = new ClusterOverlay(this.f14214B, this.f14218F, (int) MethodsUtils.m11292h(50.0f), MiTalkiApp.m14296h());
        this.f14219G = clusterOverlay;
        clusterOverlay.m10209q(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11630t3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m11628v3(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        int status = operationResult.getStatus();
        String action = operationResult.getAction();
        action.hashCode();
        if (action.equals(OperationResult.ACTION_STOP_SHARE_LOCATION)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.share_location_closed));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.set_failed));
            }
        } else if (action.equals(OperationResult.ACTION_OPEN_SHARE_LOCATION)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.share_location_opened));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.set_failed));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m11626x3(Mi3DeviceParamLiveData mi3DeviceParamLiveData) {
        this.f14226z.f14031C.getSwitch().setChecked(mi3DeviceParamLiveData.isShareLoc());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentMi3ShareLocationBinding fragmentMi3ShareLocationBinding = (FragmentMi3ShareLocationBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_mi3_share_location, null, false);
        this.f14226z = fragmentMi3ShareLocationBinding;
        fragmentMi3ShareLocationBinding.m23011A(getActivity());
        this.f14226z.setClickListener(this);
        m11638l3();
        MiBus.getInstance().m6411j(this);
        return this.f14226z.mo23006a();
    }

    /* renamed from: g3 */
    public void m11643g3(BeanUserLocation beanUserLocation) {
        this.f14219G.m10220f(new ClusterItem(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
    }

    @Subscribe
    public void onBeanUserLocationChanged(BeanUserLocation beanUserLocation) {
        m11643g3(beanUserLocation);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.itemShareLocation) {
            if (this.f14226z.f14031C.getSwitch().isChecked()) {
                this.f14213A.m11471o0();
            } else {
                this.f14213A.m11473n0();
            }
        } else if (id == R.id.btnMyLocate) {
            m11654G3();
        } else if (id == R.id.btnMapZoomBig) {
            this.f14214B.animateCamera(CameraUpdateFactory.zoomIn());
        } else if (id == R.id.btnMapZoomSmall) {
            this.f14214B.animateCamera(CameraUpdateFactory.zoomOut());
        } else if (id == R.id.btnMapKit) {
            m11645P3();
        } else if (id == R.id.btnMapKitTypeStitch) {
            m11644Q3();
        } else if (id == R.id.map_kit_ranging_btn_layout) {
            this.f14221I.dismiss();
            Intent intent = new Intent(getContext(), GaoDeMapToolOperateActivity.class);
            intent.putExtra("map_kit_measure_what", "measure_distance");
            intent.putExtra("gaode_map_cameraposition", this.f14214B.getCameraPosition());
            startActivity(intent);
        } else if (id != R.id.map_kit_latandlong_btn_layout) {
            if (id == R.id.map_switch_mode_gaode_normal) {
                m11642h3();
            } else if (id == R.id.map_switch_mode_gaode_satellite) {
                m11641i3();
            }
        } else {
            this.f14221I.dismiss();
            Intent intent2 = new Intent(getContext(), GaoDeMapToolOperateActivity.class);
            intent2.putExtra("map_kit_measure_what", "measure_latLong");
            intent2.putExtra("gaode_map_cameraposition", this.f14214B.getCameraPosition());
            Location myLocation = this.f14214B.getMyLocation();
            intent2.putExtra("gaode_my_location_longitude", myLocation.getLongitude());
            intent2.putExtra("gaode_my_location_latitude", myLocation.getLatitude());
            startActivity(intent2);
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f14226z.f14032D.onDestroy();
        ClusterOverlay clusterOverlay = this.f14219G;
        if (clusterOverlay != null) {
            clusterOverlay.m10211o();
        }
        this.f14213A.m11493d0();
        MiBus.getInstance().m6409l(this);
    }

    @Override // com.amap.api.maps.AMap.OnMyLocationChangeListener
    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras != null && extras.getInt(MyLocationStyle.ERROR_CODE) == 0) {
                extras.getInt(MyLocationStyle.LOCATION_TYPE);
                if (this.f14217E) {
                    this.f14217E = false;
                    this.f14214B.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(location.getLatitude(), location.getLongitude(), true), 15.0f));
                } else if (MiTalkiApp.m14296h().m14282v()) {
                    this.f14214B.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(location.getLatitude(), location.getLongitude(), true)));
                }
                if (location.hasAltitude()) {
                    MiTalkClientUtil.m11200l0(location.getLatitude(), location.getLongitude(), (int) location.getAltitude());
                    return;
                } else {
                    MiTalkClientUtil.m11202k0(location.getLatitude(), location.getLongitude());
                    return;
                }
            }
            Log.e("amap", " bundle is null");
            m11650K3();
            return;
        }
        Log.e("amap", "定位失败");
        m11650K3();
    }

    @Subscribe
    public void onOfflineDownloadedEvent(OfflineMapDownloadedEvent offlineMapDownloadedEvent) {
        C4161y.m11054a(this.f15047y, "setLoadOffline(), reloadMap()--------");
        this.f14214B.setLoadOfflineData(false);
        this.f14214B.setLoadOfflineData(true);
        this.f14214B.reloadMap();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f14226z.f14032D.onPause();
        this.f14214B.setMyLocationEnabled(false);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C4161y.m11054a(this.f15047y, "onResume()--------");
        this.f14226z.f14032D.onResume();
        this.f14215C.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f14214B.setMyLocationStyle(this.f14215C);
        this.f14214B.setMyLocationEnabled(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f14226z.f14032D.onSaveInstanceState(bundle);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f14226z.f14032D.onCreate(bundle);
        m11639k3();
        m10316T2("android.permission.ACCESS_FINE_LOCATION");
    }

    @Override // com.ifengyu.intercom.p216ui.p218c.p220g.ClusterClickListener
    /* renamed from: s1 */
    public void mo10229s1(Marker marker, Cluster cluster) {
        MapView mapView;
        this.f14214B.animateCamera(CameraUpdateFactory.newLatLng(cluster.m10233b()));
        final List<ClusterItem> m10232c = cluster.m10232c();
        if (m10232c.size() == 1) {
            new MapMarkerClickDialog(getActivity(), m10232c.get(0).m10228a()).show();
            return;
        }
        View inflate = View.inflate(getActivity(), R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        listView.setAdapter((ListAdapter) new MyFriendBaseAdapter(m10232c));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ifengyu.intercom.l.b.c.a1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                Mi3ShareLocationFragment.this.m11659B3(m10232c, adapterView, view, i, j);
            }
        });
        float integer = UIUtils.m8606l().getInteger(R.integer.cluster_marker_friend_list_view_wight);
        float integer2 = UIUtils.m8606l().getInteger(R.integer.cluster_marker_friend_list_view_height);
        if (m10232c.size() == 2) {
            integer2 = (integer2 / 3.0f) * 2.0f;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, (int) MethodsUtils.m11292h(integer), (int) MethodsUtils.m11292h(integer2));
        popupWindow.setTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.showAsDropDown(this.f14226z.f14032D, (int) ((mapView.getWidth() / 2.0f) - MethodsUtils.m11292h(integer / 2.0f)), -((int) ((this.f14226z.f14032D.getHeight() / 2) + MethodsUtils.m11292h(integer2) + MethodsUtils.m11292h(40.0f) + MethodsUtils.m11292h(3.0f))));
    }
}
