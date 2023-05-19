package com.ifengyu.intercom.p216ui.p218c;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.MapView;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MyLocationStyle;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
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
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* renamed from: com.ifengyu.intercom.ui.c.e */
/* loaded from: classes2.dex */
public class GaoDeMapOperate implements AMap.OnMyLocationChangeListener, ClusterClickListener {

    /* renamed from: a */
    private Activity f15080a;

    /* renamed from: b */
    private MapView f15081b;

    /* renamed from: c */
    private AMap f15082c;

    /* renamed from: d */
    private UiSettings f15083d;

    /* renamed from: e */
    private MyLocationStyle f15084e;

    /* renamed from: f */
    private boolean f15085f = true;

    /* renamed from: g */
    private ClusterOverlay f15086g;

    /* renamed from: h */
    private ArrayList<ClusterItem> f15087h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GaoDeMapOperate.java */
    /* renamed from: com.ifengyu.intercom.ui.c.e$a */
    /* loaded from: classes2.dex */
    public class C4467a extends ErrorConsumer {
        C4467a(GaoDeMapOperate gaoDeMapOperate) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    public GaoDeMapOperate(Activity activity, MapView mapView) {
        this.f15080a = activity;
        this.f15081b = mapView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m10254g() {
        double[] m11189r = MiTalkClientUtil.m11189r();
        this.f15082c.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(m11189r[0], m11189r[1], true), 15.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ List m10252i(Long l) throws Exception {
        List<BeanUserLocation> m10691l = ShareLocationService.m10691l();
        this.f15087h.clear();
        for (BeanUserLocation beanUserLocation : m10691l) {
            this.f15087h.add(new ClusterItem(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        return m10691l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m10250k(List list) throws Exception {
        ClusterOverlay clusterOverlay = new ClusterOverlay(this.f15082c, this.f15087h, (int) MethodsUtils.m11292h(50.0f), MiTalkiApp.m14296h());
        this.f15086g = clusterOverlay;
        clusterOverlay.m10209q(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m10248m(List list, AdapterView adapterView, View view, int i, long j) {
        new MapMarkerClickDialog(this.f15080a, ((ClusterItem) list.get(i)).m10228a()).show();
    }

    /* renamed from: v */
    private void m10239v() {
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        this.f15084e = myLocationStyle;
        myLocationStyle.myLocationType(5);
        this.f15084e.interval(2000L);
        this.f15084e.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f15084e.anchor(0.5f, 0.5f);
        this.f15084e.radiusFillColor(0);
        this.f15084e.strokeColor(0);
        this.f15084e.strokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f15082c.setMyLocationStyle(this.f15084e);
        this.f15082c.setMyLocationEnabled(true);
        this.f15082c.setOnMyLocationChangeListener(this);
    }

    /* renamed from: w */
    private void m10238w() {
        int m11199m = MiTalkClientUtil.m11199m();
        if (m11199m == 1 || m11199m == 2) {
            this.f15082c.setMapType(m11199m);
            if (m11199m == 1) {
                m10237x();
            }
        }
    }

    /* renamed from: x */
    private void m10237x() {
        String str = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style.data";
        String str2 = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style_extra.data";
    }

    /* renamed from: y */
    private void m10236y() {
        UiSettings uiSettings = this.f15082c.getUiSettings();
        this.f15083d = uiSettings;
        uiSettings.setRotateGesturesEnabled(false);
        this.f15083d.setTiltGesturesEnabled(false);
        this.f15083d.setMyLocationButtonEnabled(false);
        this.f15083d.setLogoLeftMargin((int) MethodsUtils.m11292h(10.0f));
        this.f15083d.setScaleControlsEnabled(true);
        this.f15083d.setZoomControlsEnabled(false);
    }

    /* renamed from: A */
    public void m10263A() {
        this.f15082c.setMapType(2);
    }

    /* renamed from: B */
    public void m10262B() {
        this.f15082c.animateCamera(CameraUpdateFactory.zoomIn());
    }

    /* renamed from: C */
    public void m10261C() {
        this.f15082c.animateCamera(CameraUpdateFactory.zoomOut());
    }

    /* renamed from: a */
    public void m10260a(BeanUserLocation beanUserLocation) {
        this.f15086g.m10220f(new ClusterItem(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
    }

    /* renamed from: b */
    public int m10259b() {
        return this.f15082c.getMapType();
    }

    /* renamed from: c */
    public CameraPosition m10258c() {
        return this.f15082c.getCameraPosition();
    }

    /* renamed from: d */
    public Location m10257d() {
        return this.f15082c.getMyLocation();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: e */
    public void m10256e(boolean z) {
        AMap map = this.f15081b.getMap();
        this.f15082c = map;
        map.setMaxZoomLevel(18.0f);
        m10238w();
        m10239v();
        m10236y();
        if (z) {
            this.f15082c.setOnMapLoadedListener(new AMap.OnMapLoadedListener() { // from class: com.ifengyu.intercom.ui.c.d
                @Override // com.amap.api.maps.AMap.OnMapLoadedListener
                public final void onMapLoaded() {
                    GaoDeMapOperate.this.m10254g();
                }
            });
        }
        this.f15087h = new ArrayList<>();
        Observable.timer(1000L, TimeUnit.MILLISECONDS).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.c.a
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return GaoDeMapOperate.this.m10252i((Long) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.c.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GaoDeMapOperate.this.m10250k((List) obj);
            }
        }, new C4467a(this));
    }

    /* renamed from: n */
    public void m10247n(boolean z) {
        if (z) {
            double[] m11189r = MiTalkClientUtil.m11189r();
            this.f15082c.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(m11189r[0], m11189r[1], true)));
        }
    }

    /* renamed from: o */
    public void m10246o(Bundle bundle) {
        this.f15081b.onCreate(bundle);
    }

    @Override // com.amap.api.maps.AMap.OnMyLocationChangeListener
    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras != null && extras.getInt(MyLocationStyle.ERROR_CODE) == 0) {
                extras.getInt(MyLocationStyle.LOCATION_TYPE);
                if (this.f15085f) {
                    this.f15085f = false;
                    this.f15082c.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(location.getLatitude(), location.getLongitude(), true), 15.0f));
                } else if (MiTalkiApp.m14296h().m14282v()) {
                    this.f15082c.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(location.getLatitude(), location.getLongitude(), true)));
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
            return;
        }
        Log.e("amap", "定位失败");
    }

    /* renamed from: p */
    public void m10245p() {
        ClusterOverlay clusterOverlay = this.f15086g;
        if (clusterOverlay != null) {
            clusterOverlay.m10211o();
        }
        this.f15081b.onDestroy();
    }

    /* renamed from: q */
    public void m10244q() {
        this.f15081b.onPause();
        this.f15082c.setMyLocationEnabled(false);
    }

    /* renamed from: r */
    public void m10243r() {
        this.f15081b.onResume();
        this.f15084e.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f15082c.setMyLocationStyle(this.f15084e);
        this.f15082c.setMyLocationEnabled(true);
        if (MiTalkClientUtil.m11227X()) {
            this.f15082c.setLoadOfflineData(true);
            MiTalkClientUtil.m11210g0(false);
        }
    }

    /* renamed from: s */
    public void m10242s(Bundle bundle) {
        this.f15081b.onSaveInstanceState(bundle);
    }

    @Override // com.ifengyu.intercom.p216ui.p218c.p220g.ClusterClickListener
    /* renamed from: s1 */
    public void mo10229s1(Marker marker, Cluster cluster) {
        MapView mapView;
        this.f15082c.animateCamera(CameraUpdateFactory.newLatLng(cluster.m10233b()));
        final List<ClusterItem> m10232c = cluster.m10232c();
        if (m10232c.size() == 1) {
            new MapMarkerClickDialog(this.f15080a, m10232c.get(0).m10228a()).show();
            return;
        }
        View inflate = View.inflate(this.f15080a, R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        listView.setAdapter((ListAdapter) new MyFriendBaseAdapter(m10232c));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ifengyu.intercom.ui.c.c
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                GaoDeMapOperate.this.m10248m(m10232c, adapterView, view, i, j);
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
        popupWindow.showAsDropDown(this.f15081b, (int) ((mapView.getWidth() / 2.0f) - MethodsUtils.m11292h(integer / 2.0f)), -((int) ((this.f15081b.getHeight() / 2) + MethodsUtils.m11292h(integer2) + MethodsUtils.m11292h(40.0f) + MethodsUtils.m11292h(3.0f))));
    }

    /* renamed from: t */
    public void m10241t() {
        this.f15087h.clear();
        for (BeanUserLocation beanUserLocation : ShareLocationService.m10691l()) {
            this.f15087h.add(new ClusterItem(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        this.f15086g.m10217i();
    }

    /* renamed from: u */
    public void m10240u() {
        this.f15086g.m10210p();
    }

    /* renamed from: z */
    public void m10235z() {
        this.f15082c.setMapType(1);
        m10237x();
    }
}
