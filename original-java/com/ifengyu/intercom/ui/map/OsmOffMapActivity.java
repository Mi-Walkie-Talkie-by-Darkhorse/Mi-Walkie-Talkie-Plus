package com.ifengyu.intercom.ui.map;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.View;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.activity.OffMapAddressSearchActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import com.ifengyu.intercom.ui.map.f.a.a;
import com.ifengyu.intercom.ui.map.f.a.c;
import com.ifengyu.intercom.ui.map.f.a.d;
import com.ifengyu.intercom.ui.map.f.a.h;
import com.umeng.analytics.pro.ai;
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
import org.osmdroid.views.overlay.Polygon;

/* loaded from: classes2.dex */
public class OsmOffMapActivity extends BaseActivity implements MapListener, View.OnClickListener, Marker.OnMarkerClickListener {
    private MapView q;
    private c r;
    private ArrayList<String> t;
    private IMapController u;
    private SensorManager v;
    private Sensor w;
    private d x;
    private Marker z;
    private int s = -1;
    private boolean y = false;

    private void w() {
        if (this.s != -1) {
            this.q.getOverlays().remove(this.s);
        }
        int i = com.ifengyu.intercom.d.f5223b;
        int i2 = (int) (i * 0.7d);
        int i3 = (i - i2) / 2;
        int bottom = ((this.q.getBottom() - this.q.getTop()) - i2) / 2;
        Projection projection = this.q.getProjection();
        IGeoPoint fromPixels = projection.fromPixels(i3, bottom);
        int i4 = i3 + i2;
        IGeoPoint fromPixels2 = projection.fromPixels(i4, bottom);
        int i5 = bottom + i2;
        IGeoPoint fromPixels3 = projection.fromPixels(i4, i5);
        IGeoPoint fromPixels4 = projection.fromPixels(i3, i5);
        ArrayList arrayList = new ArrayList();
        arrayList.add((GeoPoint) fromPixels);
        arrayList.add((GeoPoint) fromPixels2);
        arrayList.add((GeoPoint) fromPixels3);
        arrayList.add((GeoPoint) fromPixels4);
        Polygon polygon = new Polygon(this);
        polygon.setPoints(arrayList);
        polygon.setFillColor(822027264);
        polygon.setStrokeColor(822027264);
        polygon.setStrokeWidth(c0.a(2.0f));
        this.q.getOverlays().add(polygon);
        this.s = this.q.getOverlays().size() - 1;
    }

    private void x() {
        this.q.setTileProvider(new a(MiTalkiApp.b(), new h(MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP, 12, 18, new String[0])));
        this.q.setMultiTouchControls(true);
        this.q.setBuiltInZoomControls(false);
        IMapController controller = this.q.getController();
        this.u = controller;
        controller.setZoom(15);
        double[] r = d0.r();
        this.u.setCenter(new GeoPoint(r[0], r[1]));
        this.x = new d(MiTalkiApp.b());
        c cVar = new c(this.x, this.q);
        this.r = cVar;
        cVar.setDrawAccuracyEnabled(false);
        this.q.getOverlays().add(this.r);
        this.q.setMapListener(this);
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10) {
            if (i2 == 1) {
                setResult(1, intent);
                finish();
            }
        } else if (i == 9 && i2 == -1) {
            String[] stringArrayExtra = intent.getStringArrayExtra("locationArr");
            GeoPoint geoPoint = new GeoPoint(Double.valueOf(stringArrayExtra[0]).doubleValue(), Double.valueOf(stringArrayExtra[1]).doubleValue());
            this.q.getController().animateTo(geoPoint);
            this.q.getController().setCenter(geoPoint);
            Marker marker = new Marker(this.q);
            this.z = marker;
            marker.setPosition(geoPoint);
            this.z.setIcon(new BitmapDrawable(MiTalkiApp.b().getResources(), BitmapFactory.decodeResource(MiTalkiApp.b().getResources(), R.drawable.lat_icon_choose)));
            this.z.setOnMarkerClickListener(this);
            this.q.getOverlays().add(this.z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cancel /* 2131296438 */:
                finish();
                return;
            case R.id.map_icon_my_locate_iv /* 2131296858 */:
                double[] r = d0.r();
                GeoPoint geoPoint = new GeoPoint(r[0], r[1]);
                this.q.getController().animateTo(geoPoint);
                this.q.getController().setCenter(geoPoint);
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296859 */:
                this.q.getController().zoomIn();
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296861 */:
                this.q.getController().zoomOut();
                return;
            case R.id.search_tv /* 2131297142 */:
                a(OffMapAddressSearchActivity.class, 9);
                return;
            case R.id.sure /* 2131297249 */:
                if (!c0.b(this)) {
                    c0.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                List<GeoPoint> points = ((Polygon) this.q.getOverlays().get(this.s)).getPoints();
                GeoPoint[] geoPointArr = {points.get(0), points.get(2)};
                Intent intent = new Intent(this, GoogleMapDownloadDefinitionActivity.class);
                intent.putExtra("intent_init_points", geoPointArr);
                intent.putStringArrayListExtra("off_map_downloaded_names", this.t);
                startActivityForResult(intent, 10);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_osm_offmap);
        this.t = getIntent().getStringArrayListExtra("off_map_downloaded_names");
        this.q = (MapView) a(R.id.map);
        findViewById(R.id.search_tv).setOnClickListener(this);
        findViewById(R.id.map_icon_my_locate_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_small_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_big_iv).setOnClickListener(this);
        findViewById(R.id.sure).setOnClickListener(this);
        findViewById(R.id.cancel).setOnClickListener(this);
        x();
        SensorManager sensorManager = (SensorManager) MiTalkiApp.b().getSystemService(ai.ac);
        this.v = sensorManager;
        this.w = sensorManager.getDefaultSensor(3);
        if (MiTalkiApp.b().l()) {
            MiTalkiApp.b().b(false);
            this.y = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.q.destroyDrawingCache();
        if (this.y) {
            MiTalkiApp.b().b(true);
        }
    }

    @Override // org.osmdroid.views.overlay.Marker.OnMarkerClickListener
    public boolean onMarkerClick(Marker marker, MapView mapView) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        d dVar = this.x;
        if (dVar != null) {
            this.v.unregisterListener(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        d dVar = this.x;
        if (dVar != null) {
            this.v.registerListener(dVar, this.w, 3);
        }
    }

    @Override // org.osmdroid.events.MapListener
    public boolean onScroll(ScrollEvent scrollEvent) {
        w();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.r.enableMyLocation();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.r.disableMyLocation();
    }

    @Override // org.osmdroid.events.MapListener
    public boolean onZoom(ZoomEvent zoomEvent) {
        w();
        return false;
    }
}
