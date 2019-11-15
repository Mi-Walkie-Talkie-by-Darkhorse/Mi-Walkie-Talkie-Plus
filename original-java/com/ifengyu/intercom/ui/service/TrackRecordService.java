package com.ifengyu.intercom.ui.service;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationClientOption.AMapLocationProtocol;
import com.amap.api.location.AMapLocationListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.greendao.bean.c;
import com.ifengyu.intercom.greendao.dao.TrackPointDao.Properties;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.MainActivity;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.mipush.sdk.Constants;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import org.greenrobot.greendao.c.i;

public class TrackRecordService extends Service implements AMapLocationListener {
    float[] a = new float[1];
    private AMapLocationClient b;
    /* access modifiers changed from: private */
    public a c;
    private double d = 0.0d;
    private double e = 0.0d;
    /* access modifiers changed from: private */
    public String f;
    /* access modifiers changed from: private */
    public int g;
    /* access modifiers changed from: private */
    public int h;
    private Timer i;
    /* access modifiers changed from: private */
    public int j = -1;
    /* access modifiers changed from: private */
    public boolean k;
    private long l;
    private ArrayList<ArrayList<LocationBean>> m;
    private int n;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.greendao.bean.b o;
    private long p;
    private boolean q;
    /* access modifiers changed from: private */
    public NotificationManager r;
    /* access modifiers changed from: private */
    public int s = 10001;
    /* access modifiers changed from: private */
    public RemoteViews t;
    /* access modifiers changed from: private */
    public Notification u;
    /* access modifiers changed from: private */
    public String v;
    /* access modifiers changed from: private */
    public float w;

    public interface a {
        void a(int i, int i2, int i3, float f);

        void a(long j, String str, boolean z, boolean z2);

        void a(long j, boolean z);

        void a(ArrayList<ArrayList<LocationBean>> arrayList, boolean z);
    }

    public class b extends Binder {
        public b() {
        }

        public TrackRecordService a() {
            return TrackRecordService.this;
        }
    }

    public void onCreate() {
        super.onCreate();
        s.c("TrackRecordService", "onCreate");
        this.m = new ArrayList<>();
        this.m.add(new ArrayList());
        this.n = 1;
        this.b = new AMapLocationClient(this);
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.setLocationMode(AMapLocationMode.Hight_Accuracy);
        aMapLocationClientOption.setInterval(2000);
        aMapLocationClientOption.setNeedAddress(true);
        aMapLocationClientOption.setGpsFirst(false);
        aMapLocationClientOption.setOnceLocation(false);
        aMapLocationClientOption.setOnceLocationLatest(false);
        aMapLocationClientOption.setHttpTimeOut(FileTracerConfig.DEF_FLUSH_INTERVAL);
        AMapLocationClientOption.setLocationProtocol(AMapLocationProtocol.HTTP);
        aMapLocationClientOption.setSensorEnable(false);
        aMapLocationClientOption.setWifiScan(true);
        aMapLocationClientOption.setLocationCacheEnable(true);
        this.b.setLocationOption(aMapLocationClientOption);
        this.b.setLocationListener(this);
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        s.c("TrackRecordService", "onStartCommand");
        this.r = (NotificationManager) getSystemService("notification");
        this.t = new RemoteViews(getPackageName(), R.layout.track_record_notification_layout);
        this.t.setTextViewText(R.id.track_recording_timing_tv, "00:00:00");
        this.t.setTextViewText(R.id.track_recording_distance_tv, "0m");
        this.t.setTextViewText(R.id.track_recording_speed_tv, "0km/h");
        this.u = new Builder(getApplicationContext()).setContent(this.t).setAutoCancel(false).setShowWhen(false).setOngoing(true).setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.track_record_is_going)).setSmallIcon(R.mipmap.icon).setLargeIcon(BitmapFactory.decodeResource(MiTalkiApp.a().getResources(), R.mipmap.icon)).build();
        Intent intent2 = new Intent(MiTalkiApp.a(), MainActivity.class);
        this.u.contentIntent = PendingIntent.getActivity(MiTalkiApp.a(), 0, intent2, 0);
        this.u.flags = 32;
        startForeground(this.s, this.u);
        if (intent != null) {
            if (intent.getBooleanExtra("is_load_last_not_saved_track", false)) {
                this.q = true;
                this.p = intent.getLongExtra("last_not_saved_track_primary_key_id", -1);
                this.o = (com.ifengyu.intercom.greendao.bean.b) MiTalkiApp.a().b().c().load(Long.valueOf(this.p));
                this.f = this.o.c();
                this.v = this.o.k();
                this.h = this.o.n().intValue();
                this.g = this.o.o().intValue();
                this.k = true;
                List c2 = MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(this.f), new i[0]).a(Properties.g).c();
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    if (i5 >= c2.size()) {
                        break;
                    }
                    c cVar = (c) c2.get(i5);
                    ((ArrayList) this.m.get(this.m.size() - 1)).add(new LocationBean(((double) cVar.c().intValue()) / 1000000.0d, ((double) cVar.d().intValue()) / 1000000.0d));
                    if (cVar.h() && i5 != c2.size() - 1) {
                        this.m.add(new ArrayList());
                    }
                    i4 = i5 + 1;
                }
            } else {
                this.q = false;
                String K = w.K();
                int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                this.f = K + "_" + currentTimeMillis;
                this.o = new com.ifengyu.intercom.greendao.bean.b();
                this.o.a(K);
                this.o.b(this.f);
                this.o.b(Integer.valueOf(currentTimeMillis));
                this.o.a(Boolean.valueOf(false));
                this.o.b(Boolean.valueOf(false));
                this.p = MiTalkiApp.a().b().c().insert(this.o);
                this.o.a(Long.valueOf(this.p));
                w.a(this.p);
                this.b.startLocation();
            }
        }
        if (this.i == null) {
            this.i = new Timer();
            this.i.schedule(new TimerTask() {
                public void run() {
                    float floatValue;
                    if (!TrackRecordService.this.k) {
                        TrackRecordService.this.h = TrackRecordService.this.h + 1;
                        String format = new DecimalFormat("#.0").format((double) TrackRecordService.this.w);
                        TrackRecordService trackRecordService = TrackRecordService.this;
                        if (format.contains(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
                            floatValue = 0.0f;
                        } else {
                            floatValue = Float.valueOf(format).floatValue();
                        }
                        trackRecordService.w = floatValue;
                        if (TrackRecordService.this.c != null) {
                            TrackRecordService.this.c.a(TrackRecordService.this.j, TrackRecordService.this.h, TrackRecordService.this.g, TrackRecordService.this.w);
                        }
                        TrackRecordService.this.t.setTextViewText(R.id.track_recording_timing_tv, String.format(Locale.CHINA, "%02d:%02d:%02d", new Object[]{Integer.valueOf(TrackRecordService.this.h / 3600), Integer.valueOf((TrackRecordService.this.h % 3600) / 60), Integer.valueOf(TrackRecordService.this.h % 60)}));
                        if (TrackRecordService.this.g < 1000) {
                            TrackRecordService.this.t.setTextViewText(R.id.track_recording_distance_tv, TrackRecordService.this.g + "m");
                        } else {
                            TrackRecordService.this.t.setTextViewText(R.id.track_recording_distance_tv, String.format("%.1f", new Object[]{Float.valueOf(((float) TrackRecordService.this.g) / 1000.0f)}) + "km");
                        }
                        TrackRecordService.this.t.setTextViewText(R.id.track_recording_speed_tv, String.valueOf(TrackRecordService.this.w) + "km/h");
                        TrackRecordService.this.r.notify(TrackRecordService.this.s, TrackRecordService.this.u);
                        if (TrackRecordService.this.o != null) {
                            TrackRecordService.this.o.d(Integer.valueOf(TrackRecordService.this.h));
                            TrackRecordService.this.o.e(Integer.valueOf(TrackRecordService.this.g));
                            TrackRecordService.this.o.g(TrackRecordService.this.v);
                            MiTalkiApp.a().b().c().insertOrReplace(TrackRecordService.this.o);
                        }
                    }
                }
            }, 1000, 1000);
        }
        return super.onStartCommand(intent, i2, i3);
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        s.c("TrackRecordService", "onBind");
        return new b();
    }

    public boolean onUnbind(Intent intent) {
        s.c("TrackRecordService", "onUnbind");
        return super.onUnbind(intent);
    }

    public void onDestroy() {
        s.c("TrackRecordService", "onDestroy");
        stopForeground(true);
        super.onDestroy();
    }

    public void onLocationChanged(AMapLocation aMapLocation) {
        s.c("TrackRecordService", "onLocationChanged");
        this.j = -1;
        this.v = null;
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
            if (aMapLocation.getStreet() != null && aMapLocation.getStreet().length() > 0) {
                this.v = aMapLocation.getStreet();
            }
            this.w = 0.0f;
            int locationType = aMapLocation.getLocationType();
            float accuracy = aMapLocation.getAccuracy();
            if (locationType == 1 && accuracy <= 50.0f) {
                this.j = (int) accuracy;
                if (aMapLocation.hasSpeed()) {
                    this.w = aMapLocation.getSpeed() * 3.6f;
                }
                double latitude = aMapLocation.getLatitude();
                double longitude = aMapLocation.getLongitude();
                float[] fArr = new float[1];
                Location.distanceBetween(this.d, this.e, latitude, longitude, fArr);
                if (fArr[0] > 5.0f) {
                    ((ArrayList) this.m.get(this.m.size() - 1)).add(new LocationBean(latitude, longitude));
                    if (this.o.l() == null && aMapLocation.getCity() != null && aMapLocation.getCity().length() > 0) {
                        this.o.h(aMapLocation.getCity());
                    }
                    if (this.o.m() == null && aMapLocation.getDistrict() != null && aMapLocation.getDistrict().length() > 0) {
                        this.o.i(aMapLocation.getDistrict());
                    }
                    if (this.m.size() == 1 && ((ArrayList) this.m.get(0)).size() == 1) {
                        this.o.f(this.v);
                        MiTalkiApp.a().b().c().insertOrReplace(this.o);
                    } else if (!(this.d == 0.0d || this.e == 0.0d)) {
                        Location.distanceBetween(this.d, this.e, latitude, longitude, fArr);
                        this.g = (int) (fArr[0] + ((float) this.g));
                    }
                    this.l = MiTalkiApp.a().b().d().insert(new c(null, this.f, Integer.valueOf((int) (1000000.0d * latitude)), Integer.valueOf((int) (1000000.0d * longitude)), Integer.valueOf((int) aMapLocation.getAltitude()), Integer.valueOf(this.g), Integer.valueOf((int) (System.currentTimeMillis() / 1000)), false));
                    if (this.c != null) {
                        this.c.a(this.m, this.n != this.m.size());
                        this.n = this.m.size();
                    }
                    this.d = latitude;
                    this.e = longitude;
                }
            }
        }
    }

    public void a() {
        this.k = true;
        this.b.stopLocation();
        this.d = 0.0d;
        this.e = 0.0d;
        if (this.l > 0) {
            c cVar = (c) MiTalkiApp.a().b().d().load(Long.valueOf(this.l));
            cVar.a(true);
            MiTalkiApp.a().b().d().insertOrReplace(cVar);
        }
        this.o.a(Boolean.valueOf(true));
        MiTalkiApp.a().b().c().insertOrReplace(this.o);
    }

    public void b() {
        this.k = false;
        this.n = this.m.size();
        if (((ArrayList) this.m.get(this.m.size() - 1)).size() > 0) {
            this.m.add(new ArrayList());
        }
        this.b.startLocation();
        this.o.a(Boolean.valueOf(false));
        MiTalkiApp.a().b().c().insertOrReplace(this.o);
    }

    public void c() {
        if (this.m.size() == 1 && ((ArrayList) this.m.get(0)).size() == 0) {
            if (this.c != null) {
                this.c.a(this.p, this.f, true, false);
            }
        } else if (this.g < 100) {
            if (this.c != null) {
                this.c.a(this.p, this.f, false, true);
            }
        } else if (this.c != null) {
            this.c.a(this.p, this.f, false, false);
        }
    }

    public void a(boolean z, boolean z2) {
        this.r.cancel(this.s);
        if (this.b != null) {
            this.b.stopLocation();
            this.b.onDestroy();
            this.b = null;
        }
        this.i.cancel();
        this.i = null;
        if (z || z2) {
            if (this.c != null) {
                this.c.a(this.p, false);
            }
            MiTalkiApp.a().b().c().deleteByKey(Long.valueOf(this.p));
            e.b().execute(new Runnable() {
                public void run() {
                    for (c delete : MiTalkiApp.a().b().d().queryBuilder().a(Properties.b.a(TrackRecordService.this.f), new i[0]).c()) {
                        MiTalkiApp.a().b().d().delete(delete);
                    }
                }
            });
            return;
        }
        this.o.c(Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
        this.o.a(Boolean.valueOf(false));
        e();
        float f2 = 0.0f;
        if (this.h > 0 && this.g > 0) {
            f2 = Float.valueOf(new DecimalFormat("#.0").format((double) ((((float) this.o.o().intValue()) / 1000.0f) / ((((float) this.o.n().intValue()) / 60.0f) / 60.0f)))).floatValue();
        }
        this.o.a(Float.valueOf(f2));
        MiTalkiApp.a().b().c().insertOrReplace(this.o);
        if (this.c != null) {
            this.c.a(this.p, true);
        }
    }

    private void e() {
        String str;
        String l2 = this.o.l();
        String m2 = this.o.m();
        String j2 = this.o.j();
        String k2 = this.o.k();
        if (l2 == null) {
            l2 = getString(R.string.track_record_unknown);
            this.o.h(l2);
        }
        if (m2 == null) {
            this.o.i(getString(R.string.track_record_unknown));
        }
        if (l2 != null) {
            if (j2 != null) {
                if (k2 != null) {
                    str = l2 + j2 + " - " + k2;
                } else {
                    str = l2 + j2 + " - " + getString(R.string.track_record_unknown);
                }
            } else if (k2 != null) {
                str = l2 + getString(R.string.track_record_unknown) + " - " + k2;
            } else {
                str = l2 + getString(R.string.track_record_unknown) + " - " + getString(R.string.track_record_unknown);
            }
        } else if (j2 != null) {
            if (k2 != null) {
                str = j2 + " - " + k2;
            } else {
                str = j2 + " - " + getString(R.string.track_record_unknown);
            }
        } else if (k2 != null) {
            str = getString(R.string.track_record_unknown) + " - " + k2;
        } else {
            str = getString(R.string.track_record_unknown) + " - " + getString(R.string.track_record_unknown);
        }
        this.o.d(str);
    }

    public void a(a aVar) {
        s.c("TrackRecordService", "setListener");
        this.c = aVar;
    }

    public void d() {
        s.c("TrackRecordService", "removeListener");
        this.c = null;
    }
}
