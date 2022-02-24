package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.maps.AMap;
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
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.data.j;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.j0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.y;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.ifengyu.library.base.BaseApp;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.greenrobot.greendao.query.WhereCondition;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TrackInfoDetailActivity extends BaseActivity implements View.OnClickListener {
    private TextView A;
    private TextView B;
    private TextView C;
    private double D;
    private double E;
    private double F;
    private double G;
    private List<com.ifengyu.intercom.greendao.bean.c> H;
    private com.ifengyu.intercom.greendao.bean.b I;
    private ArrayList<LatLng> J;
    private long K;
    private String L;
    private String M;
    private Typeface N;
    private LineChart O;
    private ArrayList<Entry> P;
    private ArrayList<ArrayList<LatLng>> Q;
    private String R;
    private int S;
    private LinearLayout T;
    private LinearLayout U;
    private File V;
    private AMap W;
    private LatLngBounds X;
    private final String q = "TrackInfoDetailActivity";
    private ImageView r;
    private MapView s;
    private CirclrImageView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.activity.TrackInfoDetailActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0159a implements AMap.OnMapScreenShotListener {

            /* renamed from: com.ifengyu.intercom.ui.activity.TrackInfoDetailActivity$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0160a implements Runnable {
                RunnableC0160a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    TrackInfoDetailActivity trackInfoDetailActivity = TrackInfoDetailActivity.this;
                    new y(trackInfoDetailActivity, trackInfoDetailActivity.V.toString()).show();
                }
            }

            C0159a() {
            }

            @Override // com.amap.api.maps.AMap.OnMapScreenShotListener
            public void onMapScreenShot(Bitmap bitmap) {
                Bitmap createBitmap = Bitmap.createBitmap(TrackInfoDetailActivity.this.T.getWidth(), TrackInfoDetailActivity.this.T.getHeight(), Bitmap.Config.ARGB_8888);
                TrackInfoDetailActivity.this.T.draw(new Canvas(createBitmap));
                Bitmap createBitmap2 = Bitmap.createBitmap(TrackInfoDetailActivity.this.U.getWidth(), TrackInfoDetailActivity.this.U.getHeight(), Bitmap.Config.ARGB_8888);
                TrackInfoDetailActivity.this.U.draw(new Canvas(createBitmap2));
                LinearLayout linearLayout = (LinearLayout) View.inflate(TrackInfoDetailActivity.this, R.layout.track_share_bottom_image_layout, null);
                linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                linearLayout.layout(0, 0, linearLayout.getMeasuredWidth(), linearLayout.getMeasuredHeight());
                linearLayout.buildDrawingCache();
                Bitmap drawingCache = linearLayout.getDrawingCache();
                com.ifengyu.intercom.d.a((Activity) TrackInfoDetailActivity.this);
                int a2 = (int) c0.a(18.0f);
                int a3 = (int) c0.a(18.0f);
                int a4 = (int) c0.a(4.0f);
                int a5 = (int) c0.a(2.0f);
                int width = TrackInfoDetailActivity.this.s.getWidth();
                int height = TrackInfoDetailActivity.this.s.getHeight();
                int width2 = TrackInfoDetailActivity.this.T.getWidth();
                int height2 = TrackInfoDetailActivity.this.T.getHeight();
                int width3 = TrackInfoDetailActivity.this.U.getWidth();
                float f = (width * 1.0f) / height;
                float f2 = (width2 * 1.0f) / height2;
                int i = a2 * 2;
                int i2 = (int) ((width - i) / f);
                int i3 = (int) ((width2 - i) / f2);
                int height3 = (int) ((width3 - i) / ((width3 * 1.0f) / TrackInfoDetailActivity.this.U.getHeight()));
                int i4 = i2 + a3;
                int i5 = a5 * 2;
                Bitmap createBitmap3 = Bitmap.createBitmap(com.ifengyu.intercom.d.f5223b, i4 + a4 + i5 + i3 + a4 + i5 + height3 + linearLayout.getHeight() + a3, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap3);
                canvas.drawColor(TrackInfoDetailActivity.this.getResources().getColor(R.color.space_bg));
                Paint paint = new Paint();
                BlurMaskFilter blurMaskFilter = new BlurMaskFilter(a5, BlurMaskFilter.Blur.INNER);
                paint.setColor(TrackInfoDetailActivity.this.getResources().getColor(R.color.track_record_screen_shot_shadow));
                paint.setMaskFilter(blurMaskFilter);
                int width4 = createBitmap3.getWidth() - a2;
                int i6 = i4 + a5;
                int i7 = i6 + a4 + a5;
                int i8 = i3 + i7;
                int i9 = i8 + a5;
                int i10 = a4 + i9 + a5;
                int i11 = height3 + i10;
                int i12 = a2 - a5;
                int i13 = width4 + a5;
                canvas.drawBitmap(bitmap.extractAlpha(paint, null), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(i12, a3 - a5, i13, i6), paint);
                canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(a2, a3, width4, i4), (Paint) null);
                canvas.drawBitmap(createBitmap.extractAlpha(paint, null), new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), new Rect(i12, i7 - a5, i13, i9), paint);
                canvas.drawBitmap(createBitmap, new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), new Rect(a2, i7, width4, i8), (Paint) null);
                canvas.drawBitmap(createBitmap2.extractAlpha(paint, null), new Rect(0, 0, createBitmap2.getWidth(), createBitmap2.getHeight()), new Rect(i12, i10 - a5, i13, i11 + a5), paint);
                canvas.drawBitmap(createBitmap2, new Rect(0, 0, createBitmap2.getWidth(), createBitmap2.getHeight()), new Rect(a2, i10, width4, i11), (Paint) null);
                int width5 = (width4 - linearLayout.getWidth()) / 2;
                canvas.drawBitmap(drawingCache, new Rect(0, 0, drawingCache.getWidth(), drawingCache.getHeight()), new Rect(width5 + 15, i11, width5 + linearLayout.getWidth() + 15, linearLayout.getHeight() + i11), (Paint) null);
                linearLayout.destroyDrawingCache();
                try {
                    TrackInfoDetailActivity trackInfoDetailActivity = TrackInfoDetailActivity.this;
                    trackInfoDetailActivity.V = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/imgcache/trackScreenShot.jpg");
                    FileOutputStream fileOutputStream = new FileOutputStream(TrackInfoDetailActivity.this.V);
                    createBitmap3.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    TrackInfoDetailActivity.this.j();
                    TrackInfoDetailActivity.this.runOnUiThread(new RunnableC0160a());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            @Override // com.amap.api.maps.AMap.OnMapScreenShotListener
            public void onMapScreenShot(Bitmap bitmap, int i) {
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TrackInfoDetailActivity.this.W.getMapScreenShot(new C0159a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements AMap.OnMapScreenShotListener {
        b() {
        }

        @Override // com.amap.api.maps.AMap.OnMapScreenShotListener
        public void onMapScreenShot(Bitmap bitmap) {
        }

        @Override // com.amap.api.maps.AMap.OnMapScreenShotListener
        public void onMapScreenShot(Bitmap bitmap, int i) {
            com.ifengyu.intercom.d.a((Activity) TrackInfoDetailActivity.this);
            int i2 = com.ifengyu.intercom.d.f5223b;
            int i3 = i2 / 2;
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, (TrackInfoDetailActivity.this.s.getHeight() - i3) / 2, i2, i3);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
                int i4 = 90;
                while (byteArrayOutputStream.toByteArray().length / 1024 > 40) {
                    byteArrayOutputStream.reset();
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, i4, byteArrayOutputStream);
                    i4 -= 10;
                }
                File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/trackPreviewDir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, TrackInfoDetailActivity.this.M + ".jpg");
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
                TrackInfoDetailActivity.this.I.h(file2.toString());
                TrackInfoDetailActivity.this.I.b((Boolean) true);
                MiTalkiApp.b().g().d().insertOrReplace(TrackInfoDetailActivity.this.I);
                TrackInfoDetailActivity.this.D();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (!createBitmap.isRecycled()) {
                createBitmap.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends l {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                TrackInfoDetailActivity.this.j();
                TrackInfoDetailActivity.this.finish();
            }
        }

        c() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
            TrackInfoDetailActivity.this.x();
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("errno") == 0) {
                    TrackInfoDetailActivity.this.c(R.string.dialog_save_and_upload_success);
                    TrackInfoDetailActivity.this.b(R.drawable.mine_icon_win);
                    TrackInfoDetailActivity.this.I.e(jSONObject.getJSONObject("data").getString("trackId"));
                    MiTalkiApp.b().g().d().insertOrReplace(TrackInfoDetailActivity.this.I);
                    BaseApp.a().postDelayed(new a(), 500L);
                } else {
                    TrackInfoDetailActivity.this.x();
                }
            } catch (JSONException e) {
                e.printStackTrace();
                TrackInfoDetailActivity.this.x();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TrackInfoDetailActivity.this.j();
            TrackInfoDetailActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e implements b.a.a.a.c.d {
        public e() {
        }

        @Override // b.a.a.a.c.d
        public String a(float f, com.github.mikephil.charting.components.a aVar) {
            if (f == 0.0f) {
                return "0";
            }
            return Float.valueOf(TrackInfoDetailActivity.this.R) + "km";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f implements b.a.a.a.c.d {
        public f() {
        }

        @Override // b.a.a.a.c.d
        public String a(float f, com.github.mikephil.charting.components.a aVar) {
            if (f == TrackInfoDetailActivity.this.S) {
                return "";
            }
            return ((int) f) + "m";
        }
    }

    private j A() {
        LineDataSet lineDataSet = new LineDataSet(this.P, k0.c(R.string.altitude_h));
        lineDataSet.f(110);
        lineDataSet.g(-65536);
        lineDataSet.b(3.0f);
        lineDataSet.e(getResources().getColor(R.color.select_color));
        lineDataSet.c(false);
        lineDataSet.a(false);
        lineDataSet.b(true);
        lineDataSet.a(getResources().getDrawable(R.drawable.track_altitude_bg));
        lineDataSet.a(LineDataSet.Mode.CUBIC_BEZIER);
        lineDataSet.c(0.1f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineDataSet);
        return new j(arrayList);
    }

    private void B() {
        com.ifengyu.intercom.greendao.bean.b load = MiTalkiApp.b().g().d().load(Long.valueOf(this.K));
        this.I = load;
        this.M = load.v();
        int i = 1;
        this.H = MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(this.M), new WhereCondition[0]).orderAsc(TrackPointDao.Properties.CurrentTime).list();
        this.P = new ArrayList<>();
        this.J = new ArrayList<>();
        ArrayList<ArrayList<LatLng>> arrayList = new ArrayList<>();
        this.Q = arrayList;
        arrayList.add(new ArrayList<>());
        float intValue = this.I.q().intValue() / 20.0f;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i2 < this.H.size()) {
            com.ifengyu.intercom.greendao.bean.c cVar = this.H.get(i2);
            if (this.L.equals("for_preview_track")) {
                Integer a2 = cVar.a();
                if (i2 == 0) {
                    i6 = a2.intValue();
                    i3 = a2.intValue();
                    i5 = a2.intValue();
                    i4 = a2.intValue();
                } else {
                    i6 += a2.intValue();
                    if (i3 < a2.intValue()) {
                        i3 = a2.intValue();
                    }
                    if (i5 > a2.intValue()) {
                        i5 = a2.intValue();
                    }
                }
            }
            Integer b2 = cVar.b();
            if (i2 == 0 || i2 == this.H.size() - i) {
                this.P.add(new Entry(b2.intValue() / 1000.0f, cVar.a().intValue()));
                i7 = b2.intValue();
            } else if (b2.intValue() > i7 + intValue) {
                this.P.add(new Entry(b2.intValue() / 1000.0f, cVar.a().intValue()));
                i7 = b2.intValue();
            }
            LatLng latLng = new LatLng(cVar.f().intValue() / 1000000.0d, cVar.g().intValue() / 1000000.0d);
            this.J.add(latLng);
            ArrayList<ArrayList<LatLng>> arrayList2 = this.Q;
            arrayList2.get(arrayList2.size() - 1).add(latLng);
            if (cVar.e()) {
                this.Q.add(new ArrayList<>());
            }
            i2++;
            i = 1;
        }
        int abs = Math.abs(i3 - i4);
        int abs2 = Math.abs(i4 - i5);
        if (this.L.equals("for_preview_track")) {
            this.I.c(Integer.valueOf(i6 != 0 ? i6 / this.H.size() : 0));
            this.I.f(Integer.valueOf(i3));
            this.I.g(Integer.valueOf(i5));
            this.I.a(Integer.valueOf(abs));
            this.I.b(Integer.valueOf(abs2));
            MiTalkiApp.b().g().d().insertOrReplace(this.I);
        }
        SpannableString spannableString = new SpannableString(" km");
        spannableString.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString.length(), 17);
        SpannableString spannableString2 = new SpannableString("km/h");
        spannableString2.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString2.length(), 17);
        SpannableString spannableString3 = new SpannableString("m");
        spannableString3.setSpan(new AbsoluteSizeSpan(13, true), 0, spannableString3.length(), 17);
        ImageLoader.getInstance().displayImage(d0.R().getString("avatar", ""), this.t, new DisplayImageOptions.Builder().showImageForEmptyUri(R.drawable.my_head_default).showImageOnFail(R.drawable.my_head_default).showImageOnLoading(R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.u.setText(d0.P());
        this.v.setText(j0.g(this.I.f().intValue()));
        String format = String.format(Locale.getDefault(), "%.1f", Float.valueOf(this.I.q().intValue() / 1000.0f));
        this.R = format;
        this.w.setText(format);
        this.w.append(spannableString);
        SpannableString spannableString4 = new SpannableString(j0.a(this.I.r().intValue()));
        spannableString4.setSpan(new AbsoluteSizeSpan(13, true), 5, spannableString4.length(), 17);
        this.x.setText(spannableString4);
        this.y.setText(String.valueOf(this.I.d()));
        this.y.append(spannableString2);
        this.z.setText(String.valueOf(this.I.n()));
        this.z.append(spannableString3);
        this.A.setText(String.valueOf(this.I.c()));
        this.A.append(spannableString3);
        this.B.setText(String.valueOf(this.I.a()));
        this.B.append(spannableString3);
        this.C.setText(String.valueOf(this.I.b()));
        this.C.append(spannableString3);
        y();
        this.O.setData(A());
        E();
        w();
        j();
    }

    private void C() {
        this.T = (LinearLayout) findViewById(R.id.track_share_group_center_layout);
        this.U = (LinearLayout) findViewById(R.id.track_share_group_bottom_layout);
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        this.r = imageView;
        imageView.setVisibility(0);
        this.r.setImageResource(R.drawable.trail_map_share);
        this.r.setOnClickListener(this);
        MapsInitializer.sdcardDir = c0.a(this);
        MapView mapView = (MapView) findViewById(R.id.track_display_map);
        this.s = mapView;
        AMap map = mapView.getMap();
        this.W = map;
        map.setMapType(1);
        String str = k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/style/map_style.data";
        if (new File(str).exists()) {
            this.W.setCustomMapStylePath(str);
            this.W.setMapCustomEnable(true);
        }
        this.W.setMyLocationEnabled(false);
        UiSettings uiSettings = this.W.getUiSettings();
        uiSettings.setRotateGesturesEnabled(false);
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings.setLogoLeftMargin((int) c0.a(8.0f));
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setZoomControlsEnabled(false);
        findViewById(R.id.map_icon_zoom_big_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_zoom_small_iv).setOnClickListener(this);
        findViewById(R.id.map_icon_my_locate_iv).setOnClickListener(this);
        this.t = (CirclrImageView) findViewById(R.id.track_info_detail_user_icon);
        this.u = (TextView) findViewById(R.id.track_info_detail_user_name);
        this.v = (TextView) findViewById(R.id.track_info_detail_total_start_time);
        TextView textView = (TextView) findViewById(R.id.track_info_detail_total_distance);
        this.w = textView;
        textView.setTypeface(this.N);
        TextView textView2 = (TextView) findViewById(R.id.track_info_detail_total_time);
        this.x = textView2;
        textView2.setTypeface(this.N);
        TextView textView3 = (TextView) findViewById(R.id.track_info_detail_average_speed);
        this.y = textView3;
        textView3.setTypeface(this.N);
        TextView textView4 = (TextView) findViewById(R.id.track_info_detail_max_altitude);
        this.z = textView4;
        textView4.setTypeface(this.N);
        TextView textView5 = (TextView) findViewById(R.id.track_info_detail_average_altitude);
        this.A = textView5;
        textView5.setTypeface(this.N);
        TextView textView6 = (TextView) findViewById(R.id.track_info_detail_accrued_climb);
        this.B = textView6;
        textView6.setTypeface(this.N);
        TextView textView7 = (TextView) findViewById(R.id.track_info_detail_accrued_descent);
        this.C = textView7;
        textView7.setTypeface(this.N);
        this.O = (LineChart) findViewById(R.id.track_altitude_chart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        com.ifengyu.intercom.g.a.a(this.I, this.H, new c());
    }

    private void E() {
        for (int i = 0; i < this.J.size(); i++) {
            LatLng latLng = this.J.get(i);
            double d2 = latLng.latitude;
            double d3 = latLng.longitude;
            if (i == 0) {
                this.D = d2;
                this.E = d2;
                this.F = d3;
                this.G = d3;
            } else {
                if (d2 > this.D) {
                    this.D = d2;
                }
                if (d2 < this.E) {
                    this.E = d2;
                }
                if (d3 > this.F) {
                    this.F = d3;
                }
                if (d3 < this.G) {
                    this.G = d3;
                }
            }
        }
        LatLngBounds latLngBounds = new LatLngBounds(new LatLng(this.E, this.G), new LatLng(this.D, this.F));
        this.X = latLngBounds;
        this.W.moveCamera(CameraUpdateFactory.newLatLngBounds(latLngBounds, (int) c0.a(30.0f)));
    }

    private void F() {
        a(false, false, R.string.dialog_please_wait, R.drawable.load_spinner);
        this.W.stopAnimation();
        this.W.moveCamera(CameraUpdateFactory.newLatLngBounds(this.X, (int) c0.a(30.0f)));
        BaseApp.a().postDelayed(new a(), 500L);
    }

    private void w() {
        for (int i = 0; i < this.Q.size() - 1; i++) {
            if (this.Q.get(i).size() > 0) {
                int i2 = i + 1;
                if (this.Q.get(i2).size() > 0) {
                    this.W.addPolyline(new PolylineOptions().add(this.Q.get(i).get(this.Q.get(i).size() - 1), this.Q.get(i2).get(0)).color(getResources().getColor(R.color.track_record_pause_color)).width(c0.a(4.0f)));
                }
            }
        }
        for (int i3 = 0; i3 < this.Q.size(); i3++) {
            this.W.addPolyline(new PolylineOptions().width(c0.a(4.0f)).color(getResources().getColor(R.color.track_record_color)).addAll(this.Q.get(i3)));
        }
        Marker addMarker = this.W.addMarker(new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_start_all)).position(this.J.get(0)).draggable(false).anchor(0.5f, 0.5f));
        addMarker.setClickable(false);
        addMarker.setInfoWindowEnable(false);
        MarkerOptions icon = new MarkerOptions().icon(BitmapDescriptorFactory.fromResource(R.drawable.location_stop));
        ArrayList<LatLng> arrayList = this.J;
        Marker addMarker2 = this.W.addMarker(icon.position(arrayList.get(arrayList.size() - 1)).draggable(false).anchor(0.5f, 1.0f));
        addMarker2.setClickable(false);
        addMarker2.setInfoWindowEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        c(R.string.dialog_save_success);
        b(R.drawable.mine_icon_win);
        BaseApp.a().postDelayed(new d(), 500L);
    }

    private void y() {
        this.O.setDrawBorders(false);
        this.O.setTouchEnabled(true);
        this.O.setScaleEnabled(false);
        this.O.setDescription(null);
        this.O.getLegend().a(false);
        XAxis xAxis = this.O.getXAxis();
        xAxis.a(XAxis.XAxisPosition.BOTTOM);
        xAxis.c(R.color.line_2);
        xAxis.a(0.5f);
        xAxis.a(R.color.black60);
        xAxis.b(false);
        xAxis.b(Float.valueOf(this.R).floatValue());
        xAxis.c(0.0f);
        xAxis.a(new e());
        xAxis.a(2, true);
        xAxis.a(true);
        YAxis axisLeft = this.O.getAxisLeft();
        axisLeft.c(R.color.line_2);
        axisLeft.a(0.5f);
        axisLeft.b(false);
        axisLeft.b(this.I.n().intValue() + 5);
        int intValue = this.I.o().intValue() - 10;
        this.S = intValue;
        axisLeft.c(intValue);
        axisLeft.f(20.0f);
        axisLeft.g(10.0f);
        axisLeft.a(5, false);
        axisLeft.a(new f());
        axisLeft.a(R.color.black60);
        axisLeft.a(true);
        this.O.getAxisRight().a(false);
    }

    private void z() {
        if (this.L.equals("for_look_saved_track")) {
            finish();
        } else if (!this.L.equals("for_preview_track")) {
        } else {
            if (this.I.m().booleanValue()) {
                z.c("TrackInfoDetailActivity", "trackInfoData IsSaved");
                finish();
                return;
            }
            a(false, false, R.string.dialog_saving, R.drawable.load_spinner);
            this.W.stopAnimation();
            com.ifengyu.intercom.d.a((Activity) this);
            this.W.moveCamera(CameraUpdateFactory.newLatLngBounds(this.X, ((this.s.getHeight() - (com.ifengyu.intercom.d.f5223b / 2)) / 2) + ((int) c0.a(30.0f))));
            this.W.getMapScreenShot(new b());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.s.getParent().requestDisallowInterceptTouchEvent(true);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        z();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.map_icon_my_locate_iv /* 2131296858 */:
                this.W.stopAnimation();
                this.W.moveCamera(CameraUpdateFactory.newLatLngBounds(this.X, (int) c0.a(30.0f)));
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296859 */:
                this.W.animateCamera(CameraUpdateFactory.zoomIn());
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296861 */:
                this.W.animateCamera(CameraUpdateFactory.zoomOut());
                return;
            case R.id.title_bar_left /* 2131297305 */:
                z();
                return;
            case R.id.title_bar_right /* 2131297306 */:
                F();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_track_info_detail);
        this.N = p.f5324b;
        a(false, false, R.string.dialog_obtain_data, R.drawable.load_spinner);
        C();
        this.s.onCreate(bundle);
        this.K = getIntent().getLongExtra("trackInfoPrimaryKeyId", -1L);
        this.L = getIntent().getStringExtra("track_info_for_what");
        z.c("TrackInfoDetailActivity", "intent trackPrimaryKetID:" + this.K + "---fromWhere:" + this.L);
        B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.s.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.s.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.s.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.s.onSaveInstanceState(bundle);
    }
}
