package com.ifengyu.intercom.ui.activity;

import android.location.Location;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.MapView;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class GaoDeMapToolOperateActivity extends BaseActivity implements View.OnClickListener, AMap.OnMapClickListener, AMap.OnMyLocationChangeListener {
    private ArrayList<Marker> A;
    private TextView B;
    private TextView C;
    private TextView D;
    private TextView E;
    private Marker F;
    private CameraPosition G;
    private SpannableString H;
    private SpannableString I;
    private SpannableString J;
    @BindView(R.id.map_tool_kit_bottom_layout)
    LinearLayout bottomMapKitBottomLayout;
    @BindView(R.id.mapView)
    MapView mapView;
    @BindView(R.id.map_icon_my_locate_iv)
    ImageView myLocateIV;
    private AMap q;
    private boolean r;
    private boolean s;
    private View t;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    private TextView u;
    private Polyline v;
    private ArrayList<Integer> w;
    private int x;
    private LatLng y;
    private ArrayList<Marker> z;
    @BindView(R.id.map_icon_zoom_big_iv)
    ImageView zoomBigIV;
    @BindView(R.id.map_icon_zoom_small_iv)
    ImageView zoomSmallIV;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements AMap.OnMapLoadedListener {
        a() {
        }

        @Override // com.amap.api.maps.AMap.OnMapLoadedListener
        public void onMapLoaded() {
            GaoDeMapToolOperateActivity.this.q.moveCamera(CameraUpdateFactory.newCameraPosition(GaoDeMapToolOperateActivity.this.G));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends com.ifengyu.intercom.g.d.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LatLng f6060b;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GaoDeMapToolOperateActivity.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0156b implements Runnable {
            RunnableC0156b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GaoDeMapToolOperateActivity.this.j();
            }
        }

        b(LatLng latLng) {
            this.f6060b = latLng;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            GaoDeMapToolOperateActivity gaoDeMapToolOperateActivity = GaoDeMapToolOperateActivity.this;
            gaoDeMapToolOperateActivity.b(gaoDeMapToolOperateActivity.getString(R.string.measure_failed));
            GaoDeMapToolOperateActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }

        public void a(Double d, int i) {
            if (d == null || GaoDeMapToolOperateActivity.this.A == null) {
                GaoDeMapToolOperateActivity.this.b("测量失败");
                GaoDeMapToolOperateActivity.this.b(R.drawable.mine_icon_lose);
                k0.a(new RunnableC0156b(), 1000L);
                return;
            }
            GaoDeMapToolOperateActivity.this.j();
            View inflate = View.inflate(GaoDeMapToolOperateActivity.this, R.layout.map_kit_altitude_icon, null);
            ((TextView) inflate.findViewById(R.id.altitude_value)).setText(d.intValue() + "m");
            Marker addMarker = GaoDeMapToolOperateActivity.this.q.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromView(inflate)).position(this.f6060b).anchor(0.5f, 0.9f).draggable(false));
            addMarker.setClickable(false);
            GaoDeMapToolOperateActivity.this.A.add(addMarker);
        }
    }

    private void A() {
        double[] r = d0.r();
        this.q.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(r[0], r[1], true)));
    }

    private void w() {
        if (this.r) {
            this.w.clear();
            Iterator<Marker> it = this.z.iterator();
            while (it.hasNext()) {
                it.next().remove();
            }
            this.z.clear();
            this.u.setTextSize(15.0f);
            this.u.setText(getString(R.string.map_kit_select_start_point));
            this.v.getPoints().clear();
            Polyline polyline = this.v;
            polyline.setPoints(polyline.getPoints());
        } else if (this.s) {
            Iterator<Marker> it2 = this.A.iterator();
            while (it2.hasNext()) {
                it2.next().remove();
            }
            this.A.clear();
        }
    }

    private void x() {
        if (this.r && this.v.getPoints().size() > 0 && this.z.size() > 0) {
            this.v.getPoints().remove(this.v.getPoints().size() - 1);
            Polyline polyline = this.v;
            polyline.setPoints(polyline.getPoints());
            ArrayList<Marker> arrayList = this.z;
            arrayList.get(arrayList.size() - 1).remove();
            ArrayList<Marker> arrayList2 = this.z;
            arrayList2.remove(arrayList2.size() - 1);
            ArrayList<Integer> arrayList3 = this.w;
            arrayList3.remove(arrayList3.size() - 1);
            if (this.w.size() == 0) {
                this.u.setTextSize(15.0f);
                this.u.setText(getString(R.string.map_kit_select_start_point));
            } else if (this.w.size() == 1) {
                this.u.setTextSize(15.0f);
                this.u.setText(getString(R.string.map_kit_select_next_point));
            } else {
                ArrayList<Integer> arrayList4 = this.w;
                int intValue = arrayList4.get(arrayList4.size() - 1).intValue();
                this.u.setTextSize(22.0f);
                this.u.setText(this.H);
                if (this.x < 1000) {
                    TextView textView = this.u;
                    textView.append(intValue + "");
                    this.u.append(this.I);
                    return;
                }
                this.u.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(intValue / 1000.0f)));
                this.u.append(this.J);
            }
        } else if (this.s && this.A.size() > 0) {
            ArrayList<Marker> arrayList5 = this.A;
            arrayList5.get(arrayList5.size() - 1).remove();
            ArrayList<Marker> arrayList6 = this.A;
            arrayList6.remove(arrayList6.size() - 1);
        }
    }

    private void y() {
        AMap map = this.mapView.getMap();
        this.q = map;
        map.setMapType(d0.n() == 1 ? 1 : 2);
        if (d0.n() == 1) {
            String str = k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/style/map_style.data";
            if (new File(str).exists()) {
                this.q.setCustomMapStylePath(str);
                this.q.setMapCustomEnable(true);
            }
        }
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        myLocationStyle.myLocationType(5);
        myLocationStyle.interval(2000L);
        myLocationStyle.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        myLocationStyle.anchor(0.5f, 0.5f);
        myLocationStyle.radiusFillColor(0);
        myLocationStyle.strokeColor(0);
        myLocationStyle.strokeWidth(0.0f);
        this.q.setMyLocationStyle(myLocationStyle);
        this.q.setMyLocationEnabled(true);
        this.q.setMaxZoomLevel(18.0f);
        this.q.setOnMapLoadedListener(new a());
        this.q.setOnMapClickListener(this);
        UiSettings uiSettings = this.q.getUiSettings();
        uiSettings.setRotateGesturesEnabled(false);
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings.setLogoLeftMargin((int) c0.a(8.0f));
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setZoomControlsEnabled(false);
    }

    private void z() {
        this.titleBarLeft.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        if (this.r) {
            SpannableString spannableString = new SpannableString(getString(R.string.map_tool_total_distance) + " ");
            this.H = spannableString;
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, this.H.length(), 17);
            this.H.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black80)), 0, this.H.length(), 17);
            SpannableString spannableString2 = new SpannableString(" m");
            this.I = spannableString2;
            spannableString2.setSpan(new AbsoluteSizeSpan(12, true), 0, this.I.length(), 17);
            SpannableString spannableString3 = new SpannableString(" km");
            this.J = spannableString3;
            spannableString3.setSpan(new AbsoluteSizeSpan(12, true), 0, this.J.length(), 17);
            this.titleBarTitle.setText(R.string.ranging);
            View inflate = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.t = inflate;
            inflate.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.u = (TextView) this.t.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.t.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.u.setTypeface(p.f5324b);
            this.u.setTextSize(15.0f);
            this.u.setText(R.string.map_kit_select_start_point);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.t);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.v = this.q.addPolyline(new PolylineOptions().width(c0.a(3.0f)).color(getResources().getColor(R.color.track_record_color)));
            if (this.w == null) {
                this.w = new ArrayList<>();
            }
            if (this.z == null) {
                this.z = new ArrayList<>();
            }
        } else if (this.s) {
            this.titleBarTitle.setText(R.string.altitude_h);
            View inflate2 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.t = inflate2;
            inflate2.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.u = (TextView) this.t.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.t.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.u.setText(R.string.click_map_measure_elevation);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.t);
            this.bottomMapKitBottomLayout.setVisibility(0);
            if (this.A == null) {
                this.A = new ArrayList<>();
            }
        } else {
            this.titleBarTitle.setText(R.string.latitude_and_longitude);
            View inflate3 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_location_layout, null);
            this.t = inflate3;
            this.B = (TextView) inflate3.findViewById(R.id.map_kit_latandlong_my_location_text);
            this.C = (TextView) this.t.findViewById(R.id.map_kit_latandlong_distance_value);
            this.D = (TextView) this.t.findViewById(R.id.map_kit_latandlong_my_location_longtitude_value);
            this.E = (TextView) this.t.findViewById(R.id.map_kit_latandlong_my_location_latitude_value);
            double d = getIntent().getExtras().getDouble("gaode_my_location_longitude");
            double d2 = getIntent().getExtras().getDouble("gaode_my_location_latitude");
            TextView textView = this.D;
            textView.setText(String.format("%.6f", Double.valueOf(d)) + "°E");
            TextView textView2 = this.E;
            textView2.setText(String.format("%.6f", Double.valueOf(d2)) + "°N");
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.t);
            this.bottomMapKitBottomLayout.setBackground(getResources().getDrawable(R.drawable.white_bg));
            this.bottomMapKitBottomLayout.setVisibility(0);
            Marker addMarker = this.q.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).anchor(0.5f, 1.0f).draggable(false));
            this.F = addMarker;
            addMarker.setClickable(false);
            this.F.setVisible(false);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.map_icon_my_locate_iv /* 2131296858 */:
                A();
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296859 */:
                this.q.animateCamera(CameraUpdateFactory.zoomIn());
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296861 */:
                this.q.animateCamera(CameraUpdateFactory.zoomOut());
                return;
            case R.id.map_tool_kit_bottom_back_btn /* 2131296880 */:
                w();
                return;
            case R.id.map_tool_kit_bottom_delete_btn /* 2131296881 */:
                x();
                return;
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaodemap_tool_operate);
        ButterKnife.bind(this);
        this.mapView.onCreate(bundle);
        String string = getIntent().getExtras().getString("map_kit_measure_what");
        if ("measure_distance".equals(string)) {
            this.r = true;
        } else if ("measure_altitude".equals(string)) {
            this.s = true;
        } else {
            "measure_latLong".equals(string);
        }
        this.G = (CameraPosition) getIntent().getExtras().getParcelable("gaode_map_cameraposition");
        MapsInitializer.sdcardDir = c0.a(this);
        y();
        z();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.s) {
            this.A = null;
        }
        this.mapView.onDestroy();
    }

    @Override // com.amap.api.maps.AMap.OnMapClickListener
    public void onMapClick(LatLng latLng) {
        Marker marker;
        if (this.r) {
            this.v.getOptions().add(latLng);
            Polyline polyline = this.v;
            polyline.setPoints(polyline.getPoints());
            if (this.v.getPoints().size() == 1) {
                this.x = 0;
                this.u.setTextSize(15.0f);
                this.u.setText(getString(R.string.map_kit_select_next_point));
                marker = this.q.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).position(latLng).anchor(0.5f, 1.0f).draggable(false));
            } else {
                float[] fArr = new float[1];
                LatLng latLng2 = this.y;
                Location.distanceBetween(latLng2.latitude, latLng2.longitude, latLng.latitude, latLng.longitude, fArr);
                this.x = (int) (this.x + fArr[0]);
                this.u.setTextSize(22.0f);
                this.u.setText(this.H);
                if (this.x < 1000) {
                    TextView textView = this.u;
                    textView.append(this.x + "");
                    this.u.append(this.I);
                } else {
                    this.u.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(this.x / 1000.0f)));
                    this.u.append(this.J);
                }
                marker = this.q.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.ranging_icon_spot)).position(latLng).anchor(0.5f, 0.5f).draggable(false));
            }
            this.w.add(Integer.valueOf(this.x));
            this.y = latLng;
            marker.setClickable(false);
            this.z.add(marker);
        } else if (this.s) {
            a(false, true, getString(R.string.measuring_altitude), R.drawable.load_spinner);
            a(latLng);
        } else {
            this.F.setVisible(true);
            this.F.setPosition(latLng);
            this.B.setText(getString(R.string.map_kit_selected_location_latlong));
            TextView textView2 = this.D;
            textView2.setText(String.format("%.6f", Double.valueOf(latLng.longitude)) + "°E");
            TextView textView3 = this.E;
            textView3.setText(String.format("%.6f", Double.valueOf(latLng.latitude)) + "°N");
            double[] r = d0.r();
            float[] fArr2 = new float[1];
            Location.distanceBetween(r[0], r[1], latLng.latitude, latLng.longitude, fArr2);
            int i = (int) fArr2[0];
            if (i < 1000) {
                TextView textView4 = this.C;
                textView4.setText(i + "m");
                return;
            }
            String format = String.format("%.1f", Float.valueOf(i / 1000.0f));
            TextView textView5 = this.C;
            textView5.setText(format + "km");
        }
    }

    @Override // com.amap.api.maps.AMap.OnMyLocationChangeListener
    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras == null || extras.getInt(MyLocationStyle.ERROR_CODE) != 0) {
                Log.e("amap", "定位信息， bundle is null 或者有错");
            } else {
                extras.getInt(MyLocationStyle.LOCATION_TYPE);
            }
        } else {
            Log.e("amap", "定位失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mapView.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mapView.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.mapView.onSaveInstanceState(bundle);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        z.c("OsmMapToolOperateActivity", "onStart");
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        z.c("OsmMapToolOperateActivity", "onStop");
        super.onStop();
    }

    private void a(LatLng latLng) {
        com.ifengyu.intercom.g.a.a(latLng.latitude, latLng.longitude, new b(latLng));
    }
}
