package com.ifengyu.intercom.ui.map;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.TextureMapView;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.map.e.a.d;
import com.ifengyu.intercom.ui.map.e.a.e;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.widget.dialog.s;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* compiled from: GaoDeMapOperate.java */
/* loaded from: classes2.dex */
public class a implements AMap.OnMyLocationChangeListener, com.ifengyu.intercom.ui.map.e.a.b {

    /* renamed from: a  reason: collision with root package name */
    private Context f6499a;

    /* renamed from: b  reason: collision with root package name */
    private TextureMapView f6500b;

    /* renamed from: c  reason: collision with root package name */
    private AMap f6501c;
    private UiSettings d;
    private MyLocationStyle e;
    private boolean g;
    private d h;
    private ArrayList<com.ifengyu.intercom.ui.map.e.a.c> i;
    private List<com.ifengyu.intercom.ui.map.e.a.c> j;
    private ArrayList<Polyline> k;
    private Marker l;
    private boolean f = true;
    private AdapterView.OnItemClickListener m = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GaoDeMapOperate.java */
    /* renamed from: com.ifengyu.intercom.ui.map.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0167a implements AMap.OnMapLoadedListener {
        C0167a() {
        }

        @Override // com.amap.api.maps.AMap.OnMapLoadedListener
        public void onMapLoaded() {
            double[] r = d0.r();
            a.this.f6501c.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(r[0], r[1], true), 15.0f));
        }
    }

    /* compiled from: GaoDeMapOperate.java */
    /* loaded from: classes2.dex */
    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            new s((Activity) a.this.f6499a, ((e) a.this.j.get(i)).b()).show();
        }
    }

    /* compiled from: GaoDeMapOperate.java */
    /* loaded from: classes2.dex */
    class c extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<com.ifengyu.intercom.ui.map.e.a.c> f6504a;

        public c(List<com.ifengyu.intercom.ui.map.e.a.c> list) {
            this.f6504a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f6504a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(a.this.f6499a, R.layout.friend_cluster_marker_item, null);
            }
            BeanUserLocation b2 = ((e) this.f6504a.get(i)).b();
            CirclrImageView circlrImageView = (CirclrImageView) view.findViewById(R.id.friend_icon);
            ((TextView) view.findViewById(R.id.friend_name)).setText(b2.getName());
            if (b2.getImgUrl() == null || b2.getImgUrl().length() <= 0 || b2.getImgUrl().equals("null")) {
                circlrImageView.setImageDrawable(a.this.f6499a.getResources().getDrawable(R.drawable.my_head_default));
            } else {
                ImageLoader.getInstance().displayImage(b2.getImgUrl(), circlrImageView);
            }
            return view;
        }
    }

    public a(Context context, TextureMapView textureMapView, MapFragment mapFragment) {
        new HashMap();
        this.f6499a = context;
        this.f6500b = textureMapView;
    }

    private void p() {
        String str = k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/style/map_style.data";
        if (new File(str).exists()) {
            this.f6501c.setCustomMapStylePath(str);
            this.f6501c.setMapCustomEnable(true);
        }
    }

    private void q() {
        this.d.setRotateGesturesEnabled(false);
        this.d.setTiltGesturesEnabled(false);
        this.d.setMyLocationButtonEnabled(false);
        this.d.setLogoLeftMargin((int) c0.a(10.0f));
        this.d.setScaleControlsEnabled(true);
        this.d.setZoomControlsEnabled(false);
    }

    public Location d() {
        return this.f6501c.getMyLocation();
    }

    public void e() {
        this.h.b();
        this.f6500b.onDestroy();
    }

    public void f() {
        this.f6500b.onPause();
        this.f6501c.setMyLocationEnabled(false);
    }

    public void g() {
        this.f6500b.onResume();
        if (this.f6501c.getMapType() == 1) {
            p();
        }
        this.e.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f6501c.setMyLocationStyle(this.e);
        this.f6501c.setMyLocationEnabled(true);
        q();
        if (d0.X()) {
            this.f6501c.setLoadOfflineData(true);
            d0.b(false);
        }
    }

    public void h() {
        this.k = new ArrayList<>();
        this.k.add(this.f6501c.addPolyline(new PolylineOptions().width(c0.a(4.0f)).color(this.f6499a.getResources().getColor(R.color.track_record_color))));
    }

    public void i() {
        this.i.clear();
        for (BeanUserLocation beanUserLocation : ShareLocationService.c()) {
            this.i.add(new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        this.h.a();
    }

    public void j() {
        this.h.c();
    }

    public void k() {
        if (this.k != null) {
            for (int i = 0; i < this.k.size(); i++) {
                this.k.get(i).remove();
            }
        }
        Marker marker = this.l;
        if (marker != null) {
            marker.remove();
        }
    }

    public void l() {
        this.f6501c.setMapType(1);
        p();
    }

    public void m() {
        this.f6501c.setMapType(2);
    }

    public void n() {
        this.f6501c.animateCamera(CameraUpdateFactory.zoomIn());
    }

    public void o() {
        this.f6501c.animateCamera(CameraUpdateFactory.zoomOut());
    }

    @Override // com.amap.api.maps.AMap.OnMyLocationChangeListener
    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras == null || extras.getInt(MyLocationStyle.ERROR_CODE) != 0) {
                Log.e("amap", " bundle is null");
                return;
            }
            extras.getInt(MyLocationStyle.LOCATION_TYPE);
            if (MiTalkiApp.b().l()) {
                if (this.f) {
                    this.f = false;
                    this.f6501c.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(location.getLatitude(), location.getLongitude(), true), 15.0f));
                } else if (this.g) {
                    this.f6501c.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(location.getLatitude(), location.getLongitude(), true)));
                }
            }
            if (location.hasAltitude()) {
                d0.a(location.getLatitude(), location.getLongitude(), (int) location.getAltitude());
            } else {
                d0.a(location.getLatitude(), location.getLongitude());
            }
        } else {
            Log.e("amap", "定位失败");
        }
    }

    public void a(int i, boolean z) {
        AMap map = this.f6500b.getMap();
        this.f6501c = map;
        map.setMapType(i);
        if (i == 1) {
            p();
        }
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        this.e = myLocationStyle;
        myLocationStyle.myLocationType(5);
        this.e.interval(2000L);
        this.e.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.e.anchor(0.5f, 0.5f);
        this.e.radiusFillColor(0);
        this.e.strokeColor(0);
        this.e.strokeWidth(0.0f);
        this.f6501c.setMyLocationStyle(this.e);
        this.f6501c.setMaxZoomLevel(18.0f);
        this.f6501c.setOnMyLocationChangeListener(this);
        if (z) {
            this.f6501c.setOnMapLoadedListener(new C0167a());
        }
        this.d = this.f6501c.getUiSettings();
        this.i = new ArrayList<>();
        for (BeanUserLocation beanUserLocation : ShareLocationService.c()) {
            this.i.add(new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        d dVar = new d(this.f6501c, this.i, (int) c0.a(50.0f), MiTalkiApp.b());
        this.h = dVar;
        dVar.a(this);
    }

    public void b(Bundle bundle) {
        this.f6500b.onSaveInstanceState(bundle);
    }

    public MapCurrentStatus c() {
        MapCurrentStatus mapCurrentStatus = new MapCurrentStatus();
        CameraPosition cameraPosition = this.f6501c.getCameraPosition();
        mapCurrentStatus.currentZoomLevel = (int) cameraPosition.zoom;
        LatLng latLng = cameraPosition.target;
        mapCurrentStatus.currentCenterLatitude = latLng.latitude;
        mapCurrentStatus.currentCenterLongitude = latLng.longitude;
        return mapCurrentStatus;
    }

    public CameraPosition b() {
        return this.f6501c.getCameraPosition();
    }

    public void a(Bundle bundle) {
        this.f6500b.onCreate(bundle);
    }

    public void a(BeanUserLocation beanUserLocation) {
        this.h.a(new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
    }

    public void a(com.ifengyu.intercom.greendao.bean.b bVar) {
        if (this.k == null) {
            this.k = new ArrayList<>();
        }
        List<com.ifengyu.intercom.greendao.bean.c> list = MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(bVar.v()), new WhereCondition[0]).orderAsc(TrackPointDao.Properties.CurrentTime).list();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        for (int i = 0; i < list.size(); i++) {
            com.ifengyu.intercom.greendao.bean.c cVar = list.get(i);
            ((ArrayList) arrayList.get(arrayList.size() - 1)).add(new LatLng(cVar.f().intValue() / 1000000.0d, cVar.g().intValue() / 1000000.0d));
            if (cVar.e()) {
                arrayList.add(new ArrayList());
            }
        }
        if (((ArrayList) arrayList.get(0)).size() > 0) {
            Marker addMarker = this.f6501c.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position((LatLng) ((ArrayList) arrayList.get(0)).get(0)).draggable(false).anchor(0.5f, 0.5f));
            this.l = addMarker;
            addMarker.setClickable(false);
            this.l.setInfoWindowEnable(false);
        }
        for (int i2 = 0; i2 < arrayList.size() - 1; i2++) {
            if (((ArrayList) arrayList.get(i2)).size() > 0) {
                int i3 = i2 + 1;
                if (((ArrayList) arrayList.get(i3)).size() > 0) {
                    this.k.add(this.f6501c.addPolyline(new PolylineOptions().add((LatLng) ((ArrayList) arrayList.get(i2)).get(((ArrayList) arrayList.get(i2)).size() - 1), (LatLng) ((ArrayList) arrayList.get(i3)).get(0)).color(this.f6499a.getResources().getColor(R.color.track_record_pause_color)).width(c0.a(4.0f))));
                }
            }
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            this.k.add(this.f6501c.addPolyline(new PolylineOptions().width(c0.a(4.0f)).color(this.f6499a.getResources().getColor(R.color.track_record_color)).addAll((Iterable) arrayList.get(i4))));
        }
    }

    public void a(boolean z, ArrayList<ArrayList<LocationBean>> arrayList, boolean z2) {
        if (!z && arrayList.size() == 1 && arrayList.get(0).size() == 1) {
            Marker addMarker = this.f6501c.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position(new LatLng(arrayList.get(0).get(0).latitude, arrayList.get(0).get(0).longitude)).draggable(false).anchor(0.5f, 0.5f));
            this.l = addMarker;
            addMarker.setClickable(false);
            this.l.setInfoWindowEnable(false);
        }
        if (z2) {
            ArrayList<LocationBean> arrayList2 = arrayList.get(arrayList.size() - 2);
            ArrayList<LocationBean> arrayList3 = arrayList.get(arrayList.size() - 1);
            if (arrayList2.size() > 0 && arrayList3.size() > 0) {
                LatLng latLng = new LatLng(arrayList2.get(arrayList2.size() - 1).latitude, arrayList2.get(arrayList2.size() - 1).longitude);
                LatLng latLng2 = new LatLng(arrayList3.get(0).latitude, arrayList3.get(0).longitude);
                this.k.add(this.f6501c.addPolyline(new PolylineOptions().add(latLng, latLng2).color(this.f6499a.getResources().getColor(R.color.track_record_pause_color)).width(c0.a(4.0f))));
                this.k.add(this.f6501c.addPolyline(new PolylineOptions().add(latLng2).width(c0.a(4.0f)).color(this.f6499a.getResources().getColor(R.color.track_record_color))));
                return;
            }
            return;
        }
        ArrayList<LocationBean> arrayList4 = arrayList.get(arrayList.size() - 1);
        LocationBean locationBean = arrayList4.get(arrayList4.size() - 1);
        ArrayList<Polyline> arrayList5 = this.k;
        Polyline polyline = arrayList5.get(arrayList5.size() - 1);
        polyline.getOptions().add(new LatLng(locationBean.latitude, locationBean.longitude));
        polyline.setPoints(polyline.getOptions().getPoints());
    }

    public void a(MapCurrentStatus mapCurrentStatus) {
        this.f6501c.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(mapCurrentStatus.currentCenterLatitude, mapCurrentStatus.currentCenterLongitude, true), mapCurrentStatus.currentZoomLevel));
    }

    public void a(boolean z) {
        this.g = z;
        if (z) {
            double[] r = d0.r();
            this.f6501c.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(r[0], r[1], true)));
        }
    }

    public int a() {
        return this.f6501c.getMapType();
    }

    @Override // com.ifengyu.intercom.ui.map.e.a.b
    public void a(Marker marker, com.ifengyu.intercom.ui.map.e.a.a aVar) {
        TextureMapView textureMapView;
        this.f6501c.animateCamera(CameraUpdateFactory.newLatLng(aVar.a()));
        List<com.ifengyu.intercom.ui.map.e.a.c> b2 = aVar.b();
        this.j = b2;
        if (b2.size() == 1) {
            new s((Activity) this.f6499a, ((e) this.j.get(0)).b()).show();
            return;
        }
        View inflate = View.inflate(this.f6499a, R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        listView.setAdapter((ListAdapter) new c(this.j));
        listView.setOnItemClickListener(this.m);
        float integer = this.f6499a.getResources().getInteger(R.integer.cluster_marker_friend_list_view_wight);
        float integer2 = this.f6499a.getResources().getInteger(R.integer.cluster_marker_friend_list_view_height);
        if (this.j.size() == 2) {
            integer2 = (integer2 / 3.0f) * 2.0f;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, (int) c0.a(integer), (int) c0.a(integer2));
        popupWindow.setTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.showAsDropDown(this.f6500b, (int) ((textureMapView.getWidth() / 2.0f) - c0.a(integer / 2.0f)), -((int) ((this.f6500b.getHeight() / 2) + c0.a(integer2) + c0.a(40.0f) + c0.a(3.0f))));
    }
}
