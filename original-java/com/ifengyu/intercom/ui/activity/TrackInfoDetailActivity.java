package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.internal.view.SupportMenu;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMap.OnMapScreenShotListener;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.MapView;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.github.mikephil.charting.c.d;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.XAxis.XAxisPosition;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.data.LineDataSet.Mode;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.ac;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.greendao.bean.c;
import com.ifengyu.intercom.greendao.dao.TrackPointDao.Properties;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.aa;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.mi.milinkforgame.sdk.data.Const;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.greenrobot.greendao.c.i;
import org.json.JSONException;
import org.json.JSONObject;

public class TrackInfoDetailActivity extends BaseActivity implements OnClickListener {
    private double A;
    private double B;
    private double C;
    private List<c> D;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.greendao.bean.b E;
    private ArrayList<LatLng> F;
    private long G;
    private String H;
    /* access modifiers changed from: private */
    public String I;
    private Typeface J;
    private LineChart K;
    private ArrayList<Entry> L;
    private ArrayList<ArrayList<LatLng>> M;
    /* access modifiers changed from: private */
    public String N;
    /* access modifiers changed from: private */
    public int O;
    /* access modifiers changed from: private */
    public LinearLayout P;
    /* access modifiers changed from: private */
    public LinearLayout Q;
    /* access modifiers changed from: private */
    public File R;
    /* access modifiers changed from: private */
    public AMap S;
    private LatLngBounds T;
    private final String a = "TrackInfoDetailActivity";
    private ImageView b;
    /* access modifiers changed from: private */
    public MapView c;
    private CirclrImageView d;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private double z;

    private class a implements d {
        public a() {
        }

        public String a(float f, com.github.mikephil.charting.components.a aVar) {
            if (f == 0.0f) {
                return "0";
            }
            return Float.valueOf(TrackInfoDetailActivity.this.N) + "km";
        }
    }

    private class b implements d {
        public b() {
        }

        public String a(float f, com.github.mikephil.charting.components.a aVar) {
            if (f == ((float) TrackInfoDetailActivity.this.O)) {
                return "";
            }
            return ((int) f) + "m";
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_track_info_detail);
        this.J = l.c;
        a(false, false, (int) R.string.dialog_obtain_data, (int) R.drawable.load_spinner);
        c();
        this.c.onCreate(bundle);
        this.G = getIntent().getLongExtra("trackInfoPrimaryKeyId", -1);
        this.H = getIntent().getStringExtra("track_info_for_what");
        s.c("TrackInfoDetailActivity", "intent trackPrimaryKetID:" + this.G + "---fromWhere:" + this.H);
        d();
    }

    private void c() {
        this.P = (LinearLayout) findViewById(R.id.track_share_group_center_layout);
        this.Q = (LinearLayout) findViewById(R.id.track_share_group_bottom_layout);
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        this.b = (ImageView) findViewById(R.id.title_bar_right);
        this.b.setVisibility(0);
        this.b.setImageResource(R.drawable.trail_map_share);
        this.b.setOnClickListener(this);
        MapsInitializer.sdcardDir = v.d((Context) this);
        this.c = (MapView) findViewById(R.id.track_display_map);
        this.S = this.c.getMap();
        this.S.setMapType(1);
        String str = Environment.getExternalStorageDirectory() + "/" + "mitalki/map/style" + "/" + "map_style.data";
        if (new File(str).exists()) {
            this.S.setCustomMapStylePath(str);
            this.S.setMapCustomEnable(true);
        }
        this.S.setMyLocationEnabled(false);
        UiSettings uiSettings = this.S.getUiSettings();
        uiSettings.setRotateGesturesEnabled(false);
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings.setLogoLeftMargin((int) v.a(8.0f));
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setZoomControlsEnabled(false);
        findViewById(R.id.map_icon_zoom_big_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_small_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_my_locate_iv).setOnClickListener(this);
        this.d = (CirclrImageView) findViewById(R.id.track_info_detail_user_icon);
        this.q = (TextView) findViewById(R.id.track_info_detail_user_name);
        this.r = (TextView) findViewById(R.id.track_info_detail_total_start_time);
        this.s = (TextView) findViewById(R.id.track_info_detail_total_distance);
        this.s.setTypeface(this.J);
        this.t = (TextView) findViewById(R.id.track_info_detail_total_time);
        this.t.setTypeface(this.J);
        this.u = (TextView) findViewById(R.id.track_info_detail_average_speed);
        this.u.setTypeface(this.J);
        this.v = (TextView) findViewById(R.id.track_info_detail_max_altitude);
        this.v.setTypeface(this.J);
        this.w = (TextView) findViewById(R.id.track_info_detail_average_altitude);
        this.w.setTypeface(this.J);
        this.x = (TextView) findViewById(R.id.track_info_detail_accrued_climb);
        this.x.setTypeface(this.J);
        this.y = (TextView) findViewById(R.id.track_info_detail_accrued_descent);
        this.y.setTypeface(this.J);
        this.K = (LineChart) findViewById(R.id.track_altitude_chart);
    }

    private void d() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        this.E = (com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(this.G));
        this.I = this.E.c();
        this.D = MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(this.I), new i[0]).a(Properties.g).c();
        this.L = new ArrayList<>();
        this.F = new ArrayList<>();
        this.M = new ArrayList<>();
        this.M.add(new ArrayList());
        float intValue = ((float) this.E.o().intValue()) / 20.0f;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i11 < this.D.size()) {
            c cVar = (c) this.D.get(i11);
            if (this.H.equals("for_preview_track")) {
                Integer e = cVar.e();
                if (i11 == 0) {
                    i = e.intValue();
                    int intValue2 = e.intValue();
                    i2 = intValue2;
                    i3 = e.intValue();
                    i4 = e.intValue();
                } else {
                    i = e.intValue() + i7;
                    if (i8 < e.intValue()) {
                        i8 = e.intValue();
                    }
                    if (i9 > e.intValue()) {
                        i2 = i8;
                        i3 = e.intValue();
                        i4 = i10;
                    } else {
                        i2 = i8;
                        i3 = i9;
                        i4 = i10;
                    }
                }
            } else {
                i = i7;
                i2 = i8;
                i3 = i9;
                i4 = i10;
            }
            Integer f = cVar.f();
            if (i11 == 0 || i11 == this.D.size() - 1) {
                this.L.add(new Entry(((float) f.intValue()) / 1000.0f, (float) cVar.e().intValue()));
                i5 = f.intValue();
            } else if (((float) f.intValue()) > ((float) i6) + intValue) {
                this.L.add(new Entry(((float) f.intValue()) / 1000.0f, (float) cVar.e().intValue()));
                i5 = f.intValue();
            } else {
                i5 = i6;
            }
            LatLng latLng = new LatLng(((double) cVar.c().intValue()) / 1000000.0d, ((double) cVar.d().intValue()) / 1000000.0d);
            this.F.add(latLng);
            ((ArrayList) this.M.get(this.M.size() - 1)).add(latLng);
            if (cVar.h()) {
                this.M.add(new ArrayList());
            }
            i11++;
            i6 = i5;
            i10 = i4;
            i9 = i3;
            i8 = i2;
            i7 = i;
        }
        int abs = Math.abs(i8 - i10);
        int abs2 = Math.abs(i10 - i9);
        if (this.H.equals("for_preview_track")) {
            int i12 = 0;
            if (i7 != 0) {
                i12 = i7 / this.D.size();
            }
            this.E.f(Integer.valueOf(i12));
            this.E.g(Integer.valueOf(i8));
            this.E.h(Integer.valueOf(i9));
            this.E.i(Integer.valueOf(abs));
            this.E.j(Integer.valueOf(abs2));
            MiTalkiApp.a().b().c().insertOrReplace(this.E);
        }
        SpannableString spannableString = new SpannableString(" km");
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString.length(), 17);
        SpannableString spannableString2 = new SpannableString("km/h");
        spannableString2.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString2.length(), 17);
        SpannableString spannableString3 = new SpannableString("m");
        spannableString3.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString3.length(), 17);
        ImageLoader.getInstance().displayImage(w.b().getString("avatar", ""), (ImageView) this.d, new Builder().showImageForEmptyUri((int) R.drawable.my_head_default).showImageOnFail((int) R.drawable.my_head_default).showImageOnLoading((int) R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.q.setText(w.M());
        this.r.setText(ac.f((long) this.E.h().intValue()));
        this.N = String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) this.E.o().intValue()) / 1000.0f)});
        this.s.setText(this.N);
        this.s.append(spannableString);
        SpannableString spannableString4 = new SpannableString(ac.a(this.E.n().intValue()));
        spannableString4.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString4.length(), 17);
        this.t.setText(spannableString4);
        this.u.setText(String.valueOf(this.E.p()));
        this.u.append(spannableString2);
        this.v.setText(String.valueOf(this.E.r()));
        this.v.append(spannableString3);
        this.w.setText(String.valueOf(this.E.q()));
        this.w.append(spannableString3);
        this.x.setText(String.valueOf(this.E.t()));
        this.x.append(spannableString3);
        this.y.setText(String.valueOf(this.E.u()));
        this.y.append(spannableString3);
        v();
        this.K.setData(u());
        e();
        t();
        k();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.c.getParent().requestDisallowInterceptTouchEvent(true);
        return super.dispatchTouchEvent(motionEvent);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                q();
                return;
            case R.id.map_icon_zoom_big_iv /*2131755235*/:
                this.S.animateCamera(CameraUpdateFactory.zoomIn());
                return;
            case R.id.map_icon_zoom_small_iv /*2131755236*/:
                this.S.animateCamera(CameraUpdateFactory.zoomOut());
                return;
            case R.id.map_icon_my_locate_iv /*2131755237*/:
                this.S.stopAnimation();
                this.S.moveCamera(CameraUpdateFactory.newLatLngBounds(this.T, (int) v.a(30.0f)));
                return;
            case R.id.title_bar_right /*2131755355*/:
                f();
                return;
            default:
                return;
        }
    }

    private void e() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.F.size()) {
                LatLng latLng = (LatLng) this.F.get(i2);
                double d2 = latLng.latitude;
                double d3 = latLng.longitude;
                if (i2 == 0) {
                    this.z = d2;
                    this.A = d2;
                    this.B = d3;
                    this.C = d3;
                } else {
                    if (d2 > this.z) {
                        this.z = d2;
                    }
                    if (d2 < this.A) {
                        this.A = d2;
                    }
                    if (d3 > this.B) {
                        this.B = d3;
                    }
                    if (d3 < this.C) {
                        this.C = d3;
                    }
                }
                i = i2 + 1;
            } else {
                this.T = new LatLngBounds(new LatLng(this.A, this.C), new LatLng(this.z, this.B));
                this.S.moveCamera(CameraUpdateFactory.newLatLngBounds(this.T, (int) v.a(30.0f)));
                return;
            }
        }
    }

    private void f() {
        a(false, false, (int) R.string.dialog_please_wait, (int) R.drawable.load_spinner);
        this.S.stopAnimation();
        this.S.moveCamera(CameraUpdateFactory.newLatLngBounds(this.T, (int) v.a(30.0f)));
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                TrackInfoDetailActivity.this.S.getMapScreenShot(new OnMapScreenShotListener() {
                    public void onMapScreenShot(Bitmap bitmap) {
                        Bitmap createBitmap = Bitmap.createBitmap(TrackInfoDetailActivity.this.P.getWidth(), TrackInfoDetailActivity.this.P.getHeight(), Config.ARGB_8888);
                        TrackInfoDetailActivity.this.P.draw(new Canvas(createBitmap));
                        Bitmap createBitmap2 = Bitmap.createBitmap(TrackInfoDetailActivity.this.Q.getWidth(), TrackInfoDetailActivity.this.Q.getHeight(), Config.ARGB_8888);
                        TrackInfoDetailActivity.this.Q.draw(new Canvas(createBitmap2));
                        LinearLayout linearLayout = (LinearLayout) View.inflate(TrackInfoDetailActivity.this, R.layout.track_share_bottom_image_layout, null);
                        linearLayout.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                        linearLayout.layout(0, 0, linearLayout.getMeasuredWidth(), linearLayout.getMeasuredHeight());
                        linearLayout.buildDrawingCache();
                        Bitmap drawingCache = linearLayout.getDrawingCache();
                        com.ifengyu.intercom.a.a((Activity) TrackInfoDetailActivity.this);
                        int a2 = (int) v.a(18.0f);
                        int a3 = (int) v.a(18.0f);
                        int a4 = (int) v.a(4.0f);
                        int a5 = (int) v.a(2.0f);
                        int width = TrackInfoDetailActivity.this.c.getWidth();
                        int height = TrackInfoDetailActivity.this.c.getHeight();
                        int width2 = TrackInfoDetailActivity.this.P.getWidth();
                        int height2 = TrackInfoDetailActivity.this.P.getHeight();
                        int width3 = TrackInfoDetailActivity.this.Q.getWidth();
                        int i = (int) (((float) (width - (a2 * 2))) / ((((float) width) * 1.0f) / ((float) height)));
                        int i2 = (int) (((float) (width2 - (a2 * 2))) / ((((float) width2) * 1.0f) / ((float) height2)));
                        int height3 = (int) (((float) (width3 - (a2 * 2))) / ((((float) width3) * 1.0f) / ((float) TrackInfoDetailActivity.this.Q.getHeight())));
                        Bitmap createBitmap3 = Bitmap.createBitmap(com.ifengyu.intercom.a.c, a3 + i + a4 + (a5 * 2) + i2 + a4 + (a5 * 2) + height3 + linearLayout.getHeight() + a3, Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap3);
                        canvas.drawColor(TrackInfoDetailActivity.this.getResources().getColor(R.color.space_bg));
                        Paint paint = new Paint();
                        BlurMaskFilter blurMaskFilter = new BlurMaskFilter((float) a5, Blur.INNER);
                        paint.setColor(TrackInfoDetailActivity.this.getResources().getColor(R.color.track_record_screen_shot_shadow));
                        paint.setMaskFilter(blurMaskFilter);
                        int width4 = createBitmap3.getWidth() - a2;
                        int i3 = i + a3;
                        int i4 = i3 + a5 + a4 + a5;
                        int i5 = i2 + i4;
                        int i6 = a4 + i5 + a5 + a5;
                        int i7 = height3 + i6;
                        canvas.drawBitmap(bitmap.extractAlpha(paint, null), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(a2 - a5, a3 - a5, width4 + a5, i3 + a5), paint);
                        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                        Rect rect2 = new Rect(a2, a3, width4, i3);
                        canvas.drawBitmap(bitmap, rect, rect2, null);
                        Canvas canvas2 = canvas;
                        canvas2.drawBitmap(createBitmap.extractAlpha(paint, null), new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), new Rect(a2 - a5, i4 - a5, width4 + a5, i5 + a5), paint);
                        canvas.drawBitmap(createBitmap, new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), new Rect(a2, i4, width4, i5), null);
                        canvas.drawBitmap(createBitmap2.extractAlpha(paint, null), new Rect(0, 0, createBitmap2.getWidth(), createBitmap2.getHeight()), new Rect(a2 - a5, i6 - a5, width4 + a5, a5 + i7), paint);
                        canvas.drawBitmap(createBitmap2, new Rect(0, 0, createBitmap2.getWidth(), createBitmap2.getHeight()), new Rect(a2, i6, width4, i7), null);
                        int width5 = (width4 - linearLayout.getWidth()) / 2;
                        canvas.drawBitmap(drawingCache, new Rect(0, 0, drawingCache.getWidth(), drawingCache.getHeight()), new Rect(width5 + 15, i7, width5 + linearLayout.getWidth() + 15, linearLayout.getHeight() + i7), null);
                        linearLayout.destroyDrawingCache();
                        try {
                            TrackInfoDetailActivity.this.R = new File(Environment.getExternalStorageDirectory() + "/" + "mitalki/imgcache" + "/trackScreenShot.jpg");
                            FileOutputStream fileOutputStream = new FileOutputStream(TrackInfoDetailActivity.this.R);
                            createBitmap3.compress(CompressFormat.JPEG, 100, fileOutputStream);
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            TrackInfoDetailActivity.this.k();
                            TrackInfoDetailActivity.this.runOnUiThread(new Runnable() {
                                public void run() {
                                    new aa(TrackInfoDetailActivity.this, TrackInfoDetailActivity.this.R.toString()).show();
                                }
                            });
                        } catch (IOException e) {
                            ThrowableExtension.printStackTrace(e);
                        }
                    }

                    public void onMapScreenShot(Bitmap bitmap, int i) {
                    }
                });
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "TrackInfoDetailActivity");
        this.c.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        this.c.onResume();
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.c.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.c.onDestroy();
    }

    public void onBackPressed() {
        q();
    }

    private void q() {
        if (this.H.equals("for_look_saved_track")) {
            finish();
        } else if (!this.H.equals("for_preview_track")) {
        } else {
            if (this.E.A().booleanValue()) {
                s.c("TrackInfoDetailActivity", "trackInfoData IsSaved");
                finish();
                return;
            }
            a(false, false, (int) R.string.dialog_saving, (int) R.drawable.load_spinner);
            this.S.stopAnimation();
            com.ifengyu.intercom.a.a((Activity) this);
            this.S.moveCamera(CameraUpdateFactory.newLatLngBounds(this.T, ((this.c.getHeight() - (com.ifengyu.intercom.a.c / 2)) / 2) + ((int) v.a(30.0f))));
            this.S.getMapScreenShot(new OnMapScreenShotListener() {
                public void onMapScreenShot(Bitmap bitmap) {
                }

                public void onMapScreenShot(Bitmap bitmap, int i) {
                    com.ifengyu.intercom.a.a((Activity) TrackInfoDetailActivity.this);
                    int i2 = com.ifengyu.intercom.a.c;
                    int i3 = i2 / 2;
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, (TrackInfoDetailActivity.this.c.getHeight() - i3) / 2, i2, i3);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        createBitmap.compress(CompressFormat.JPEG, 50, byteArrayOutputStream);
                        int i4 = 90;
                        while (byteArrayOutputStream.toByteArray().length / 1024 > 40) {
                            byteArrayOutputStream.reset();
                            createBitmap.compress(CompressFormat.JPEG, i4, byteArrayOutputStream);
                            i4 -= 10;
                        }
                        File file = new File(ad.a().getFilesDir().getAbsolutePath() + "/track_preview_pic_dir/");
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(file, TrackInfoDetailActivity.this.I + ".jpg");
                        file2.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        fileOutputStream.write(byteArrayOutputStream.toByteArray());
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        TrackInfoDetailActivity.this.E.j(file2.toString());
                        TrackInfoDetailActivity.this.E.b(Boolean.valueOf(true));
                        MiTalkiApp.a().b().c().insertOrReplace(TrackInfoDetailActivity.this.E);
                        TrackInfoDetailActivity.this.r();
                    } catch (FileNotFoundException e) {
                        ThrowableExtension.printStackTrace(e);
                    } catch (IOException e2) {
                        ThrowableExtension.printStackTrace(e2);
                    }
                    if (!createBitmap.isRecycled()) {
                        createBitmap.recycle();
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void r() {
        com.ifengyu.intercom.a.a.a(this.E, this.D, (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
                ThrowableExtension.printStackTrace(exc);
                TrackInfoDetailActivity.this.s();
            }

            public void a(String str, int i) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.getInt("errno") == 0) {
                        TrackInfoDetailActivity.this.e(R.string.dialog_save_and_upload_success);
                        TrackInfoDetailActivity.this.d(R.drawable.mine_icon_win);
                        TrackInfoDetailActivity.this.E.c(jSONObject.getJSONObject(Const.PARAM_DATA).getString("trackId"));
                        MiTalkiApp.a().b().c().insertOrReplace(TrackInfoDetailActivity.this.E);
                        MiTalkiApp.n().postDelayed(new Runnable() {
                            public void run() {
                                TrackInfoDetailActivity.this.k();
                                TrackInfoDetailActivity.this.finish();
                            }
                        }, 500);
                        return;
                    }
                    TrackInfoDetailActivity.this.s();
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                    TrackInfoDetailActivity.this.s();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void s() {
        e(R.string.dialog_save_success);
        d(R.drawable.mine_icon_win);
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                TrackInfoDetailActivity.this.k();
                TrackInfoDetailActivity.this.finish();
            }
        }, 500);
    }

    private void t() {
        for (int i = 0; i < this.M.size() - 1; i++) {
            if (((ArrayList) this.M.get(i)).size() > 0 && ((ArrayList) this.M.get(i + 1)).size() > 0) {
                LatLng latLng = (LatLng) ((ArrayList) this.M.get(i)).get(((ArrayList) this.M.get(i)).size() - 1);
                LatLng latLng2 = (LatLng) ((ArrayList) this.M.get(i + 1)).get(0);
                this.S.addPolyline(new PolylineOptions().add(latLng, latLng2).color(getResources().getColor(R.color.track_record_pause_color)).width(v.a(4.0f)));
            }
        }
        for (int i2 = 0; i2 < this.M.size(); i2++) {
            this.S.addPolyline(new PolylineOptions().width(v.a(4.0f)).color(getResources().getColor(R.color.track_record_color)).addAll((Iterable) this.M.get(i2)));
        }
        Marker addMarker = this.S.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position((LatLng) this.F.get(0)).draggable(false).anchor(0.5f, 0.5f));
        addMarker.setClickable(false);
        addMarker.setInfoWindowEnable(false);
        Marker addMarker2 = this.S.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_stop)).position((LatLng) this.F.get(this.F.size() - 1)).draggable(false).anchor(0.5f, 1.0f));
        addMarker2.setClickable(false);
        addMarker2.setInfoWindowEnable(false);
    }

    private com.github.mikephil.charting.data.j u() {
        LineDataSet lineDataSet = new LineDataSet(this.L, ad.a((int) R.string.altitude_h));
        lineDataSet.g(110);
        lineDataSet.f(SupportMenu.CATEGORY_MASK);
        lineDataSet.c(3.0f);
        lineDataSet.b(getResources().getColor(R.color.select_color));
        lineDataSet.b(false);
        lineDataSet.a(false);
        lineDataSet.c(true);
        lineDataSet.a(getResources().getDrawable(R.drawable.track_altitude_bg));
        lineDataSet.a(Mode.CUBIC_BEZIER);
        lineDataSet.b(0.1f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineDataSet);
        return new com.github.mikephil.charting.data.j(arrayList);
    }

    private void v() {
        this.K.setDrawBorders(false);
        this.K.setTouchEnabled(true);
        this.K.setScaleEnabled(false);
        this.K.setDescription(null);
        this.K.getLegend().b(false);
        XAxis xAxis = this.K.getXAxis();
        xAxis.a(XAxisPosition.BOTTOM);
        xAxis.a((int) R.color.line_2);
        xAxis.a(0.5f);
        xAxis.d(R.color.black60);
        xAxis.a(false);
        xAxis.c(Float.valueOf(this.N).floatValue());
        xAxis.b(0.0f);
        xAxis.a((d) new a());
        xAxis.a(2, true);
        xAxis.b(true);
        YAxis axisLeft = this.K.getAxisLeft();
        axisLeft.a((int) R.color.line_2);
        axisLeft.a(0.5f);
        axisLeft.a(false);
        axisLeft.c((float) (this.E.r().intValue() + 5));
        this.O = this.E.s().intValue() - 10;
        axisLeft.b((float) this.O);
        axisLeft.g(20.0f);
        axisLeft.f(10.0f);
        axisLeft.a(5, false);
        axisLeft.a((d) new b());
        axisLeft.d(R.color.black60);
        axisLeft.b(true);
        this.K.getAxisRight().b(false);
    }
}
