package com.ifengyu.intercom.ui.map;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMyLocationChangeListener;
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
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.greendao.dao.TrackPointDao.Properties;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.map.c.a.b;
import com.ifengyu.intercom.ui.map.c.a.c;
import com.ifengyu.intercom.ui.map.c.a.d;
import com.ifengyu.intercom.ui.map.c.a.e;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.widget.dialog.t;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.greenrobot.greendao.c.i;

/* compiled from: GaoDeMapOperate */
public class a implements OnMyLocationChangeListener, b {
    /* access modifiers changed from: private */
    public Context a;
    private TextureMapView b;
    private MapFragment c;
    /* access modifiers changed from: private */
    public AMap d;
    private UiSettings e;
    private MyLocationStyle f;
    private boolean g = true;
    private boolean h;
    private d i;
    private Map<Integer, Drawable> j = new HashMap();
    private ArrayList<c> k;
    /* access modifiers changed from: private */
    public List<c> l;
    private ArrayList<Polyline> m;
    private Marker n;
    private OnItemClickListener o = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            new t((Activity) a.this.a, ((e) a.this.l.get(i)).c()).show();
        }
    };

    /* renamed from: com.ifengyu.intercom.ui.map.a$a reason: collision with other inner class name */
    /* compiled from: GaoDeMapOperate */
    class C0035a extends BaseAdapter {
        private List<c> b;

        public C0035a(List<c> list) {
            this.b = list;
        }

        public int getCount() {
            return this.b.size();
        }

        public Object getItem(int i) {
            return null;
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(a.this.a, R.layout.friend_cluster_marker_item, null);
            }
            BeanUserLocation c = ((e) this.b.get(i)).c();
            CirclrImageView circlrImageView = (CirclrImageView) view.findViewById(R.id.friend_icon);
            ((TextView) view.findViewById(R.id.friend_name)).setText(c.getName());
            if (c.getImgUrl() == null || c.getImgUrl().length() <= 0 || c.getImgUrl().equals("null")) {
                circlrImageView.setImageDrawable(a.this.a.getResources().getDrawable(R.drawable.my_head_default));
            } else {
                ImageLoader.getInstance().displayImage(c.getImgUrl(), (ImageView) circlrImageView);
            }
            return view;
        }
    }

    public a(Context context, TextureMapView textureMapView, MapFragment mapFragment) {
        this.a = context;
        this.b = textureMapView;
        this.c = mapFragment;
    }

    public void a(int i2, boolean z) {
        this.d = this.b.getMap();
        this.d.setMapType(i2);
        if (i2 == 1) {
            q();
        }
        this.f = new MyLocationStyle();
        this.f.myLocationType(5);
        this.f.interval(2000);
        this.f.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.f.anchor(0.5f, 0.5f);
        this.f.radiusFillColor(0);
        this.f.strokeColor(0);
        this.f.strokeWidth(0.0f);
        this.d.setMyLocationStyle(this.f);
        this.d.setMaxZoomLevel(18.0f);
        this.d.setOnMyLocationChangeListener(this);
        if (z) {
            this.d.setOnMapLoadedListener(new OnMapLoadedListener() {
                public void onMapLoaded() {
                    double[] Y = w.Y();
                    a.this.d.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(Y[0], Y[1], true), 15.0f));
                }
            });
        }
        this.e = this.d.getUiSettings();
        this.k = new ArrayList<>();
        for (BeanUserLocation beanUserLocation : ShareLocationService.b()) {
            this.k.add(new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        this.i = new d(this.d, this.k, (int) v.a(50.0f), MiTalkiApp.a());
        this.i.a((b) this);
    }

    private void p() {
        this.e.setRotateGesturesEnabled(false);
        this.e.setTiltGesturesEnabled(false);
        this.e.setMyLocationButtonEnabled(false);
        this.e.setLogoLeftMargin((int) v.a(10.0f));
        this.e.setScaleControlsEnabled(true);
        this.e.setZoomControlsEnabled(false);
    }

    public void a(Bundle bundle) {
        this.b.onCreate(bundle);
    }

    public void a() {
        this.b.onResume();
        if (this.d.getMapType() == 1) {
            q();
        }
        this.f.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        this.d.setMyLocationStyle(this.f);
        this.d.setMyLocationEnabled(true);
        p();
        if (w.aa()) {
            this.d.setLoadOfflineData(true);
            w.m(false);
        }
    }

    private void q() {
        String str = Environment.getExternalStorageDirectory() + "/" + "mitalki/map/style" + "/" + "map_style.data";
        if (new File(str).exists()) {
            this.d.setCustomMapStylePath(str);
            this.d.setMapCustomEnable(true);
        }
    }

    public void b() {
        this.b.onPause();
        this.d.setMyLocationEnabled(false);
    }

    public void b(Bundle bundle) {
        this.b.onSaveInstanceState(bundle);
    }

    public void c() {
        this.i.a();
        this.b.onDestroy();
    }

    public void a(BeanUserLocation beanUserLocation) {
        this.i.a((c) new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
    }

    public void d() {
        this.k.clear();
        for (BeanUserLocation beanUserLocation : ShareLocationService.b()) {
            this.k.add(new e(new LatLng(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble(), false), beanUserLocation));
        }
        this.i.c();
    }

    public void e() {
        this.i.b();
    }

    public void a(com.ifengyu.intercom.greendao.bean.b bVar) {
        if (this.m == null) {
            this.m = new ArrayList<>();
        }
        List c2 = MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(bVar.c()), new i[0]).a(Properties.g).c();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= c2.size()) {
                break;
            }
            com.ifengyu.intercom.greendao.bean.c cVar = (com.ifengyu.intercom.greendao.bean.c) c2.get(i3);
            ((ArrayList) arrayList.get(arrayList.size() - 1)).add(new LatLng(((double) cVar.c().intValue()) / 1000000.0d, ((double) cVar.d().intValue()) / 1000000.0d));
            if (cVar.h()) {
                arrayList.add(new ArrayList());
            }
            i2 = i3 + 1;
        }
        if (((ArrayList) arrayList.get(0)).size() > 0) {
            this.n = this.d.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position((LatLng) ((ArrayList) arrayList.get(0)).get(0)).draggable(false).anchor(0.5f, 0.5f));
            this.n.setClickable(false);
            this.n.setInfoWindowEnable(false);
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= arrayList.size() - 1) {
                break;
            }
            if (((ArrayList) arrayList.get(i5)).size() > 0 && ((ArrayList) arrayList.get(i5 + 1)).size() > 0) {
                LatLng latLng = (LatLng) ((ArrayList) arrayList.get(i5)).get(((ArrayList) arrayList.get(i5)).size() - 1);
                LatLng latLng2 = (LatLng) ((ArrayList) arrayList.get(i5 + 1)).get(0);
                this.m.add(this.d.addPolyline(new PolylineOptions().add(latLng, latLng2).color(this.a.getResources().getColor(R.color.track_record_pause_color)).width(v.a(4.0f))));
            }
            i4 = i5 + 1;
        }
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < arrayList.size()) {
                this.m.add(this.d.addPolyline(new PolylineOptions().width(v.a(4.0f)).color(this.a.getResources().getColor(R.color.track_record_color)).addAll((Iterable) arrayList.get(i7))));
                i6 = i7 + 1;
            } else {
                return;
            }
        }
    }

    public void f() {
        this.m = new ArrayList<>();
        this.m.add(this.d.addPolyline(new PolylineOptions().width(v.a(4.0f)).color(this.a.getResources().getColor(R.color.track_record_color))));
    }

    public void a(boolean z, ArrayList<ArrayList<LocationBean>> arrayList, boolean z2) {
        if (!z && arrayList.size() == 1 && ((ArrayList) arrayList.get(0)).size() == 1) {
            this.n = this.d.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position(new LatLng(((LocationBean) ((ArrayList) arrayList.get(0)).get(0)).latitude, ((LocationBean) ((ArrayList) arrayList.get(0)).get(0)).longitude)).draggable(false).anchor(0.5f, 0.5f));
            this.n.setClickable(false);
            this.n.setInfoWindowEnable(false);
        }
        if (z2) {
            ArrayList arrayList2 = (ArrayList) arrayList.get(arrayList.size() - 2);
            ArrayList arrayList3 = (ArrayList) arrayList.get(arrayList.size() - 1);
            if (arrayList2.size() > 0 && arrayList3.size() > 0) {
                LatLng latLng = new LatLng(((LocationBean) arrayList2.get(arrayList2.size() - 1)).latitude, ((LocationBean) arrayList2.get(arrayList2.size() - 1)).longitude);
                LatLng latLng2 = new LatLng(((LocationBean) arrayList3.get(0)).latitude, ((LocationBean) arrayList3.get(0)).longitude);
                this.m.add(this.d.addPolyline(new PolylineOptions().add(latLng, latLng2).color(this.a.getResources().getColor(R.color.track_record_pause_color)).width(v.a(4.0f))));
                this.m.add(this.d.addPolyline(new PolylineOptions().add(latLng2).width(v.a(4.0f)).color(this.a.getResources().getColor(R.color.track_record_color))));
                return;
            }
            return;
        }
        ArrayList arrayList4 = (ArrayList) arrayList.get(arrayList.size() - 1);
        LocationBean locationBean = (LocationBean) arrayList4.get(arrayList4.size() - 1);
        Polyline polyline = (Polyline) this.m.get(this.m.size() - 1);
        polyline.getOptions().add(new LatLng(locationBean.latitude, locationBean.longitude));
        polyline.setPoints(polyline.getOptions().getPoints());
    }

    public void g() {
        if (this.m != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= this.m.size()) {
                    break;
                }
                ((Polyline) this.m.get(i3)).remove();
                i2 = i3 + 1;
            }
        }
        if (this.n != null) {
            this.n.remove();
        }
    }

    public MapCurrentStatus h() {
        MapCurrentStatus mapCurrentStatus = new MapCurrentStatus();
        CameraPosition cameraPosition = this.d.getCameraPosition();
        mapCurrentStatus.currentZoomLevel = (int) cameraPosition.zoom;
        mapCurrentStatus.currentCenterLatitude = cameraPosition.target.latitude;
        mapCurrentStatus.currentCenterLongitude = cameraPosition.target.longitude;
        return mapCurrentStatus;
    }

    public CameraPosition i() {
        return this.d.getCameraPosition();
    }

    public Location j() {
        return this.d.getMyLocation();
    }

    public void a(MapCurrentStatus mapCurrentStatus) {
        this.d.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(mapCurrentStatus.currentCenterLatitude, mapCurrentStatus.currentCenterLongitude, true), (float) mapCurrentStatus.currentZoomLevel));
    }

    public void a(boolean z) {
        this.h = z;
        if (z) {
            double[] Y = w.Y();
            this.d.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(Y[0], Y[1], true)));
        }
    }

    public void k() {
        this.d.animateCamera(CameraUpdateFactory.zoomIn());
    }

    public void l() {
        this.d.animateCamera(CameraUpdateFactory.zoomOut());
    }

    public void m() {
        this.d.setMapType(1);
        q();
    }

    public void n() {
        this.d.setMapType(2);
    }

    public int o() {
        return this.d.getMapType();
    }

    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras == null || extras.getInt(MyLocationStyle.ERROR_CODE) != 0) {
                Log.e("amap", " bundle is null");
                return;
            }
            extras.getInt(MyLocationStyle.LOCATION_TYPE);
            if (MiTalkiApp.a().e()) {
                if (this.g) {
                    this.g = false;
                    this.d.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(location.getLatitude(), location.getLongitude(), true), 15.0f));
                } else if (this.h) {
                    this.d.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(location.getLatitude(), location.getLongitude(), true)));
                }
            }
            if (location.hasAltitude()) {
                w.a(location.getLatitude(), location.getLongitude(), (int) location.getAltitude());
            } else {
                w.a(location.getLatitude(), location.getLongitude());
            }
        } else {
            Log.e("amap", "定位失败");
        }
    }

    public void a(Marker marker, com.ifengyu.intercom.ui.map.c.a.a aVar) {
        this.d.animateCamera(CameraUpdateFactory.newLatLng(aVar.a()));
        this.l = aVar.c();
        if (this.l.size() == 1) {
            new t((Activity) this.a, ((e) this.l.get(0)).c()).show();
            return;
        }
        View inflate = View.inflate(this.a, R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        listView.setAdapter(new C0035a(this.l));
        listView.setOnItemClickListener(this.o);
        float integer = (float) this.a.getResources().getInteger(R.integer.cluster_marker_friend_list_view_wight);
        float integer2 = (float) this.a.getResources().getInteger(R.integer.cluster_marker_friend_list_view_height);
        if (this.l.size() == 2) {
            integer2 = (integer2 / 3.0f) * 2.0f;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, (int) v.a(integer), (int) v.a(integer2));
        popupWindow.setTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.showAsDropDown(this.b, (int) ((((float) this.b.getWidth()) / 2.0f) - v.a(integer / 2.0f)), -((int) (v.a(integer2) + ((float) (this.b.getHeight() / 2)) + v.a(40.0f) + v.a(3.0f))));
    }
}
