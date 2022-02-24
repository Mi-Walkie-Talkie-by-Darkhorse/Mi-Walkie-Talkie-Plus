package com.ifengyu.intercom.ui.map;

import android.content.Context;
import android.graphics.CornerPathEffect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.network.d.e;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import com.ifengyu.intercom.ui.map.f.a.d;
import com.ifengyu.intercom.ui.map.f.a.h;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.Polyline;
import org.osmdroid.views.overlay.ScaleBarOverlay;

/* compiled from: OsmMapOperate.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f6506a;

    /* renamed from: b  reason: collision with root package name */
    private MapView f6507b;

    /* renamed from: c  reason: collision with root package name */
    private MapFragment f6508c;
    private h d;
    private h e;
    private com.ifengyu.intercom.ui.map.f.a.a f;
    private MapDataProvider.MAP_TYPE g;
    private IMapController h;
    private d i;
    private com.ifengyu.intercom.ui.map.f.a.c j;
    private ScaleBarOverlay k;
    private com.ifengyu.intercom.ui.map.e.b.b l;
    private ArrayList<Polyline> m;
    private com.ifengyu.intercom.ui.map.f.a.b<OverlayItem> n;
    private ArrayList<GeoPoint> o = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmMapOperate.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (MiTalkiApp.b().l()) {
                b.this.f6508c.a(R.drawable.home_icon_location);
                MiTalkiApp.b().b(false);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmMapOperate.java */
    /* renamed from: com.ifengyu.intercom.ui.map.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0168b implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0168b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            b.this.k.disableScaleBar();
            b.this.k.enableScaleBar();
            b.this.k.setAlignBottom(true);
            b.this.f6507b.getOverlays().remove(b.this.k);
            b.this.f6507b.getOverlays().add(b.this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmMapOperate.java */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (BeanUserLocation beanUserLocation : ShareLocationService.c()) {
                b.this.a(beanUserLocation, false);
            }
            b.this.l.a();
            b.this.f6507b.postInvalidate();
        }
    }

    public b(Context context, MapView mapView, MapFragment mapFragment) {
        this.f6506a = context;
        this.f6507b = mapView;
        this.f6508c = mapFragment;
    }

    public void e() {
        if (this.j.isMyLocationEnabled()) {
            this.j.disableMyLocation();
        }
        i();
    }

    public void f() {
        if (!this.j.isMyLocationEnabled()) {
            this.j.enableMyLocation();
        }
    }

    public void g() {
        this.m = new ArrayList<>();
        this.n = new com.ifengyu.intercom.ui.map.f.a.b<>(new ArrayList(), null, this.f6506a);
        this.f6507b.getOverlays().add(0, this.n);
        Polyline polyline = new Polyline();
        polyline.setWidth(c0.a(3.0f));
        polyline.setColor(this.f6506a.getResources().getColor(R.color.track_record_color));
        polyline.getPaint().setAntiAlias(true);
        polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
        polyline.setInfoWindow(null);
        this.m.add(polyline);
        this.f6507b.getOverlays().add(0, polyline);
    }

    public void h() {
        e.a().execute(new c());
    }

    public void i() {
        this.l.b();
    }

    public void j() {
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                this.f6507b.getOverlays().remove(this.m.get(i));
            }
            this.m = null;
        }
        if (this.n != null) {
            this.f6507b.getOverlays().remove(this.n);
            this.n = null;
        }
        this.o.clear();
        this.f6507b.invalidate();
    }

    public void k() {
        if (this.g == MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP) {
            this.f6507b.setTileSource(this.e);
            this.g = MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP;
            this.f6507b.invalidate();
        }
    }

    public void l() {
        if (this.g == MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP) {
            this.f6507b.setTileSource(this.d);
            this.g = MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP;
            this.f6507b.invalidate();
        }
    }

    public void m() {
        this.h.zoomIn();
    }

    public void n() {
        this.h.zoomOut();
    }

    public void a(MapDataProvider.MAP_TYPE map_type, boolean z) {
        this.l = new com.ifengyu.intercom.ui.map.e.b.b(this.f6507b, 40, this.f6506a);
        this.d = new h(MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP, 4, 18, new String[0]);
        h hVar = new h(MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP, 4, 18, new String[0]);
        this.e = hVar;
        Context context = this.f6506a;
        if (map_type == MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP) {
            hVar = this.d;
        }
        com.ifengyu.intercom.ui.map.f.a.a aVar = new com.ifengyu.intercom.ui.map.f.a.a(context, hVar);
        this.f = aVar;
        this.g = map_type;
        this.f6507b.setTileProvider(aVar);
        this.f6507b.setMultiTouchControls(true);
        this.f6507b.setBuiltInZoomControls(false);
        IMapController controller = this.f6507b.getController();
        this.h = controller;
        if (z) {
            controller.setZoom(15);
            double[] r = d0.r();
            this.h.setCenter(new GeoPoint(r[0], r[1]));
        }
        this.i = new d(MiTalkiApp.b());
        com.ifengyu.intercom.ui.map.f.a.c cVar = new com.ifengyu.intercom.ui.map.f.a.c(this.i, this.f6507b);
        this.j = cVar;
        cVar.setDrawAccuracyEnabled(false);
        this.f6507b.getOverlays().add(this.j);
        ScaleBarOverlay scaleBarOverlay = new ScaleBarOverlay(this.f6507b);
        this.k = scaleBarOverlay;
        scaleBarOverlay.getBarPaint().setColor(-16777216);
        this.k.getBarPaint().setStrokeWidth(this.f6506a.getResources().getDisplayMetrics().density);
        this.k.getTextPaint().setColor(-16777216);
        this.k.getTextPaint().setTextSize(c0.c(10.0f));
        this.k.setAlignBottom(true);
        this.k.setAlignRight(false);
        this.k.setMaxLength(0.6f);
        this.k.setScaleBarOffset((int) c0.a(10.0f), (int) c0.a(17.0f));
        this.f6507b.getOverlays().add(this.k);
        this.f6507b.setOnTouchListener(new a());
        this.f6507b.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0168b());
    }

    public MapCurrentStatus b() {
        MapCurrentStatus mapCurrentStatus = new MapCurrentStatus();
        mapCurrentStatus.currentZoomLevel = this.f6507b.getZoomLevel();
        mapCurrentStatus.currentCenterLatitude = this.f6507b.getMapCenter().getLatitude();
        mapCurrentStatus.currentCenterLongitude = this.f6507b.getMapCenter().getLongitude();
        return mapCurrentStatus;
    }

    public void c() {
        double[] r = d0.r();
        GeoPoint geoPoint = new GeoPoint(r[0], r[1]);
        this.f6507b.getController().animateTo(geoPoint);
        this.f6507b.getController().setCenter(geoPoint);
    }

    public void d() {
        com.ifengyu.intercom.ui.map.f.a.a aVar = this.f;
        if (aVar != null) {
            aVar.detach();
            this.f.f6546b.detach();
        }
        MapView mapView = this.f6507b;
        if (mapView != null) {
            mapView.onDetach();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(com.ifengyu.intercom.greendao.bean.b bVar) {
        if (this.m == null) {
            this.m = new ArrayList<>();
        }
        if (this.n == null) {
            this.n = new com.ifengyu.intercom.ui.map.f.a.b<>(new ArrayList(), null, this.f6506a);
            this.f6507b.getOverlays().add(0, this.n);
        }
        List<com.ifengyu.intercom.greendao.bean.c> list = MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(bVar.v()), new WhereCondition[0]).orderAsc(TrackPointDao.Properties.CurrentTime).list();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        for (int i = 0; i < list.size(); i++) {
            com.ifengyu.intercom.greendao.bean.c cVar = list.get(i);
            ((ArrayList) arrayList.get(arrayList.size() - 1)).add(new GeoPoint(cVar.f().intValue(), cVar.g().intValue()));
            if (cVar.e()) {
                arrayList.add(new ArrayList());
            }
        }
        if (((ArrayList) arrayList.get(0)).size() > 0) {
            OverlayItem overlayItem = new OverlayItem(null, null, (IGeoPoint) ((ArrayList) arrayList.get(0)).get(0));
            overlayItem.setMarker(c0.a(View.inflate(this.f6506a, R.layout.track_record_start_icon_layout, null)));
            overlayItem.setMarkerHotspot(OverlayItem.HotspotPlace.CENTER);
            this.n.addItem(0, overlayItem);
        }
        for (int i2 = 0; i2 < arrayList.size() - 1; i2++) {
            if (((ArrayList) arrayList.get(i2)).size() > 0) {
                int i3 = i2 + 1;
                if (((ArrayList) arrayList.get(i3)).size() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add((GeoPoint) ((ArrayList) arrayList.get(i2)).get(((ArrayList) arrayList.get(i2)).size() - 1));
                    arrayList2.add((GeoPoint) ((ArrayList) arrayList.get(i3)).get(0));
                    Polyline polyline = new Polyline();
                    polyline.setWidth(c0.a(3.0f));
                    polyline.setColor(this.f6506a.getResources().getColor(R.color.track_record_pause_color));
                    polyline.getPaint().setAntiAlias(true);
                    polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                    polyline.setInfoWindow(null);
                    polyline.setPoints(arrayList2);
                    this.m.add(polyline);
                    this.f6507b.getOverlays().add(0, polyline);
                }
            }
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Polyline polyline2 = new Polyline();
            polyline2.setWidth(c0.a(3.0f));
            polyline2.setColor(this.f6506a.getResources().getColor(R.color.track_record_color));
            polyline2.getPaint().setAntiAlias(true);
            polyline2.getPaint().setPathEffect(new CornerPathEffect(5.0f));
            polyline2.setInfoWindow(null);
            polyline2.setPoints((List) arrayList.get(i4));
            this.m.add(polyline2);
            this.f6507b.getOverlays().add(0, polyline2);
            if (i4 == arrayList.size() - 1) {
                ArrayList arrayList3 = (ArrayList) arrayList.get(i4);
                for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                    this.o.add(arrayList3.get(i5));
                }
            }
        }
    }

    public void a(boolean z, ArrayList<ArrayList<LocationBean>> arrayList, boolean z2) {
        if (!z && arrayList.size() == 1 && arrayList.get(0).size() == 1) {
            OverlayItem overlayItem = new OverlayItem(null, null, new GeoPoint(arrayList.get(0).get(0).latitude, arrayList.get(0).get(0).longitude));
            overlayItem.setMarker(c0.a(View.inflate(this.f6506a, R.layout.track_record_start_icon_layout, null)));
            overlayItem.setMarkerHotspot(OverlayItem.HotspotPlace.CENTER);
            this.n.addItem(0, overlayItem);
        }
        if (z2) {
            ArrayList<LocationBean> arrayList2 = arrayList.get(arrayList.size() - 2);
            ArrayList<LocationBean> arrayList3 = arrayList.get(arrayList.size() - 1);
            if (arrayList2.size() > 0 && arrayList3.size() > 0) {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(new GeoPoint(arrayList2.get(arrayList2.size() - 1).latitude, arrayList2.get(arrayList2.size() - 1).longitude));
                GeoPoint geoPoint = new GeoPoint(arrayList3.get(0).latitude, arrayList3.get(0).longitude);
                arrayList4.add(geoPoint);
                Polyline polyline = new Polyline();
                polyline.setWidth(c0.a(3.0f));
                polyline.setColor(this.f6506a.getResources().getColor(R.color.track_record_pause_color));
                polyline.getPaint().setAntiAlias(true);
                polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                polyline.setInfoWindow(null);
                polyline.setPoints(arrayList4);
                this.m.add(polyline);
                this.f6507b.getOverlays().add(0, polyline);
                Polyline polyline2 = new Polyline();
                polyline2.setWidth(c0.a(3.0f));
                polyline2.setColor(this.f6506a.getResources().getColor(R.color.track_record_color));
                polyline2.getPaint().setAntiAlias(true);
                polyline2.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                polyline2.setInfoWindow(null);
                this.m.add(polyline2);
                this.f6507b.getOverlays().add(0, polyline2);
                this.o.clear();
                this.o.add(geoPoint);
            }
        } else {
            ArrayList<LocationBean> arrayList5 = arrayList.get(arrayList.size() - 1);
            LocationBean locationBean = arrayList5.get(arrayList5.size() - 1);
            this.o.add(new GeoPoint(locationBean.latitude, locationBean.longitude));
            ArrayList<Polyline> arrayList6 = this.m;
            arrayList6.get(arrayList6.size() - 1).setPoints(this.o);
        }
        this.f6507b.invalidate();
    }

    public void a(BeanUserLocation beanUserLocation, boolean z) {
        this.l.b(beanUserLocation);
        if (z) {
            this.f6507b.postInvalidate();
        }
    }

    public MapDataProvider.MAP_TYPE a() {
        return this.g;
    }

    public void a(MapCurrentStatus mapCurrentStatus) {
        this.h.setCenter(new GeoPoint(mapCurrentStatus.currentCenterLatitude, mapCurrentStatus.currentCenterLongitude));
        this.h.setZoom(mapCurrentStatus.currentZoomLevel);
    }
}
