package com.ifengyu.intercom.ui.map;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.activity.OffMapAddressSearchActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider.MAP_TYPE;
import com.ifengyu.intercom.ui.map.d.a.a;
import com.ifengyu.intercom.ui.map.d.a.c;
import com.ifengyu.intercom.ui.map.d.a.d;
import com.ifengyu.intercom.ui.map.d.a.h;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.events.MapListener;
import org.osmdroid.events.ScrollEvent;
import org.osmdroid.events.ZoomEvent;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.Marker;
import org.osmdroid.views.overlay.Marker.OnMarkerClickListener;
import org.osmdroid.views.overlay.Polygon;

public class OsmOffMapActivity extends BaseActivity implements OnClickListener, MapListener, OnMarkerClickListener {
    private MapView a;
    private c b;
    private int c = -1;
    private ArrayList<String> d;
    private IMapController q;
    private SensorManager r;
    private Sensor s;
    private d t;
    private boolean u = false;
    private Marker v;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_osm_offmap);
        this.d = getIntent().getStringArrayListExtra("off_map_downloaded_names");
        this.a = (MapView) c(R.id.map);
        findViewById(R.id.search_tv).setOnClickListener(this);
        findViewById(R.id.map_icon_my_locate_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_small_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_big_iv).setOnClickListener(this);
        findViewById(R.id.sure).setOnClickListener(this);
        findViewById(R.id.cancel).setOnClickListener(this);
        c();
        this.r = (SensorManager) MiTalkiApp.a().getSystemService("sensor");
        this.s = this.r.getDefaultSensor(3);
        if (MiTalkiApp.a().e()) {
            MiTalkiApp.a().c(false);
            this.u = true;
        }
    }

    private void c() {
        this.a.setTileProvider(new a(MiTalkiApp.a(), new h(MAP_TYPE.GOOGLE_SATELLITE_MAP, 12, 18, new String[0])));
        this.a.setMultiTouchControls(true);
        this.a.setBuiltInZoomControls(false);
        this.q = this.a.getController();
        this.q.setZoom(15);
        double[] Y = w.Y();
        this.q.setCenter(new GeoPoint(Y[0], Y[1]));
        this.t = new d(MiTalkiApp.a());
        this.b = new c(this.t, this.a);
        this.b.setDrawAccuracyEnabled(false);
        this.a.getOverlays().add(this.b);
        this.a.setMapListener(this);
        d();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (this.t != null) {
            this.r.registerListener(this.t, this.s, 3);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.t != null) {
            this.r.unregisterListener(this.t);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cancel /*2131755165*/:
                finish();
                return;
            case R.id.map_icon_zoom_big_iv /*2131755235*/:
                this.a.getController().zoomIn();
                return;
            case R.id.map_icon_zoom_small_iv /*2131755236*/:
                this.a.getController().zoomOut();
                return;
            case R.id.map_icon_my_locate_iv /*2131755237*/:
                double[] Y = w.Y();
                GeoPoint geoPoint = new GeoPoint(Y[0], Y[1]);
                this.a.getController().animateTo(geoPoint);
                this.a.getController().setCenter(geoPoint);
                return;
            case R.id.search_tv /*2131755290*/:
                a(OffMapAddressSearchActivity.class, 9);
                return;
            case R.id.sure /*2131755291*/:
                if (!v.a((Context) this)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                List points = ((Polygon) this.a.getOverlays().get(this.c)).getPoints();
                GeoPoint[] geoPointArr = {(GeoPoint) points.get(0), (GeoPoint) points.get(2)};
                Intent intent = new Intent(this, GoogleMapDownloadDefinitionActivity.class);
                intent.putExtra("intent_init_points", geoPointArr);
                intent.putStringArrayListExtra("off_map_downloaded_names", this.d);
                startActivityForResult(intent, 10);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10) {
            if (i2 == 1) {
                setResult(1, intent);
                finish();
            }
        } else if (i == 9 && i2 == -1) {
            String[] stringArrayExtra = intent.getStringArrayExtra("locationArr");
            GeoPoint geoPoint = new GeoPoint(Double.valueOf(stringArrayExtra[0]).doubleValue(), Double.valueOf(stringArrayExtra[1]).doubleValue());
            this.a.getController().animateTo(geoPoint);
            this.a.getController().setCenter(geoPoint);
            this.v = new Marker(this.a);
            this.v.setPosition(geoPoint);
            this.v.setIcon(new BitmapDrawable(MiTalkiApp.a().getResources(), BitmapFactory.decodeResource(MiTalkiApp.a().getResources(), R.drawable.lat_icon_choose)));
            this.v.setOnMarkerClickListener(this);
            this.a.getOverlays().add(this.v);
        }
    }

    public boolean onMarkerClick(Marker marker, MapView mapView) {
        return false;
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.b.enableMyLocation();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.b.disableMyLocation();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.a.destroyDrawingCache();
        if (this.u) {
            MiTalkiApp.a().c(true);
        }
    }

    public boolean onScroll(ScrollEvent scrollEvent) {
        d();
        return false;
    }

    public boolean onZoom(ZoomEvent zoomEvent) {
        d();
        return false;
    }

    private void d() {
        if (this.c != -1) {
            this.a.getOverlays().remove(this.c);
        }
        int i = (int) (((double) com.ifengyu.intercom.a.c) * 0.7d);
        int i2 = (com.ifengyu.intercom.a.c - i) / 2;
        int bottom = ((this.a.getBottom() - this.a.getTop()) - i) / 2;
        Projection projection = this.a.getProjection();
        IGeoPoint fromPixels = projection.fromPixels(i2, bottom);
        IGeoPoint fromPixels2 = projection.fromPixels(i2 + i, bottom);
        IGeoPoint fromPixels3 = projection.fromPixels(i2 + i, bottom + i);
        IGeoPoint fromPixels4 = projection.fromPixels(i2, i + bottom);
        ArrayList arrayList = new ArrayList();
        arrayList.add((GeoPoint) fromPixels);
        arrayList.add((GeoPoint) fromPixels2);
        arrayList.add((GeoPoint) fromPixels3);
        arrayList.add((GeoPoint) fromPixels4);
        Polygon polygon = new Polygon(this);
        polygon.setPoints(arrayList);
        polygon.setFillColor(822027264);
        polygon.setStrokeColor(822027264);
        polygon.setStrokeWidth(v.a(2.0f));
        this.a.getOverlays().add(polygon);
        this.c = this.a.getOverlays().size() - 1;
    }
}
