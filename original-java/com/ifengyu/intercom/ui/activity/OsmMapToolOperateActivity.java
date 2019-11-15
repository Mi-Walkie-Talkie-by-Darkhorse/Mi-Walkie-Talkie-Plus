package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.CornerPathEffect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider.MAP_TYPE;
import com.ifengyu.intercom.ui.map.d.a.a;
import com.ifengyu.intercom.ui.map.d.a.b;
import com.ifengyu.intercom.ui.map.d.a.c;
import com.ifengyu.intercom.ui.map.d.a.d;
import com.ifengyu.intercom.ui.map.d.a.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.ItemizedOverlayWithFocus;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.OverlayItem.HotspotPlace;
import org.osmdroid.views.overlay.Polyline;
import org.osmdroid.views.overlay.ScaleBarOverlay;

public class OsmMapToolOperateActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public ArrayList<GeoPoint> A;
    /* access modifiers changed from: private */
    public ArrayList<Integer> B;
    /* access modifiers changed from: private */
    public b<OverlayItem> C;
    /* access modifiers changed from: private */
    public ItemizedOverlayWithFocus<OverlayItem> D;
    /* access modifiers changed from: private */
    public TextView E;
    /* access modifiers changed from: private */
    public TextView F;
    /* access modifiers changed from: private */
    public TextView G;
    /* access modifiers changed from: private */
    public TextView H;
    /* access modifiers changed from: private */
    public ItemizedOverlayWithFocus<OverlayItem> I;
    /* access modifiers changed from: private */
    public int J;
    /* access modifiers changed from: private */
    public IGeoPoint K;
    /* access modifiers changed from: private */
    public LinearLayout L;
    /* access modifiers changed from: private */
    public TextView M;
    /* access modifiers changed from: private */
    public ImageView N;
    private ImageView O;
    private ImageView P;
    private PopupWindow Q;
    private SensorManager R;
    private Sensor S;
    /* access modifiers changed from: private */
    public GestureDetector T;
    private double U;
    private double V;
    private int W;
    /* access modifiers changed from: private */
    public SpannableString X;
    /* access modifiers changed from: private */
    public SpannableString Y;
    /* access modifiers changed from: private */
    public SpannableString Z;
    private h a;
    private boolean aa = false;
    private h b;
    @BindView(2131755238)
    LinearLayout bottomMapKitBottomLayout;
    private a c;
    private MAP_TYPE d;
    @BindView(2131755233)
    MapView mapView;
    @BindView(2131755237)
    ImageView myLocateIV;
    @BindView(2131755292)
    View popupBg;
    private IMapController q;
    private d r;
    private c s;
    /* access modifiers changed from: private */
    public ScaleBarOverlay t;
    @BindView(2131755203)
    ImageView titleBarLeft;
    @BindView(2131755588)
    TextView titleBarTitle;
    /* access modifiers changed from: private */
    public boolean u;
    /* access modifiers changed from: private */
    public boolean v;
    /* access modifiers changed from: private */
    public boolean w;
    private View x;
    /* access modifiers changed from: private */
    public TextView y;
    /* access modifiers changed from: private */
    public Polyline z;
    @BindView(2131755235)
    ImageView zoomBigIV;
    @BindView(2131755236)
    ImageView zoomSmallIV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_osmmap_tool_operate);
        ButterKnife.bind((Activity) this);
        String string = getIntent().getExtras().getString("map_kit_measure_what");
        if ("measure_distance".equals(string)) {
            this.u = true;
        } else if ("measure_altitude".equals(string)) {
            this.v = true;
        } else if ("measure_latLong".equals(string)) {
            this.w = true;
        }
        this.U = getIntent().getExtras().getDouble("osm_map_latitude");
        this.V = getIntent().getExtras().getDouble("osm_map_longitude");
        this.W = getIntent().getExtras().getInt("osm_map_zoom_level");
        s();
        r();
        this.R = (SensorManager) MiTalkiApp.a().getSystemService("sensor");
        this.S = this.R.getDefaultSensor(3);
        if (MiTalkiApp.a().e()) {
            MiTalkiApp.a().c(false);
            this.aa = true;
        }
    }

    public void onStart() {
        s.c("OsmMapToolOperateActivity", "onStart");
        super.onStart();
        if (this.r != null) {
            this.R.registerListener(this.r, this.S, 3);
        }
        if (this.s != null && !this.s.isMyLocationEnabled()) {
            this.s.enableMyLocation();
        }
    }

    public void onStop() {
        s.c("OsmMapToolOperateActivity", "onStop");
        super.onStop();
        if (this.s != null) {
            this.s.disableMyLocation();
        }
        if (this.r != null) {
            this.R.unregisterListener(this.r);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.v) {
            this.D = null;
        }
        if (this.aa) {
            MiTalkiApp.a().c(true);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.map_icon_zoom_big_iv /*2131755235*/:
                this.q.zoomIn();
                return;
            case R.id.map_icon_zoom_small_iv /*2131755236*/:
                this.q.zoomOut();
                return;
            case R.id.map_icon_my_locate_iv /*2131755237*/:
                q();
                return;
            case R.id.map_switch_mode_standard /*2131755741*/:
                d();
                this.Q.dismiss();
                return;
            case R.id.map_switch_mode_satellitic /*2131755743*/:
                e();
                this.Q.dismiss();
                return;
            case R.id.map_tool_kit_bottom_back_btn /*2131755745*/:
                c();
                return;
            case R.id.map_tool_kit_bottom_delete_btn /*2131755747*/:
                f();
                return;
            default:
                return;
        }
    }

    private void c() {
        if (this.v) {
            this.D.removeAllItems();
            this.mapView.invalidate();
        } else if (this.u) {
            this.A.clear();
            this.B.clear();
            this.C.removeAllItems();
            this.y.setTextSize(15.0f);
            this.y.setText(getString(R.string.map_kit_select_start_point));
            this.z.setPoints(this.A);
            this.mapView.invalidate();
        }
    }

    private void d() {
        if (this.d == MAP_TYPE.GOOGLE_SATELLITE_MAP) {
            this.O.setImageResource(R.drawable.map_google_standard_selected);
            this.P.setImageResource(R.drawable.map_google_satellite_unselected);
            this.mapView.setTileSource(this.a);
            this.d = MAP_TYPE.GOOGLE_2D_MAP;
            this.mapView.invalidate();
        }
    }

    private void e() {
        if (this.d == MAP_TYPE.GOOGLE_2D_MAP) {
            this.O.setImageResource(R.drawable.map_google_standard_unselected);
            this.P.setImageResource(R.drawable.map_google_satellite_selected);
            this.mapView.setTileSource(this.b);
            this.d = MAP_TYPE.GOOGLE_SATELLITE_MAP;
            this.mapView.invalidate();
        }
    }

    private void f() {
        if (this.v && this.D.size() > 0) {
            this.D.removeItem(0);
            this.mapView.invalidate();
        } else if (this.u && this.C.size() > 0 && this.A.size() > 0) {
            this.C.removeItem(0);
            this.A.remove(this.A.size() - 1);
            if (this.A.size() == 0) {
                this.y.setTextSize(15.0f);
                this.y.setText(getString(R.string.map_kit_select_start_point));
            }
            if (this.A.size() > 0 && this.B.size() > 0) {
                this.K = (IGeoPoint) this.A.get(this.A.size() - 1);
                this.J = ((Integer) this.B.get(this.B.size() - 1)).intValue();
            }
            this.z.setPoints(this.A);
            this.mapView.invalidate();
            this.B.remove(this.B.size() - 1);
            if (this.B.size() == 0) {
                this.y.setTextSize(15.0f);
                this.y.setText(getString(R.string.map_kit_select_start_point));
            } else if (this.B.size() == 1) {
                this.y.setTextSize(15.0f);
                this.y.setText(getString(R.string.map_kit_select_next_point));
            } else {
                int intValue = ((Integer) this.B.get(this.B.size() - 1)).intValue();
                this.y.setTextSize(22.0f);
                this.y.setText(this.X);
                if (this.J < 1000) {
                    this.y.append(intValue + "");
                    this.y.append(this.Y);
                    return;
                }
                this.y.append(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) intValue) / 1000.0f)}));
                this.y.append(this.Z);
            }
        }
    }

    private void q() {
        double[] Y2 = w.Y();
        this.mapView.getController().animateTo(new GeoPoint(Y2[0], Y2[1]));
    }

    private void r() {
        this.titleBarLeft.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        if (this.u) {
            this.X = new SpannableString(getString(R.string.map_tool_total_distance) + Token.SEPARATOR);
            this.X.setSpan(new AbsoluteSizeSpan(12, true), 0, this.X.length(), 17);
            this.X.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black80)), 0, this.X.length(), 17);
            this.Y = new SpannableString(" m");
            this.Y.setSpan(new AbsoluteSizeSpan(12, true), 0, this.Y.length(), 17);
            this.Z = new SpannableString(" km");
            this.Z.setSpan(new AbsoluteSizeSpan(12, true), 0, this.Z.length(), 17);
            this.titleBarTitle.setText(R.string.ranging);
            this.x = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.x.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.y = (TextView) this.x.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.x.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.y.setTypeface(l.c);
            this.y.setTextSize(15.0f);
            this.y.setText(R.string.map_kit_select_start_point);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.x);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.z = new Polyline();
            this.z.setWidth(v.a(2.0f));
            this.z.setColor(getResources().getColor(R.color.track_record_color));
            this.z.getPaint().setAntiAlias(true);
            this.z.getPaint().setPathEffect(new CornerPathEffect(5.0f));
            this.z.setInfoWindow(null);
            if (this.A == null) {
                this.A = new ArrayList<>();
            }
            if (this.B == null) {
                this.B = new ArrayList<>();
            }
            this.C = new b<>(new ArrayList(), null, this);
            this.mapView.getOverlays().add(this.z);
            this.mapView.getOverlays().add(this.C);
        } else if (this.v) {
            this.titleBarTitle.setText(R.string.altitude_h);
            this.x = View.inflate(this, R.layout.map_tool_kit_bottom_inner_delete_layout, null);
            this.x.findViewById(R.id.map_tool_kit_bottom_delete_btn).setOnClickListener(this);
            this.y = (TextView) this.x.findViewById(R.id.map_tool_kit_bottom_prompt);
            this.x.findViewById(R.id.map_tool_kit_bottom_back_btn).setOnClickListener(this);
            this.y.setText(R.string.click_map_measure_elevation);
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.x);
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.D = new ItemizedOverlayWithFocus<>((List<Item>) new ArrayList<Item>(), null, (Context) this);
            this.mapView.getOverlays().add(this.D);
        } else {
            this.titleBarTitle.setText(R.string.latitude_and_longitude);
            this.x = View.inflate(this, R.layout.map_tool_kit_bottom_inner_location_layout, null);
            this.E = (TextView) this.x.findViewById(R.id.map_kit_latandlong_my_location_text);
            this.F = (TextView) this.x.findViewById(R.id.map_kit_latandlong_distance_value);
            this.G = (TextView) this.x.findViewById(R.id.map_kit_latandlong_my_location_longtitude_value);
            this.H = (TextView) this.x.findViewById(R.id.map_kit_latandlong_my_location_latitude_value);
            double[] Y2 = w.Y();
            this.G.setText(String.format("%.6f", new Object[]{Double.valueOf(Y2[1])}) + "°E");
            this.H.setText(String.format("%.6f", new Object[]{Double.valueOf(Y2[0])}) + "°N");
            this.bottomMapKitBottomLayout.removeAllViews();
            this.bottomMapKitBottomLayout.addView(this.x);
            this.bottomMapKitBottomLayout.setBackground(getResources().getDrawable(R.drawable.white_bg));
            this.bottomMapKitBottomLayout.setVisibility(0);
            this.I = new ItemizedOverlayWithFocus<>((List<Item>) new ArrayList<Item>(), null, (Context) this);
            this.mapView.getOverlays().add(this.I);
        }
    }

    private void s() {
        this.T = new GestureDetector(this, new SimpleOnGestureListener() {
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                OverlayItem overlayItem;
                Projection projection = OsmMapToolOperateActivity.this.mapView.getProjection();
                if (OsmMapToolOperateActivity.this.u) {
                    IGeoPoint fromPixels = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                    OsmMapToolOperateActivity.this.A.add(new GeoPoint(fromPixels.getLatitude(), fromPixels.getLongitude()));
                    OsmMapToolOperateActivity.this.z.setPoints(OsmMapToolOperateActivity.this.A);
                    if (OsmMapToolOperateActivity.this.A.size() == 1) {
                        OsmMapToolOperateActivity.this.J = 0;
                        OsmMapToolOperateActivity.this.y.setTextSize(15.0f);
                        OsmMapToolOperateActivity.this.y.setText(OsmMapToolOperateActivity.this.getString(R.string.map_kit_select_next_point));
                        overlayItem = new OverlayItem(null, null, fromPixels);
                        overlayItem.setMarker(OsmMapToolOperateActivity.this.getResources().getDrawable(R.drawable.lat_icon_choose));
                        overlayItem.setMarkerHotspot(HotspotPlace.BOTTOM_CENTER);
                    } else {
                        float[] fArr = new float[1];
                        Location.distanceBetween(OsmMapToolOperateActivity.this.K.getLatitude(), OsmMapToolOperateActivity.this.K.getLongitude(), fromPixels.getLatitude(), fromPixels.getLongitude(), fArr);
                        OsmMapToolOperateActivity.this.J = (int) (fArr[0] + ((float) OsmMapToolOperateActivity.this.J));
                        OsmMapToolOperateActivity.this.y.setTextSize(22.0f);
                        OsmMapToolOperateActivity.this.y.setText(OsmMapToolOperateActivity.this.X);
                        if (OsmMapToolOperateActivity.this.J < 1000) {
                            OsmMapToolOperateActivity.this.y.append(OsmMapToolOperateActivity.this.J + "");
                            OsmMapToolOperateActivity.this.y.append(OsmMapToolOperateActivity.this.Y);
                        } else {
                            OsmMapToolOperateActivity.this.y.append(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) OsmMapToolOperateActivity.this.J) / 1000.0f)}));
                            OsmMapToolOperateActivity.this.y.append(OsmMapToolOperateActivity.this.Z);
                        }
                        overlayItem = new OverlayItem(null, null, fromPixels);
                        overlayItem.setMarker(OsmMapToolOperateActivity.this.getResources().getDrawable(R.drawable.ranging_icon_spot));
                        overlayItem.setMarkerHotspot(HotspotPlace.CENTER);
                    }
                    OsmMapToolOperateActivity.this.B.add(Integer.valueOf(OsmMapToolOperateActivity.this.J));
                    OsmMapToolOperateActivity.this.K = fromPixels;
                    OsmMapToolOperateActivity.this.C.addItem(0, overlayItem);
                    OsmMapToolOperateActivity.this.mapView.invalidate();
                } else if (OsmMapToolOperateActivity.this.v) {
                    IGeoPoint fromPixels2 = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                    OsmMapToolOperateActivity.this.a(false, true, OsmMapToolOperateActivity.this.getString(R.string.measuring_altitude), (int) R.drawable.load_spinner);
                    OsmMapToolOperateActivity.this.a(fromPixels2);
                } else if (OsmMapToolOperateActivity.this.w) {
                    IGeoPoint fromPixels3 = projection.fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
                    OverlayItem overlayItem2 = new OverlayItem(null, null, fromPixels3);
                    overlayItem2.setMarker(new BitmapDrawable(OsmMapToolOperateActivity.this.getResources(), BitmapFactory.decodeResource(OsmMapToolOperateActivity.this.getResources(), R.drawable.lat_icon_choose)));
                    OsmMapToolOperateActivity.this.I.removeAllItems();
                    OsmMapToolOperateActivity.this.I.addItem(overlayItem2);
                    OsmMapToolOperateActivity.this.mapView.invalidate();
                    OsmMapToolOperateActivity.this.E.setText(OsmMapToolOperateActivity.this.getString(R.string.map_kit_selected_location_latlong));
                    OsmMapToolOperateActivity.this.G.setText(String.format("%.6f", new Object[]{Double.valueOf(fromPixels3.getLongitude())}) + "°E");
                    OsmMapToolOperateActivity.this.H.setText(String.format("%.6f", new Object[]{Double.valueOf(fromPixels3.getLatitude())}) + "°N");
                    double[] Y = w.Y();
                    float[] fArr2 = new float[1];
                    Location.distanceBetween(Y[0], Y[1], fromPixels3.getLatitude(), fromPixels3.getLongitude(), fArr2);
                    int i = (int) fArr2[0];
                    if (i < 1000) {
                        OsmMapToolOperateActivity.this.F.setText(i + "m");
                    } else {
                        OsmMapToolOperateActivity.this.F.setText(String.format("%.1f", new Object[]{Float.valueOf(((float) i) / 1000.0f)}) + "km");
                    }
                }
                return false;
            }
        });
        this.a = new h(MAP_TYPE.GOOGLE_2D_MAP, 4, 18, new String[0]);
        this.b = new h(MAP_TYPE.GOOGLE_SATELLITE_MAP, 4, 18, new String[0]);
        if (w.X() == 3) {
            this.c = new a(this, this.a);
        } else if (w.X() == 4) {
            this.c = new a(this, this.b);
        }
        this.d = MAP_TYPE.GOOGLE_2D_MAP;
        this.mapView.setTileProvider(this.c);
        this.mapView.setMultiTouchControls(true);
        this.mapView.setBuiltInZoomControls(false);
        this.q = this.mapView.getController();
        this.q.setZoom(this.W);
        this.q.setCenter(new GeoPoint(this.U, this.V));
        this.r = new d(MiTalkiApp.a());
        this.s = new c(this.r, this.mapView);
        this.s.setDrawAccuracyEnabled(false);
        this.mapView.getOverlays().add(this.s);
        this.t = new ScaleBarOverlay(this.mapView);
        this.t.getBarPaint().setColor(ViewCompat.MEASURED_STATE_MASK);
        this.t.getBarPaint().setStrokeWidth(getResources().getDisplayMetrics().density);
        this.t.getTextPaint().setColor(ViewCompat.MEASURED_STATE_MASK);
        this.t.getTextPaint().setTextSize((float) v.c(10.0f));
        this.t.setAlignBottom(true);
        this.t.setAlignRight(false);
        this.t.setMaxLength(0.6f);
        this.t.setScaleBarOffset((int) v.a(8.0f), (int) v.a(15.0f));
        this.mapView.getOverlays().add(this.t);
        this.mapView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return OsmMapToolOperateActivity.this.T.onTouchEvent(motionEvent);
            }
        });
        this.mapView.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                OsmMapToolOperateActivity.this.t.disableScaleBar();
                OsmMapToolOperateActivity.this.t.enableScaleBar();
                OsmMapToolOperateActivity.this.t.setAlignBottom(true);
                OsmMapToolOperateActivity.this.mapView.getOverlays().remove(OsmMapToolOperateActivity.this.t);
                OsmMapToolOperateActivity.this.mapView.getOverlays().add(OsmMapToolOperateActivity.this.t);
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(final IGeoPoint iGeoPoint) {
        com.ifengyu.intercom.a.a.a(iGeoPoint.getLatitude(), iGeoPoint.getLongitude(), (com.ifengyu.intercom.a.b.b) new com.ifengyu.intercom.a.b.a() {
            public void a(Call call, Exception exc, int i) {
                OsmMapToolOperateActivity.this.b(OsmMapToolOperateActivity.this.getString(R.string.measure_failed));
                OsmMapToolOperateActivity.this.d(R.drawable.mine_icon_lose);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        OsmMapToolOperateActivity.this.k();
                    }
                }, 1000);
            }

            public void a(Double d, int i) {
                if (d == null || OsmMapToolOperateActivity.this.D == null) {
                    OsmMapToolOperateActivity.this.b(OsmMapToolOperateActivity.this.getString(R.string.measure_failed));
                    OsmMapToolOperateActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            OsmMapToolOperateActivity.this.k();
                        }
                    }, 1000);
                    return;
                }
                OsmMapToolOperateActivity.this.k();
                if (OsmMapToolOperateActivity.this.L == null || OsmMapToolOperateActivity.this.M == null || OsmMapToolOperateActivity.this.N == null) {
                    OsmMapToolOperateActivity.this.L = (LinearLayout) View.inflate(OsmMapToolOperateActivity.this, R.layout.map_kit_altitude_icon, null);
                    OsmMapToolOperateActivity.this.M = (TextView) OsmMapToolOperateActivity.this.L.findViewById(R.id.altitude_value);
                    OsmMapToolOperateActivity.this.N = (ImageView) OsmMapToolOperateActivity.this.L.findViewById(R.id.altitude_bottom_point);
                }
                OsmMapToolOperateActivity.this.N.setVisibility(0);
                OsmMapToolOperateActivity.this.M.setVisibility(0);
                OsmMapToolOperateActivity.this.M.setText(d.intValue() + "m");
                Drawable b2 = v.b((View) OsmMapToolOperateActivity.this.L);
                OverlayItem overlayItem = new OverlayItem(null, null, iGeoPoint);
                overlayItem.setMarker(b2);
                OsmMapToolOperateActivity.this.D.addItem(0, overlayItem);
                OsmMapToolOperateActivity.this.mapView.invalidate();
            }
        });
    }
}
