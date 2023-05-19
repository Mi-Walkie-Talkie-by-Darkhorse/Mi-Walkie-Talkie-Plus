package com.ifengyu.intercom.p216ui.activity;

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
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* renamed from: com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity */
/* loaded from: classes2.dex */
public class GaoDeMapToolOperateActivity extends BaseActivity1 implements View.OnClickListener, AMap.OnMapClickListener, AMap.OnMyLocationChangeListener {

    /* renamed from: A */
    private SpannableString f14784A;

    /* renamed from: B */
    private SpannableString f14785B;

    /* renamed from: C */
    private SpannableString f14786C;
    @BindView(R.id.map_tool_kit_bottom_layout)
    LinearLayout bottomMapKitBottomLayout;

    /* renamed from: j */
    private AMap f14787j;

    /* renamed from: k */
    private boolean f14788k;

    /* renamed from: l */
    private boolean f14789l;

    /* renamed from: m */
    private View f14790m;
    @BindView(R.id.mapView)
    MapView mapView;
    @BindView(R.id.map_icon_my_locate_iv)
    ImageView myLocateIV;

    /* renamed from: n */
    private TextView f14791n;

    /* renamed from: o */
    private Polyline f14792o;

    /* renamed from: p */
    private ArrayList<Integer> f14793p;

    /* renamed from: q */
    private int f14794q;

    /* renamed from: r */
    private LatLng f14795r;

    /* renamed from: s */
    private ArrayList<Marker> f14796s;

    /* renamed from: t */
    private ArrayList<Marker> f14797t;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;

    /* renamed from: u */
    private TextView f14798u;

    /* renamed from: v */
    private TextView f14799v;

    /* renamed from: w */
    private TextView f14800w;

    /* renamed from: x */
    private TextView f14801x;

    /* renamed from: y */
    private Marker f14802y;

    /* renamed from: z */
    private CameraPosition f14803z;
    @BindView(R.id.map_icon_zoom_big_iv)
    ImageView zoomBigIV;
    @BindView(R.id.map_icon_zoom_small_iv)
    ImageView zoomSmallIV;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity$a */
    /* loaded from: classes2.dex */
    public class C4348a implements AMap.OnMapLoadedListener {
        C4348a() {
        }

        @Override // com.amap.api.maps.AMap.OnMapLoadedListener
        public void onMapLoaded() {
            GaoDeMapToolOperateActivity.this.f14787j.moveCamera(CameraUpdateFactory.newCameraPosition(GaoDeMapToolOperateActivity.this.f14803z));
        }
    }

    /* renamed from: H */
    private void m10540H() {
        if (this.f14788k) {
            this.f14793p.clear();
            Iterator<Marker> it2 = this.f14796s.iterator();
            while (it2.hasNext()) {
                it2.next().remove();
            }
            this.f14796s.clear();
            this.f14791n.setTextSize(15.0f);
            this.f14791n.setText(getString(R.string.map_kit_select_start_point));
            List<LatLng> points = this.f14792o.getPoints();
            points.clear();
            this.f14792o.setPoints(points);
        } else if (this.f14789l) {
            Iterator<Marker> it3 = this.f14797t.iterator();
            while (it3.hasNext()) {
                it3.next().remove();
            }
            this.f14797t.clear();
        }
    }

    /* renamed from: I */
    private void m10539I() {
        if (this.f14788k && this.f14792o.getPoints().size() > 0 && this.f14796s.size() > 0) {
            List<LatLng> points = this.f14792o.getPoints();
            points.remove(points.size() - 1);
            this.f14792o.setPoints(points);
            ArrayList<Marker> arrayList = this.f14796s;
            arrayList.get(arrayList.size() - 1).remove();
            ArrayList<Marker> arrayList2 = this.f14796s;
            arrayList2.remove(arrayList2.size() - 1);
            ArrayList<Integer> arrayList3 = this.f14793p;
            arrayList3.remove(arrayList3.size() - 1);
            if (this.f14793p.size() == 0) {
                this.f14791n.setTextSize(15.0f);
                this.f14791n.setText(getString(R.string.map_kit_select_start_point));
            } else if (this.f14793p.size() == 1) {
                this.f14791n.setTextSize(15.0f);
                this.f14791n.setText(getString(R.string.map_kit_select_next_point));
            } else {
                ArrayList<Integer> arrayList4 = this.f14793p;
                int intValue = arrayList4.get(arrayList4.size() - 1).intValue();
                this.f14791n.setTextSize(22.0f);
                this.f14791n.setText(this.f14784A);
                if (this.f14794q < 1000) {
                    TextView textView = this.f14791n;
                    textView.append(intValue + "");
                    this.f14791n.append(this.f14785B);
                    return;
                }
                this.f14791n.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(intValue / 1000.0f)));
                this.f14791n.append(this.f14786C);
            }
        } else if (!this.f14789l || this.f14797t.size() <= 0) {
        } else {
            ArrayList<Marker> arrayList5 = this.f14797t;
            arrayList5.get(arrayList5.size() - 1).remove();
            ArrayList<Marker> arrayList6 = this.f14797t;
            arrayList6.remove(arrayList6.size() - 1);
        }
    }

    /* renamed from: J */
    private void m10538J() {
        AMap map = this.mapView.getMap();
        this.f14787j = map;
        map.setMapType(MiTalkClientUtil.m11199m() == 1 ? 1 : 2);
        if (MiTalkClientUtil.m11199m() == 1) {
            String str = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style.data";
            String str2 = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style/style_extra.data";
        }
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        myLocationStyle.myLocationType(5);
        myLocationStyle.interval(2000L);
        myLocationStyle.myLocationIcon(BitmapDescriptorFactory.fromResource(R.drawable.icon_for_my_location));
        myLocationStyle.anchor(0.5f, 0.5f);
        myLocationStyle.radiusFillColor(0);
        myLocationStyle.strokeColor(0);
        myLocationStyle.strokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f14787j.setMyLocationStyle(myLocationStyle);
        this.f14787j.setMyLocationEnabled(true);
        this.f14787j.setMaxZoomLevel(18.0f);
        this.f14787j.setOnMapLoadedListener(new C4348a());
        this.f14787j.setOnMapClickListener(this);
        UiSettings uiSettings = this.f14787j.getUiSettings();
        uiSettings.setRotateGesturesEnabled(false);
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings.setLogoLeftMargin((int) MethodsUtils.m11292h(8.0f));
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setZoomControlsEnabled(false);
    }

    /* renamed from: K */
    private void m10537K() {
        this.titleBarLeft.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        if (this.f14788k) {
            SpannableString spannableString = new SpannableString(getString(R.string.map_tool_total_distance) + " ");
            this.f14784A = spannableString;
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, this.f14784A.length(), 17);
            this.f14784A.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black80)), 0, this.f14784A.length(), 17);
            SpannableString spannableString2 = new SpannableString(" m");
            this.f14785B = spannableString2;
            spannableString2.setSpan(new AbsoluteSizeSpan(12, true), 0, this.f14785B.length(), 17);
            SpannableString spannableString3 = new SpannableString(" km");
            this.f14786C = spannableString3;
            spannableString3.setSpan(new AbsoluteSizeSpan(12, true), 0, this.f14786C.length(), 17);
            this.titleBarTitle.setText(R.string.ranging);
            View inflate = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.f14790m = inflate;
            inflate.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.f14791n = (TextView) this.f14790m.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.f14790m.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.f14791n.setTypeface(AppConstants.f13909c);
            this.f14791n.setTextSize(15.0f);
            this.f14791n.setText(R.string.map_kit_select_start_point);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.f14790m);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.f14792o = this.f14787j.addPolyline(new PolylineOptions().width(MethodsUtils.m11292h(3.0f)).color(getResources().getColor(R.color.track_record_color)));
            if (this.f14793p == null) {
                this.f14793p = new ArrayList<>();
            }
            if (this.f14796s == null) {
                this.f14796s = new ArrayList<>();
            }
        } else if (this.f14789l) {
            this.titleBarTitle.setText(R.string.altitude_h);
            View inflate2 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.f14790m = inflate2;
            inflate2.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.f14791n = (TextView) this.f14790m.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.f14790m.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.f14791n.setText(R.string.click_map_measure_elevation);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.f14790m);
            this.bottomMapKitBottomLayout.setVisibility(0);
            if (this.f14797t == null) {
                this.f14797t = new ArrayList<>();
            }
        } else {
            this.titleBarTitle.setText(R.string.latitude_and_longitude);
            View inflate3 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_location_layout, null);
            this.f14790m = inflate3;
            this.f14798u = (TextView) inflate3.findViewById(R.id.map_kit_latandlong_my_location_text);
            this.f14799v = (TextView) this.f14790m.findViewById(R.id.map_kit_latandlong_distance_value);
            this.f14800w = (TextView) this.f14790m.findViewById(R.id.map_kit_latandlong_my_location_longtitude_value);
            this.f14801x = (TextView) this.f14790m.findViewById(R.id.map_kit_latandlong_my_location_latitude_value);
            double d = getIntent().getExtras().getDouble("gaode_my_location_longitude");
            double d2 = getIntent().getExtras().getDouble("gaode_my_location_latitude");
            TextView textView = this.f14800w;
            textView.setText(String.format("%.6f", Double.valueOf(d)) + "°E");
            TextView textView2 = this.f14801x;
            textView2.setText(String.format("%.6f", Double.valueOf(d2)) + "°N");
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.f14790m);
            this.bottomMapKitBottomLayout.setBackground(getResources().getDrawable(R.drawable.white_bg));
            this.bottomMapKitBottomLayout.setVisibility(0);
            Marker addMarker = this.f14787j.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).anchor(0.5f, 1.0f).draggable(false));
            this.f14802y = addMarker;
            addMarker.setClickable(false);
            this.f14802y.setVisible(false);
        }
    }

    /* renamed from: L */
    private void m10536L() {
        double[] m11189r = MiTalkClientUtil.m11189r();
        this.f14787j.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(m11189r[0], m11189r[1], true)));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.map_icon_my_locate_iv /* 2131296973 */:
                m10536L();
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296974 */:
                this.f14787j.animateCamera(CameraUpdateFactory.zoomIn());
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296976 */:
                this.f14787j.animateCamera(CameraUpdateFactory.zoomOut());
                return;
            case R.id.map_tool_kit_bottom_back_btn /* 2131296991 */:
                m10540H();
                return;
            case R.id.map_tool_kit_bottom_delete_btn /* 2131296992 */:
                m10539I();
                return;
            case R.id.title_bar_left /* 2131297422 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gaodemap_tool_operate);
        ButterKnife.bind(this);
        this.mapView.onCreate(bundle);
        String string = getIntent().getExtras().getString("map_kit_measure_what");
        if ("measure_distance".equals(string)) {
            this.f14788k = true;
        } else if ("measure_altitude".equals(string)) {
            this.f14789l = true;
        } else {
            "measure_latLong".equals(string);
        }
        this.f14803z = (CameraPosition) getIntent().getExtras().getParcelable("gaode_map_cameraposition");
        m10538J();
        m10537K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f14789l) {
            this.f14797t = null;
        }
        this.mapView.onDestroy();
    }

    @Override // com.amap.api.maps.AMap.OnMapClickListener
    public void onMapClick(LatLng latLng) {
        Marker addMarker;
        if (this.f14788k) {
            this.f14792o.getOptions().add(latLng);
            Polyline polyline = this.f14792o;
            polyline.setPoints(polyline.getPoints());
            if (this.f14792o.getPoints().size() == 1) {
                this.f14794q = 0;
                this.f14791n.setTextSize(15.0f);
                this.f14791n.setText(getString(R.string.map_kit_select_next_point));
                addMarker = this.f14787j.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.lat_icon_choose)).position(latLng).anchor(0.5f, 1.0f).draggable(false));
            } else {
                float[] fArr = new float[1];
                LatLng latLng2 = this.f14795r;
                Location.distanceBetween(latLng2.latitude, latLng2.longitude, latLng.latitude, latLng.longitude, fArr);
                this.f14794q = (int) (this.f14794q + fArr[0]);
                this.f14791n.setTextSize(22.0f);
                this.f14791n.setText(this.f14784A);
                if (this.f14794q < 1000) {
                    TextView textView = this.f14791n;
                    textView.append(this.f14794q + "");
                    this.f14791n.append(this.f14785B);
                } else {
                    this.f14791n.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(this.f14794q / 1000.0f)));
                    this.f14791n.append(this.f14786C);
                }
                addMarker = this.f14787j.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.ranging_icon_spot)).position(latLng).anchor(0.5f, 0.5f).draggable(false));
            }
            this.f14793p.add(Integer.valueOf(this.f14794q));
            this.f14795r = latLng;
            addMarker.setClickable(false);
            this.f14796s.add(addMarker);
        } else if (this.f14789l) {
        } else {
            this.f14802y.setVisible(true);
            this.f14802y.setPosition(latLng);
            this.f14798u.setText(getString(R.string.map_kit_selected_location_latlong));
            TextView textView2 = this.f14800w;
            textView2.setText(String.format("%.6f", Double.valueOf(latLng.longitude)) + "°E");
            TextView textView3 = this.f14801x;
            textView3.setText(String.format("%.6f", Double.valueOf(latLng.latitude)) + "°N");
            double[] m11189r = MiTalkClientUtil.m11189r();
            float[] fArr2 = new float[1];
            Location.distanceBetween(m11189r[0], m11189r[1], latLng.latitude, latLng.longitude, fArr2);
            int i = (int) fArr2[0];
            if (i < 1000) {
                TextView textView4 = this.f14799v;
                textView4.setText(i + "m");
                return;
            }
            String format = String.format("%.1f", Float.valueOf(i / 1000.0f));
            TextView textView5 = this.f14799v;
            textView5.setText(format + "km");
        }
    }

    @Override // com.amap.api.maps.AMap.OnMyLocationChangeListener
    public void onMyLocationChange(Location location) {
        if (location != null) {
            Bundle extras = location.getExtras();
            if (extras != null && extras.getInt(MyLocationStyle.ERROR_CODE) == 0) {
                extras.getInt(MyLocationStyle.LOCATION_TYPE);
                return;
            } else {
                Log.e("amap", "定位信息， bundle is null 或者有错");
                return;
            }
        }
        Log.e("amap", "定位失败");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mapView.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
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

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C4161y.m11049f("OsmMapToolOperateActivity", "onStart");
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        C4161y.m11049f("OsmMapToolOperateActivity", "onStop");
        super.onStop();
    }
}
