package com.ifengyu.intercom.ui.map;

import android.content.Context;
import android.graphics.CornerPathEffect;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.bean.MapCurrentStatus;
import com.ifengyu.intercom.greendao.dao.TrackPointDao.Properties;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.map.MapDataProvider.MAP_TYPE;
import com.ifengyu.intercom.ui.map.d.a.a;
import com.ifengyu.intercom.ui.map.d.a.c;
import com.ifengyu.intercom.ui.map.d.a.d;
import com.ifengyu.intercom.ui.map.d.a.h;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.c.i;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.OverlayItem.HotspotPlace;
import org.osmdroid.views.overlay.Polyline;
import org.osmdroid.views.overlay.ScaleBarOverlay;

/* compiled from: OsmMapOperate */
public class b {
    private Context a;
    /* access modifiers changed from: private */
    public MapView b;
    /* access modifiers changed from: private */
    public MapFragment c;
    private h d;
    private h e;
    private a f;
    private MAP_TYPE g;
    private IMapController h;
    private d i;
    private c j;
    /* access modifiers changed from: private */
    public ScaleBarOverlay k;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.map.c.b.b l;
    private ArrayList<Polyline> m;
    private com.ifengyu.intercom.ui.map.d.a.b<OverlayItem> n;
    private ArrayList<GeoPoint> o = new ArrayList<>();

    public b(Context context, MapView mapView, MapFragment mapFragment) {
        this.a = context;
        this.b = mapView;
        this.c = mapFragment;
    }

    public void a(MAP_TYPE map_type, boolean z) {
        this.l = new com.ifengyu.intercom.ui.map.c.b.b(this.b, 40, this.a);
        this.d = new h(MAP_TYPE.GOOGLE_2D_MAP, 4, 18, new String[0]);
        this.e = new h(MAP_TYPE.GOOGLE_SATELLITE_MAP, 4, 18, new String[0]);
        this.f = new a(this.a, map_type == MAP_TYPE.GOOGLE_2D_MAP ? this.d : this.e);
        this.g = map_type;
        this.b.setTileProvider(this.f);
        this.b.setMultiTouchControls(true);
        this.b.setBuiltInZoomControls(false);
        this.h = this.b.getController();
        if (z) {
            this.h.setZoom(15);
            double[] Y = w.Y();
            this.h.setCenter(new GeoPoint(Y[0], Y[1]));
        }
        this.i = new d(MiTalkiApp.a());
        this.j = new c(this.i, this.b);
        this.j.setDrawAccuracyEnabled(false);
        this.b.getOverlays().add(this.j);
        this.k = new ScaleBarOverlay(this.b);
        this.k.getBarPaint().setColor(ViewCompat.MEASURED_STATE_MASK);
        this.k.getBarPaint().setStrokeWidth(this.a.getResources().getDisplayMetrics().density);
        this.k.getTextPaint().setColor(ViewCompat.MEASURED_STATE_MASK);
        this.k.getTextPaint().setTextSize((float) v.c(10.0f));
        this.k.setAlignBottom(true);
        this.k.setAlignRight(false);
        this.k.setMaxLength(0.6f);
        this.k.setScaleBarOffset((int) v.a(10.0f), (int) v.a(17.0f));
        this.b.getOverlays().add(this.k);
        this.b.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (MiTalkiApp.a().e()) {
                    b.this.c.a((int) R.drawable.home_icon_location);
                    MiTalkiApp.a().c(false);
                }
                return false;
            }
        });
        this.b.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                b.this.k.disableScaleBar();
                b.this.k.enableScaleBar();
                b.this.k.setAlignBottom(true);
                b.this.b.getOverlays().remove(b.this.k);
                b.this.b.getOverlays().add(b.this.k);
            }
        });
    }

    public void a() {
        if (!this.j.isMyLocationEnabled()) {
            this.j.enableMyLocation();
        }
    }

    public void b() {
        if (this.j.isMyLocationEnabled()) {
            this.j.disableMyLocation();
        }
        g();
    }

    public void c() {
        if (this.f != null) {
            this.f.detach();
            this.f.a.detach();
        }
        if (this.b != null) {
            this.b.onDetach();
        }
    }

    public void a(com.ifengyu.intercom.greendao.bean.b bVar) {
        if (this.m == null) {
            this.m = new ArrayList<>();
        }
        if (this.n == null) {
            this.n = new com.ifengyu.intercom.ui.map.d.a.b<>(new ArrayList(), null, this.a);
            this.b.getOverlays().add(0, this.n);
        }
        List c2 = MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(bVar.c()), new i[0]).a(Properties.g).c();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        for (int i2 = 0; i2 < c2.size(); i2++) {
            com.ifengyu.intercom.greendao.bean.c cVar = (com.ifengyu.intercom.greendao.bean.c) c2.get(i2);
            ((ArrayList) arrayList.get(arrayList.size() - 1)).add(new GeoPoint(cVar.c().intValue(), cVar.d().intValue()));
            if (cVar.h()) {
                arrayList.add(new ArrayList());
            }
        }
        if (((ArrayList) arrayList.get(0)).size() > 0) {
            OverlayItem overlayItem = new OverlayItem(null, null, (IGeoPoint) ((ArrayList) arrayList.get(0)).get(0));
            overlayItem.setMarker(v.b(View.inflate(this.a, R.layout.track_record_start_icon_layout, null)));
            overlayItem.setMarkerHotspot(HotspotPlace.CENTER);
            this.n.addItem(0, overlayItem);
        }
        for (int i3 = 0; i3 < arrayList.size() - 1; i3++) {
            if (((ArrayList) arrayList.get(i3)).size() > 0 && ((ArrayList) arrayList.get(i3 + 1)).size() > 0) {
                GeoPoint geoPoint = (GeoPoint) ((ArrayList) arrayList.get(i3)).get(((ArrayList) arrayList.get(i3)).size() - 1);
                GeoPoint geoPoint2 = (GeoPoint) ((ArrayList) arrayList.get(i3 + 1)).get(0);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(geoPoint);
                arrayList2.add(geoPoint2);
                Polyline polyline = new Polyline();
                polyline.setWidth(v.a(3.0f));
                polyline.setColor(this.a.getResources().getColor(R.color.track_record_pause_color));
                polyline.getPaint().setAntiAlias(true);
                polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                polyline.setInfoWindow(null);
                polyline.setPoints(arrayList2);
                this.m.add(polyline);
                this.b.getOverlays().add(0, polyline);
            }
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Polyline polyline2 = new Polyline();
            polyline2.setWidth(v.a(3.0f));
            polyline2.setColor(this.a.getResources().getColor(R.color.track_record_color));
            polyline2.getPaint().setAntiAlias(true);
            polyline2.getPaint().setPathEffect(new CornerPathEffect(5.0f));
            polyline2.setInfoWindow(null);
            polyline2.setPoints((List) arrayList.get(i4));
            this.m.add(polyline2);
            this.b.getOverlays().add(0, polyline2);
            if (i4 == arrayList.size() - 1) {
                ArrayList arrayList3 = (ArrayList) arrayList.get(i4);
                for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                    this.o.add(arrayList3.get(i5));
                }
            }
        }
    }

    public void d() {
        this.m = new ArrayList<>();
        this.n = new com.ifengyu.intercom.ui.map.d.a.b<>(new ArrayList(), null, this.a);
        this.b.getOverlays().add(0, this.n);
        Polyline polyline = new Polyline();
        polyline.setWidth(v.a(3.0f));
        polyline.setColor(this.a.getResources().getColor(R.color.track_record_color));
        polyline.getPaint().setAntiAlias(true);
        polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
        polyline.setInfoWindow(null);
        this.m.add(polyline);
        this.b.getOverlays().add(0, polyline);
    }

    public void a(boolean z, ArrayList<ArrayList<LocationBean>> arrayList, boolean z2) {
        if (!z && arrayList.size() == 1 && ((ArrayList) arrayList.get(0)).size() == 1) {
            OverlayItem overlayItem = new OverlayItem(null, null, new GeoPoint(((LocationBean) ((ArrayList) arrayList.get(0)).get(0)).latitude, ((LocationBean) ((ArrayList) arrayList.get(0)).get(0)).longitude));
            overlayItem.setMarker(v.b(View.inflate(this.a, R.layout.track_record_start_icon_layout, null)));
            overlayItem.setMarkerHotspot(HotspotPlace.CENTER);
            this.n.addItem(0, overlayItem);
        }
        if (z2) {
            ArrayList arrayList2 = (ArrayList) arrayList.get(arrayList.size() - 2);
            ArrayList arrayList3 = (ArrayList) arrayList.get(arrayList.size() - 1);
            if (arrayList2.size() > 0 && arrayList3.size() > 0) {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(new GeoPoint(((LocationBean) arrayList2.get(arrayList2.size() - 1)).latitude, ((LocationBean) arrayList2.get(arrayList2.size() - 1)).longitude));
                GeoPoint geoPoint = new GeoPoint(((LocationBean) arrayList3.get(0)).latitude, ((LocationBean) arrayList3.get(0)).longitude);
                arrayList4.add(geoPoint);
                Polyline polyline = new Polyline();
                polyline.setWidth(v.a(3.0f));
                polyline.setColor(this.a.getResources().getColor(R.color.track_record_pause_color));
                polyline.getPaint().setAntiAlias(true);
                polyline.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                polyline.setInfoWindow(null);
                polyline.setPoints(arrayList4);
                this.m.add(polyline);
                this.b.getOverlays().add(0, polyline);
                Polyline polyline2 = new Polyline();
                polyline2.setWidth(v.a(3.0f));
                polyline2.setColor(this.a.getResources().getColor(R.color.track_record_color));
                polyline2.getPaint().setAntiAlias(true);
                polyline2.getPaint().setPathEffect(new CornerPathEffect(5.0f));
                polyline2.setInfoWindow(null);
                this.m.add(polyline2);
                this.b.getOverlays().add(0, polyline2);
                this.o.clear();
                this.o.add(geoPoint);
            }
        } else {
            ArrayList arrayList5 = (ArrayList) arrayList.get(arrayList.size() - 1);
            LocationBean locationBean = (LocationBean) arrayList5.get(arrayList5.size() - 1);
            this.o.add(new GeoPoint(locationBean.latitude, locationBean.longitude));
            ((Polyline) this.m.get(this.m.size() - 1)).setPoints(this.o);
        }
        this.b.invalidate();
    }

    public void e() {
        if (this.m != null) {
            for (int i2 = 0; i2 < this.m.size(); i2++) {
                this.b.getOverlays().remove(this.m.get(i2));
            }
            this.m = null;
        }
        if (this.n != null) {
            this.b.getOverlays().remove(this.n);
            this.n = null;
        }
        this.o.clear();
        this.b.invalidate();
    }

    public void a(BeanUserLocation beanUserLocation, boolean z) {
        this.l.a(beanUserLocation);
        if (z) {
            this.b.postInvalidate();
        }
    }

    public void f() {
        e.b().execute(new Runnable() {
            public void run() {
                for (BeanUserLocation a2 : ShareLocationService.b()) {
                    b.this.a(a2, false);
                }
                b.this.l.a();
                b.this.b.postInvalidate();
            }
        });
    }

    public void g() {
        this.l.b();
    }

    public void h() {
        if (this.g == MAP_TYPE.GOOGLE_SATELLITE_MAP) {
            this.b.setTileSource(this.d);
            this.g = MAP_TYPE.GOOGLE_2D_MAP;
            this.b.invalidate();
        }
    }

    public void i() {
        if (this.g == MAP_TYPE.GOOGLE_2D_MAP) {
            this.b.setTileSource(this.e);
            this.g = MAP_TYPE.GOOGLE_SATELLITE_MAP;
            this.b.invalidate();
        }
    }

    public MAP_TYPE j() {
        return this.g;
    }

    public void k() {
        double[] Y = w.Y();
        GeoPoint geoPoint = new GeoPoint(Y[0], Y[1]);
        this.b.getController().animateTo(geoPoint);
        this.b.getController().setCenter(geoPoint);
    }

    public void l() {
        this.h.zoomIn();
    }

    public void m() {
        this.h.zoomOut();
    }

    public MapCurrentStatus n() {
        MapCurrentStatus mapCurrentStatus = new MapCurrentStatus();
        mapCurrentStatus.currentZoomLevel = this.b.getZoomLevel();
        mapCurrentStatus.currentCenterLatitude = this.b.getMapCenter().getLatitude();
        mapCurrentStatus.currentCenterLongitude = this.b.getMapCenter().getLongitude();
        return mapCurrentStatus;
    }

    public void a(MapCurrentStatus mapCurrentStatus) {
        this.h.setCenter(new GeoPoint(mapCurrentStatus.currentCenterLatitude, mapCurrentStatus.currentCenterLongitude));
        this.h.setZoom(mapCurrentStatus.currentZoomLevel);
    }
}
