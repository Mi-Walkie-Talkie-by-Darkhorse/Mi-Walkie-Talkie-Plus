package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Environment;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMap.OnMapClickListener;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMyLocationChangeListener;
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
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.Call;

public class GaoDeMapToolOperateActivity extends BaseActivity implements OnClickListener, OnMapClickListener, OnMyLocationChangeListener {
    private TextView A;
    private TextView B;
    private Marker C;
    /* access modifiers changed from: private */
    public CameraPosition D;
    private SpannableString E;
    private SpannableString F;
    private SpannableString G;
    /* access modifiers changed from: private */
    public AMap a;
    private boolean b;
    @BindView(2131755238)
    LinearLayout bottomMapKitBottomLayout;
    private boolean c;
    private boolean d;
    @BindView(2131755233)
    MapView mapView;
    @BindView(2131755237)
    ImageView myLocateIV;
    private View q;
    private TextView r;
    private Polyline s;
    private ArrayList<Integer> t;
    @BindView(2131755203)
    ImageView titleBarLeft;
    @BindView(2131755588)
    TextView titleBarTitle;
    private int u;
    private LatLng v;
    private ArrayList<Marker> w;
    /* access modifiers changed from: private */
    public ArrayList<Marker> x;
    private TextView y;
    private TextView z;
    @BindView(2131755235)
    ImageView zoomBigIV;
    @BindView(2131755236)
    ImageView zoomSmallIV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_gaodemap_tool_operate);
        ButterKnife.bind((Activity) this);
        this.mapView.onCreate(bundle);
        String string = getIntent().getExtras().getString("map_kit_measure_what");
        if ("measure_distance".equals(string)) {
            this.b = true;
        } else if ("measure_altitude".equals(string)) {
            this.c = true;
        } else if ("measure_latLong".equals(string)) {
            this.d = true;
        }
        this.D = (CameraPosition) getIntent().getExtras().getParcelable("gaode_map_cameraposition");
        MapsInitializer.sdcardDir = v.d((Context) this);
        c();
        d();
    }

    private void c() {
        this.a = this.mapView.getMap();
        this.a.setMapType(w.X() == 1 ? 1 : 2);
        if (w.X() == 1) {
            String str = Environment.getExternalStorageDirectory() + "/" + "mitalki/map/style" + "/" + "map_style.data";
            if (new File(str).exists()) {
                this.a.setCustomMapStylePath(str);
                this.a.setMapCustomEnable(true);
            }
        }
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        myLocationStyle.myLocationType(5);
        myLocationStyle.interval(2000);
        myLocationStyle.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        myLocationStyle.anchor(0.5f, 0.5f);
        myLocationStyle.radiusFillColor(0);
        myLocationStyle.strokeColor(0);
        myLocationStyle.strokeWidth(0.0f);
        this.a.setMyLocationStyle(myLocationStyle);
        this.a.setMyLocationEnabled(true);
        this.a.setMaxZoomLevel(18.0f);
        this.a.setOnMapLoadedListener(new OnMapLoadedListener() {
            public void onMapLoaded() {
                GaoDeMapToolOperateActivity.this.a.moveCamera(CameraUpdateFactory.newCameraPosition(GaoDeMapToolOperateActivity.this.D));
            }
        });
        this.a.setOnMapClickListener(this);
        UiSettings uiSettings = this.a.getUiSettings();
        uiSettings.setRotateGesturesEnabled(false);
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings.setLogoLeftMargin((int) v.a(8.0f));
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setZoomControlsEnabled(false);
    }

    private void d() {
        this.titleBarLeft.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        if (this.b) {
            this.E = new SpannableString(getString(R.string.map_tool_total_distance) + Token.SEPARATOR);
            this.E.setSpan(new AbsoluteSizeSpan(12, true), 0, this.E.length(), 17);
            this.E.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black80)), 0, this.E.length(), 17);
            this.F = new SpannableString(" m");
            this.F.setSpan(new AbsoluteSizeSpan(12, true), 0, this.F.length(), 17);
            this.G = new SpannableString(" km");
            this.G.setSpan(new AbsoluteSizeSpan(12, true), 0, this.G.length(), 17);
            this.titleBarTitle.setText(R.string.ranging);
            this.q = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.q.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.r = (TextView) this.q.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.q.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.r.setTypeface(l.c);
            this.r.setTextSize(15.0f);
            this.r.setText(R.string.map_kit_select_start_point);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.q);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.s = this.a.addPolyline(new PolylineOptions().width(v.a(3.0f)).color(getResources().getColor(R.color.track_record_color)));
            if (this.t == null) {
                this.t = new ArrayList<>();
            }
            if (this.w == null) {
                this.w = new ArrayList<>();
            }
        } else if (this.c) {
            this.titleBarTitle.setText(R.string.altitude_h);
            this.q = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.q.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.r = (TextView) this.q.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.q.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.r.setText(R.string.click_map_measure_elevation);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.q);
            this.bottomMapKitBottomLayout.setVisibility(0);
            if (this.x == null) {
                this.x = new ArrayList<>();
            }
        } else {
            this.titleBarTitle.setText(R.string.latitude_and_longitude);
            this.q = View.inflate(this, R.layout.map_tool_kit_bottom_inner_location_layout, null);
            this.y = (TextView) this.q.findViewById(R.id.map_kit_latandlong_my_location_text);
            this.z = (TextView) this.q.findViewById(R.id.map_kit_latandlong_distance_value);
            this.A = (TextView) this.q.findViewById(R.id.map_kit_latandlong_my_location_longtitude_value);
            this.B = (TextView) this.q.findViewById(R.id.map_kit_latandlong_my_location_latitude_value);
            double d2 = getIntent().getExtras().getDouble("gaode_my_location_longitude");
            double d3 = getIntent().getExtras().getDouble("gaode_my_location_latitude");
            this.A.setText(String.format("%.6f", new Object[]{Double.valueOf(d2)}) + "°E");
            this.B.setText(String.format("%.6f", new Object[]{Double.valueOf(d3)}) + "°N");
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.q);
            this.bottomMapKitBottomLayout.setBackground(getResources().getDrawable(R.drawable.white_bg));
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.C = this.a.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).anchor(0.5f, 1.0f).draggable(false));
            this.C.setClickable(false);
            this.C.setVisible(false);
        }
    }

    public void onMapClick(LatLng latLng) {
        Marker addMarker;
        if (this.b) {
            this.s.getOptions().add(latLng);
            this.s.setPoints(this.s.getPoints());
            if (this.s.getPoints().size() == 1) {
                this.u = 0;
                this.r.setTextSize(15.0f);
                this.r.setText(getString(R.string.map_kit_select_next_point));
                addMarker = this.a.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).position(latLng).anchor(0.5f, 1.0f).draggable(false));
            } else {
                float[] fArr = new float[1];
                Location.distanceBetween(this.v.latitude, this.v.longitude, latLng.latitude, latLng.longitude, fArr);
                this.u = (int) (fArr[0] + ((float) this.u));
                this.r.setTextSize(22.0f);
                this.r.setText(this.E);
                if (this.u < 1000) {
                    this.r.append(this.u + "");
                    this.r.append(this.F);
                } else {
                    this.r.append(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) this.u) / 1000.0f)}));
                    this.r.append(this.G);
                }
                addMarker = this.a.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.ranging_icon_spot)).position(latLng).anchor(0.5f, 0.5f).draggable(false));
            }
            this.t.add(Integer.valueOf(this.u));
            this.v = latLng;
            addMarker.setClickable(false);
            this.w.add(addMarker);
        } else if (this.c) {
            a(false, true, getString(R.string.measuring_altitude), (int) R.drawable.load_spinner);
            a(latLng);
        } else {
            this.C.setVisible(true);
            this.C.setPosition(latLng);
            this.y.setText(getString(R.string.map_kit_selected_location_latlong));
            this.A.setText(String.format("%.6f", new Object[]{Double.valueOf(latLng.longitude)}) + "°E");
            this.B.setText(String.format("%.6f", new Object[]{Double.valueOf(latLng.latitude)}) + "°N");
            double[] Y = w.Y();
            float[] fArr2 = new float[1];
            Location.distanceBetween(Y[0], Y[1], latLng.latitude, latLng.longitude, fArr2);
            int i = (int) fArr2[0];
            if (i < 1000) {
                this.z.setText(i + "m");
                return;
            }
            this.z.setText(String.format("%.1f", new Object[]{Float.valueOf(((float) i) / 1000.0f)}) + "km");
        }
    }

    public void onStart() {
        s.c("OsmMapToolOperateActivity", "onStart");
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.mapView.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.mapView.onPause();
    }

    public void onStop() {
        s.c("OsmMapToolOperateActivity", "onStop");
        super.onStop();
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.mapView.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.c) {
            this.x = null;
        }
        this.mapView.onDestroy();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.map_icon_zoom_big_iv /*2131755235*/:
                this.a.animateCamera(CameraUpdateFactory.zoomIn());
                return;
            case R.id.map_icon_zoom_small_iv /*2131755236*/:
                this.a.animateCamera(CameraUpdateFactory.zoomOut());
                return;
            case R.id.map_icon_my_locate_iv /*2131755237*/:
                q();
                return;
            case R.id.map_tool_kit_bottom_back_btn /*2131755745*/:
                e();
                return;
            case R.id.map_tool_kit_bottom_delete_btn /*2131755747*/:
                f();
                return;
            default:
                return;
        }
    }

    private void e() {
        if (this.b) {
            this.t.clear();
            Iterator it = this.w.iterator();
            while (it.hasNext()) {
                ((Marker) it.next()).remove();
            }
            this.w.clear();
            this.r.setTextSize(15.0f);
            this.r.setText(getString(R.string.map_kit_select_start_point));
            this.s.getPoints().clear();
            this.s.setPoints(this.s.getPoints());
        } else if (this.c) {
            Iterator it2 = this.x.iterator();
            while (it2.hasNext()) {
                ((Marker) it2.next()).remove();
            }
            this.x.clear();
        }
    }

    private void f() {
        if (this.b && this.s.getPoints().size() > 0 && this.w.size() > 0) {
            this.s.getPoints().remove(this.s.getPoints().size() - 1);
            this.s.setPoints(this.s.getPoints());
            ((Marker) this.w.get(this.w.size() - 1)).remove();
            this.w.remove(this.w.size() - 1);
            this.t.remove(this.t.size() - 1);
            if (this.t.size() == 0) {
                this.r.setTextSize(15.0f);
                this.r.setText(getString(R.string.map_kit_select_start_point));
            } else if (this.t.size() == 1) {
                this.r.setTextSize(15.0f);
                this.r.setText(getString(R.string.map_kit_select_next_point));
            } else {
                int intValue = ((Integer) this.t.get(this.t.size() - 1)).intValue();
                this.r.setTextSize(22.0f);
                this.r.setText(this.E);
                if (this.u < 1000) {
                    this.r.append(intValue + "");
                    this.r.append(this.F);
                    return;
                }
                this.r.append(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) intValue) / 1000.0f)}));
                this.r.append(this.G);
            }
        } else if (this.c && this.x.size() > 0) {
            ((Marker) this.x.get(this.x.size() - 1)).remove();
            this.x.remove(this.x.size() - 1);
        }
    }

    private void q() {
        double[] Y = w.Y();
        this.a.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(Y[0], Y[1], true)));
    }

    private void a(final LatLng latLng) {
        a.a(latLng.latitude, latLng.longitude, (b) new com.ifengyu.intercom.a.b.a() {
            public void a(Call call, Exception exc, int i) {
                GaoDeMapToolOperateActivity.this.b(GaoDeMapToolOperateActivity.this.getString(R.string.measure_failed));
                GaoDeMapToolOperateActivity.this.d(R.drawable.mine_icon_lose);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        GaoDeMapToolOperateActivity.this.k();
                    }
                }, 1000);
            }

            public void a(Double d, int i) {
                if (d == null || GaoDeMapToolOperateActivity.this.x == null) {
                    GaoDeMapToolOperateActivity.this.b("测量失败");
                    GaoDeMapToolOperateActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            GaoDeMapToolOperateActivity.this.k();
                        }
                    }, 1000);
                    return;
                }
                GaoDeMapToolOperateActivity.this.k();
                View inflate = View.inflate(GaoDeMapToolOperateActivity.this, R.layout.map_kit_altitude_icon, null);
                ((TextView) inflate.findViewById(R.id.altitude_value)).setText(d.intValue() + "m");
                Marker addMarker = GaoDeMapToolOperateActivity.this.a.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromView(inflate)).position(latLng).anchor(0.5f, 0.9f).draggable(false));
                addMarker.setClickable(false);
                GaoDeMapToolOperateActivity.this.x.add(addMarker);
            }
        });
    }

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
}
