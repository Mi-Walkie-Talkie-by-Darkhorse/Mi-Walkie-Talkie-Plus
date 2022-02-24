package com.ifengyu.intercom.ui.activity;

import android.graphics.BitmapFactory;
import android.graphics.CornerPathEffect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import com.ifengyu.intercom.ui.map.f.a.h;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.Call;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.ItemizedIconOverlay;
import org.osmdroid.views.overlay.ItemizedOverlayWithFocus;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.Polyline;
import org.osmdroid.views.overlay.ScaleBarOverlay;

/* loaded from: classes2.dex */
public class OsmMapToolOperateActivity extends BaseActivity implements View.OnClickListener {
    private boolean A;
    private View B;
    private TextView C;
    private Polyline D;
    private ArrayList<GeoPoint> E;
    private ArrayList<Integer> F;
    private com.ifengyu.intercom.ui.map.f.a.b<OverlayItem> G;
    private ItemizedOverlayWithFocus<OverlayItem> H;
    private TextView I;
    private TextView J;
    private TextView K;
    private TextView L;
    private ItemizedOverlayWithFocus<OverlayItem> M;
    private int N;
    private IGeoPoint O;
    private LinearLayout P;
    private TextView Q;
    private ImageView R;
    private ImageView S;
    private ImageView T;
    private PopupWindow U;
    private SensorManager V;
    private Sensor W;
    private GestureDetector X;
    private double Y;
    private double Z;
    private int b0;
    @BindView(R.id.map_tool_kit_bottom_layout)
    LinearLayout bottomMapKitBottomLayout;
    private SpannableString c0;
    private SpannableString d0;
    private SpannableString e0;
    private boolean f0 = false;
    @BindView(R.id.mapView)
    MapView mapView;
    @BindView(R.id.map_icon_my_locate_iv)
    ImageView myLocateIV;
    @BindView(R.id.popupBg)
    View popupBg;
    private h q;
    private h r;
    private com.ifengyu.intercom.ui.map.f.a.a s;
    private MapDataProvider.MAP_TYPE t;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    private IMapController u;
    private com.ifengyu.intercom.ui.map.f.a.d v;
    private com.ifengyu.intercom.ui.map.f.a.c w;
    private ScaleBarOverlay x;
    private boolean y;
    private boolean z;
    @BindView(R.id.map_icon_zoom_big_iv)
    ImageView zoomBigIV;
    @BindView(R.id.map_icon_zoom_small_iv)
    ImageView zoomSmallIV;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            OverlayItem overlayItem;
            Projection projection = OsmMapToolOperateActivity.this.mapView.getProjection();
            if (OsmMapToolOperateActivity.this.y) {
                IGeoPoint fromPixels = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                OsmMapToolOperateActivity.this.E.add(new GeoPoint(fromPixels.getLatitude(), fromPixels.getLongitude()));
                OsmMapToolOperateActivity.this.D.setPoints(OsmMapToolOperateActivity.this.E);
                if (OsmMapToolOperateActivity.this.E.size() == 1) {
                    OsmMapToolOperateActivity.this.N = 0;
                    OsmMapToolOperateActivity.this.C.setTextSize(15.0f);
                    OsmMapToolOperateActivity.this.C.setText(OsmMapToolOperateActivity.this.getString(R.string.map_kit_select_next_point));
                    overlayItem = new OverlayItem(null, null, fromPixels);
                    overlayItem.setMarker(OsmMapToolOperateActivity.this.getResources().getDrawable(R.drawable.lat_icon_choose));
                    overlayItem.setMarkerHotspot(OverlayItem.HotspotPlace.BOTTOM_CENTER);
                } else {
                    float[] fArr = new float[1];
                    Location.distanceBetween(OsmMapToolOperateActivity.this.O.getLatitude(), OsmMapToolOperateActivity.this.O.getLongitude(), fromPixels.getLatitude(), fromPixels.getLongitude(), fArr);
                    float f = fArr[0];
                    OsmMapToolOperateActivity osmMapToolOperateActivity = OsmMapToolOperateActivity.this;
                    osmMapToolOperateActivity.N = (int) (osmMapToolOperateActivity.N + f);
                    OsmMapToolOperateActivity.this.C.setTextSize(22.0f);
                    OsmMapToolOperateActivity.this.C.setText(OsmMapToolOperateActivity.this.c0);
                    if (OsmMapToolOperateActivity.this.N < 1000) {
                        TextView textView = OsmMapToolOperateActivity.this.C;
                        textView.append(OsmMapToolOperateActivity.this.N + "");
                        OsmMapToolOperateActivity.this.C.append(OsmMapToolOperateActivity.this.d0);
                    } else {
                        OsmMapToolOperateActivity.this.C.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(OsmMapToolOperateActivity.this.N / 1000.0f)));
                        OsmMapToolOperateActivity.this.C.append(OsmMapToolOperateActivity.this.e0);
                    }
                    overlayItem = new OverlayItem(null, null, fromPixels);
                    overlayItem.setMarker(OsmMapToolOperateActivity.this.getResources().getDrawable(R.drawable.ranging_icon_spot));
                    overlayItem.setMarkerHotspot(OverlayItem.HotspotPlace.CENTER);
                }
                OsmMapToolOperateActivity.this.F.add(Integer.valueOf(OsmMapToolOperateActivity.this.N));
                OsmMapToolOperateActivity.this.O = fromPixels;
                OsmMapToolOperateActivity.this.G.addItem(0, overlayItem);
                OsmMapToolOperateActivity.this.mapView.invalidate();
            } else if (OsmMapToolOperateActivity.this.z) {
                IGeoPoint fromPixels2 = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                OsmMapToolOperateActivity osmMapToolOperateActivity2 = OsmMapToolOperateActivity.this;
                osmMapToolOperateActivity2.a(false, true, osmMapToolOperateActivity2.getString(R.string.measuring_altitude), R.drawable.load_spinner);
                OsmMapToolOperateActivity.this.a(fromPixels2);
            } else if (OsmMapToolOperateActivity.this.A) {
                IGeoPoint fromPixels3 = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                OverlayItem overlayItem2 = new OverlayItem(null, null, fromPixels3);
                overlayItem2.setMarker(new BitmapDrawable(OsmMapToolOperateActivity.this.getResources(), BitmapFactory.decodeResource(OsmMapToolOperateActivity.this.getResources(), R.drawable.lat_icon_choose)));
                OsmMapToolOperateActivity.this.M.removeAllItems();
                OsmMapToolOperateActivity.this.M.addItem(overlayItem2);
                OsmMapToolOperateActivity.this.mapView.invalidate();
                OsmMapToolOperateActivity.this.I.setText(OsmMapToolOperateActivity.this.getString(R.string.map_kit_selected_location_latlong));
                TextView textView2 = OsmMapToolOperateActivity.this.K;
                textView2.setText(String.format("%.6f", Double.valueOf(fromPixels3.getLongitude())) + "°E");
                TextView textView3 = OsmMapToolOperateActivity.this.L;
                textView3.setText(String.format("%.6f", Double.valueOf(fromPixels3.getLatitude())) + "°N");
                double[] r = d0.r();
                float[] fArr2 = new float[1];
                Location.distanceBetween(r[0], r[1], fromPixels3.getLatitude(), fromPixels3.getLongitude(), fArr2);
                int i = (int) fArr2[0];
                if (i < 1000) {
                    TextView textView4 = OsmMapToolOperateActivity.this.J;
                    textView4.setText(i + "m");
                } else {
                    String format = String.format("%.1f", Float.valueOf(i / 1000.0f));
                    TextView textView5 = OsmMapToolOperateActivity.this.J;
                    textView5.setText(format + "km");
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return OsmMapToolOperateActivity.this.X.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            OsmMapToolOperateActivity.this.x.disableScaleBar();
            OsmMapToolOperateActivity.this.x.enableScaleBar();
            OsmMapToolOperateActivity.this.x.setAlignBottom(true);
            OsmMapToolOperateActivity.this.mapView.getOverlays().remove(OsmMapToolOperateActivity.this.x);
            OsmMapToolOperateActivity.this.mapView.getOverlays().add(OsmMapToolOperateActivity.this.x);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends com.ifengyu.intercom.g.d.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IGeoPoint f6128b;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OsmMapToolOperateActivity.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OsmMapToolOperateActivity.this.j();
            }
        }

        d(IGeoPoint iGeoPoint) {
            this.f6128b = iGeoPoint;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            OsmMapToolOperateActivity osmMapToolOperateActivity = OsmMapToolOperateActivity.this;
            osmMapToolOperateActivity.b(osmMapToolOperateActivity.getString(R.string.measure_failed));
            OsmMapToolOperateActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }

        public void a(Double d, int i) {
            if (d == null || OsmMapToolOperateActivity.this.H == null) {
                OsmMapToolOperateActivity osmMapToolOperateActivity = OsmMapToolOperateActivity.this;
                osmMapToolOperateActivity.b(osmMapToolOperateActivity.getString(R.string.measure_failed));
                OsmMapToolOperateActivity.this.b(R.drawable.mine_icon_lose);
                k0.a(new b(), 1000L);
                return;
            }
            OsmMapToolOperateActivity.this.j();
            if (OsmMapToolOperateActivity.this.P == null || OsmMapToolOperateActivity.this.Q == null || OsmMapToolOperateActivity.this.R == null) {
                OsmMapToolOperateActivity osmMapToolOperateActivity2 = OsmMapToolOperateActivity.this;
                osmMapToolOperateActivity2.P = (LinearLayout) View.inflate(osmMapToolOperateActivity2, R.layout.map_kit_altitude_icon, null);
                OsmMapToolOperateActivity osmMapToolOperateActivity3 = OsmMapToolOperateActivity.this;
                osmMapToolOperateActivity3.Q = (TextView) osmMapToolOperateActivity3.P.findViewById(R.id.altitude_value);
                OsmMapToolOperateActivity osmMapToolOperateActivity4 = OsmMapToolOperateActivity.this;
                osmMapToolOperateActivity4.R = (ImageView) osmMapToolOperateActivity4.P.findViewById(R.id.altitude_bottom_point);
            }
            OsmMapToolOperateActivity.this.R.setVisibility(0);
            OsmMapToolOperateActivity.this.Q.setVisibility(0);
            TextView textView = OsmMapToolOperateActivity.this.Q;
            textView.setText(d.intValue() + "m");
            Drawable a2 = c0.a(OsmMapToolOperateActivity.this.P);
            OverlayItem overlayItem = new OverlayItem(null, null, this.f6128b);
            overlayItem.setMarker(a2);
            OsmMapToolOperateActivity.this.H.addItem(0, overlayItem);
            OsmMapToolOperateActivity.this.mapView.invalidate();
        }
    }

    private void A() {
        double[] r = d0.r();
        this.mapView.getController().animateTo(new GeoPoint(r[0], r[1]));
    }

    private void B() {
        if (this.t == MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP) {
            this.S.setImageResource(R.drawable.map_google_standard_unselected);
            this.T.setImageResource(R.drawable.map_google_satellite_selected);
            this.mapView.setTileSource(this.r);
            this.t = MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP;
            this.mapView.invalidate();
        }
    }

    private void C() {
        if (this.t == MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP) {
            this.S.setImageResource(R.drawable.map_google_standard_selected);
            this.T.setImageResource(R.drawable.map_google_satellite_unselected);
            this.mapView.setTileSource(this.q);
            this.t = MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP;
            this.mapView.invalidate();
        }
    }

    private void y() {
        this.X = new GestureDetector(this, new a());
        this.q = new h(MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP, 4, 18, new String[0]);
        this.r = new h(MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP, 4, 18, new String[0]);
        if (d0.n() == 3) {
            this.s = new com.ifengyu.intercom.ui.map.f.a.a(this, this.q);
        } else if (d0.n() == 4) {
            this.s = new com.ifengyu.intercom.ui.map.f.a.a(this, this.r);
        }
        this.t = MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP;
        this.mapView.setTileProvider(this.s);
        this.mapView.setMultiTouchControls(true);
        this.mapView.setBuiltInZoomControls(false);
        IMapController controller = this.mapView.getController();
        this.u = controller;
        controller.setZoom(this.b0);
        this.u.setCenter(new GeoPoint(this.Y, this.Z));
        this.v = new com.ifengyu.intercom.ui.map.f.a.d(MiTalkiApp.b());
        com.ifengyu.intercom.ui.map.f.a.c cVar = new com.ifengyu.intercom.ui.map.f.a.c(this.v, this.mapView);
        this.w = cVar;
        cVar.setDrawAccuracyEnabled(false);
        this.mapView.getOverlays().add(this.w);
        ScaleBarOverlay scaleBarOverlay = new ScaleBarOverlay(this.mapView);
        this.x = scaleBarOverlay;
        scaleBarOverlay.getBarPaint().setColor(-16777216);
        this.x.getBarPaint().setStrokeWidth(getResources().getDisplayMetrics().density);
        this.x.getTextPaint().setColor(-16777216);
        this.x.getTextPaint().setTextSize(c0.c(10.0f));
        this.x.setAlignBottom(true);
        this.x.setAlignRight(false);
        this.x.setMaxLength(0.6f);
        this.x.setScaleBarOffset((int) c0.a(8.0f), (int) c0.a(15.0f));
        this.mapView.getOverlays().add(this.x);
        this.mapView.setOnTouchListener(new b());
        this.mapView.getViewTreeObserver().addOnGlobalLayoutListener(new c());
    }

    private void z() {
        this.titleBarLeft.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        if (this.y) {
            SpannableString spannableString = new SpannableString(getString(R.string.map_tool_total_distance) + " ");
            this.c0 = spannableString;
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, this.c0.length(), 17);
            this.c0.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black80)), 0, this.c0.length(), 17);
            SpannableString spannableString2 = new SpannableString(" m");
            this.d0 = spannableString2;
            spannableString2.setSpan(new AbsoluteSizeSpan(12, true), 0, this.d0.length(), 17);
            SpannableString spannableString3 = new SpannableString(" km");
            this.e0 = spannableString3;
            spannableString3.setSpan(new AbsoluteSizeSpan(12, true), 0, this.e0.length(), 17);
            this.titleBarTitle.setText(R.string.ranging);
            View inflate = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.B = inflate;
            inflate.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.C = (TextView) this.B.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.B.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.C.setTypeface(p.f5324b);
            this.C.setTextSize(15.0f);
            this.C.setText(R.string.map_kit_select_start_point);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.B);
            this.bottomMapKitBottomLayout.setVisibility(0);
            Polyline polyline = new Polyline();
            this.D = polyline;
            polyline.setWidth(c0.a(2.0f));
            this.D.setColor(getResources().getColor(R.color.track_record_color));
            this.D.getPaint().setAntiAlias(true);
            this.D.getPaint().setPathEffect(new CornerPathEffect(5.0f));
            this.D.setInfoWindow(null);
            if (this.E == null) {
                this.E = new ArrayList<>();
            }
            if (this.F == null) {
                this.F = new ArrayList<>();
            }
            this.G = new com.ifengyu.intercom.ui.map.f.a.b<>(new ArrayList(), null, this);
            this.mapView.getOverlays().add(this.D);
            this.mapView.getOverlays().add(this.G);
        } else if (this.z) {
            this.titleBarTitle.setText(R.string.altitude_h);
            View inflate2 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.B = inflate2;
            inflate2.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.C = (TextView) this.B.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.B.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.C.setText(R.string.click_map_measure_elevation);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.B);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.H = new ItemizedOverlayWithFocus<>(new ArrayList(), (ItemizedIconOverlay.OnItemGestureListener<OverlayItem>) null, this);
            this.mapView.getOverlays().add(this.H);
        } else {
            this.titleBarTitle.setText(R.string.latitude_and_longitude);
            View inflate3 = View.inflate(this, R.layout.map_tool_kit_bottom_inner_location_layout, null);
            this.B = inflate3;
            this.I = (TextView) inflate3.findViewById(R.id.map_kit_latandlong_my_location_text);
            this.J = (TextView) this.B.findViewById(R.id.map_kit_latandlong_distance_value);
            this.K = (TextView) this.B.findViewById(R.id.map_kit_latandlong_my_location_longtitude_value);
            this.L = (TextView) this.B.findViewById(R.id.map_kit_latandlong_my_location_latitude_value);
            double[] r = d0.r();
            TextView textView = this.K;
            textView.setText(String.format("%.6f", Double.valueOf(r[1])) + "°E");
            TextView textView2 = this.L;
            textView2.setText(String.format("%.6f", Double.valueOf(r[0])) + "°N");
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.B);
            this.bottomMapKitBottomLayout.setBackground(getResources().getDrawable(R.drawable.white_bg));
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.M = new ItemizedOverlayWithFocus<>(new ArrayList(), (ItemizedIconOverlay.OnItemGestureListener<OverlayItem>) null, this);
            this.mapView.getOverlays().add(this.M);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.map_icon_my_locate_iv /* 2131296858 */:
                A();
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296859 */:
                this.u.zoomIn();
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296861 */:
                this.u.zoomOut();
                return;
            case R.id.map_switch_mode_satellitic /* 2131296875 */:
                B();
                this.U.dismiss();
                return;
            case R.id.map_switch_mode_standard /* 2131296877 */:
                C();
                this.U.dismiss();
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
        setContentView(R.layout.activity_osmmap_tool_operate);
        ButterKnife.bind(this);
        String string = getIntent().getExtras().getString("map_kit_measure_what");
        if ("measure_distance".equals(string)) {
            this.y = true;
        } else if ("measure_altitude".equals(string)) {
            this.z = true;
        } else if ("measure_latLong".equals(string)) {
            this.A = true;
        }
        this.Y = getIntent().getExtras().getDouble("osm_map_latitude");
        this.Z = getIntent().getExtras().getDouble("osm_map_longitude");
        this.b0 = getIntent().getExtras().getInt("osm_map_zoom_level");
        y();
        z();
        SensorManager sensorManager = (SensorManager) MiTalkiApp.b().getSystemService(ai.ac);
        this.V = sensorManager;
        this.W = sensorManager.getDefaultSensor(3);
        if (MiTalkiApp.b().l()) {
            MiTalkiApp.b().b(false);
            this.f0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.z) {
            this.H = null;
        }
        if (this.f0) {
            MiTalkiApp.b().b(true);
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        z.c("OsmMapToolOperateActivity", "onStart");
        super.onStart();
        com.ifengyu.intercom.ui.map.f.a.d dVar = this.v;
        if (dVar != null) {
            this.V.registerListener(dVar, this.W, 3);
        }
        com.ifengyu.intercom.ui.map.f.a.c cVar = this.w;
        if (cVar != null && !cVar.isMyLocationEnabled()) {
            this.w.enableMyLocation();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        z.c("OsmMapToolOperateActivity", "onStop");
        super.onStop();
        com.ifengyu.intercom.ui.map.f.a.c cVar = this.w;
        if (cVar != null) {
            cVar.disableMyLocation();
        }
        com.ifengyu.intercom.ui.map.f.a.d dVar = this.v;
        if (dVar != null) {
            this.V.unregisterListener(dVar);
        }
    }

    private void w() {
        if (this.z) {
            this.H.removeAllItems();
            this.mapView.invalidate();
        } else if (this.y) {
            this.E.clear();
            this.F.clear();
            this.G.removeAllItems();
            this.C.setTextSize(15.0f);
            this.C.setText(getString(R.string.map_kit_select_start_point));
            this.D.setPoints(this.E);
            this.mapView.invalidate();
        }
    }

    private void x() {
        if (this.z && this.H.size() > 0) {
            this.H.removeItem(0);
            this.mapView.invalidate();
        } else if (this.y && this.G.size() > 0 && this.E.size() > 0) {
            this.G.removeItem(0);
            ArrayList<GeoPoint> arrayList = this.E;
            arrayList.remove(arrayList.size() - 1);
            if (this.E.size() == 0) {
                this.C.setTextSize(15.0f);
                this.C.setText(getString(R.string.map_kit_select_start_point));
            }
            if (this.E.size() > 0 && this.F.size() > 0) {
                ArrayList<GeoPoint> arrayList2 = this.E;
                this.O = arrayList2.get(arrayList2.size() - 1);
                ArrayList<Integer> arrayList3 = this.F;
                this.N = arrayList3.get(arrayList3.size() - 1).intValue();
            }
            this.D.setPoints(this.E);
            this.mapView.invalidate();
            ArrayList<Integer> arrayList4 = this.F;
            arrayList4.remove(arrayList4.size() - 1);
            if (this.F.size() == 0) {
                this.C.setTextSize(15.0f);
                this.C.setText(getString(R.string.map_kit_select_start_point));
            } else if (this.F.size() == 1) {
                this.C.setTextSize(15.0f);
                this.C.setText(getString(R.string.map_kit_select_next_point));
            } else {
                ArrayList<Integer> arrayList5 = this.F;
                int intValue = arrayList5.get(arrayList5.size() - 1).intValue();
                this.C.setTextSize(22.0f);
                this.C.setText(this.c0);
                if (this.N < 1000) {
                    TextView textView = this.C;
                    textView.append(intValue + "");
                    this.C.append(this.d0);
                    return;
                }
                this.C.append(String.format(Locale.getDefault(), "%.1f", Float.valueOf(intValue / 1000.0f)));
                this.C.append(this.e0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IGeoPoint iGeoPoint) {
        com.ifengyu.intercom.g.a.a(iGeoPoint.getLatitude(), iGeoPoint.getLongitude(), new d(iGeoPoint));
    }
}
