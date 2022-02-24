package com.ifengyu.intercom.ui.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.widget.RemoteViews;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.LocationBean;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.network.d.e;
import com.ifengyu.intercom.ui.MainActivity;
import com.xiaomi.mipush.sdk.Constants;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class TrackRecordService extends Service implements AMapLocationListener {

    /* renamed from: a  reason: collision with root package name */
    private AMapLocationClient f6573a;

    /* renamed from: b  reason: collision with root package name */
    private c f6574b;
    private String e;
    private int f;
    private int g;
    private Timer h;
    private boolean j;
    private long k;
    private ArrayList<ArrayList<LocationBean>> l;
    private int m;
    private com.ifengyu.intercom.greendao.bean.b n;
    private long o;
    private NotificationManager p;
    private RemoteViews r;
    private Notification s;
    private String t;
    private float u;

    /* renamed from: c  reason: collision with root package name */
    private double f6575c = 0.0d;
    private double d = 0.0d;
    private int i = -1;
    private int q = 10001;

    /* loaded from: classes2.dex */
    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!TrackRecordService.this.j) {
                TrackRecordService.this.g++;
                String format = new DecimalFormat("#.0").format(TrackRecordService.this.u);
                TrackRecordService.this.u = format.contains(Constants.ACCEPT_TIME_SEPARATOR_SP) ? 0.0f : Float.valueOf(format).floatValue();
                if (TrackRecordService.this.f6574b != null) {
                    TrackRecordService.this.f6574b.a(TrackRecordService.this.i, TrackRecordService.this.g, TrackRecordService.this.f, TrackRecordService.this.u);
                }
                TrackRecordService.this.r.setTextViewText(R.id.track_recording_timing_tv, String.format(Locale.CHINA, "%02d:%02d:%02d", Integer.valueOf(TrackRecordService.this.g / 3600), Integer.valueOf((TrackRecordService.this.g % 3600) / 60), Integer.valueOf(TrackRecordService.this.g % 60)));
                if (TrackRecordService.this.f < 1000) {
                    TrackRecordService.this.r.setTextViewText(R.id.track_recording_distance_tv, TrackRecordService.this.f + "m");
                } else {
                    TrackRecordService.this.r.setTextViewText(R.id.track_recording_distance_tv, String.format("%.1f", Float.valueOf(TrackRecordService.this.f / 1000.0f)) + "km");
                }
                TrackRecordService.this.r.setTextViewText(R.id.track_recording_speed_tv, String.valueOf(TrackRecordService.this.u) + "km/h");
                TrackRecordService.this.p.notify(TrackRecordService.this.q, TrackRecordService.this.s);
                if (TrackRecordService.this.n != null) {
                    TrackRecordService.this.n.i(Integer.valueOf(TrackRecordService.this.g));
                    TrackRecordService.this.n.h(Integer.valueOf(TrackRecordService.this.f));
                    TrackRecordService.this.n.d(TrackRecordService.this.t);
                    MiTalkiApp.b().g().d().insertOrReplace(TrackRecordService.this.n);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (com.ifengyu.intercom.greendao.bean.c cVar : MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(TrackRecordService.this.e), new WhereCondition[0]).list()) {
                MiTalkiApp.b().g().e().delete(cVar);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(int i, int i2, int i3, float f);

        void a(long j, String str, boolean z, boolean z2);

        void a(long j, boolean z);

        void a(ArrayList<ArrayList<LocationBean>> arrayList, boolean z);
    }

    /* loaded from: classes2.dex */
    public class d extends Binder {
        public d() {
        }

        public TrackRecordService a() {
            return TrackRecordService.this;
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        z.c("TrackRecordService", "onBind");
        return new d();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        z.c("TrackRecordService", "onCreate");
        ArrayList<ArrayList<LocationBean>> arrayList = new ArrayList<>();
        this.l = arrayList;
        arrayList.add(new ArrayList<>());
        this.m = 1;
        this.f6573a = new AMapLocationClient(this);
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
        aMapLocationClientOption.setInterval(2000L);
        aMapLocationClientOption.setNeedAddress(true);
        aMapLocationClientOption.setGpsFirst(false);
        aMapLocationClientOption.setOnceLocation(false);
        aMapLocationClientOption.setOnceLocationLatest(false);
        aMapLocationClientOption.setHttpTimeOut(10000L);
        AMapLocationClientOption.setLocationProtocol(AMapLocationClientOption.AMapLocationProtocol.HTTP);
        aMapLocationClientOption.setSensorEnable(false);
        aMapLocationClientOption.setWifiScan(true);
        aMapLocationClientOption.setLocationCacheEnable(true);
        this.f6573a.setLocationOption(aMapLocationClientOption);
        this.f6573a.setLocationListener(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        z.c("TrackRecordService", "onDestroy");
        stopForeground(true);
        super.onDestroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x016e  */
    @Override // com.amap.api.location.AMapLocationListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLocationChanged(com.amap.api.location.AMapLocation r27) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.ui.service.TrackRecordService.onLocationChanged(com.amap.api.location.AMapLocation):void");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        z.c("TrackRecordService", "onStartCommand");
        RemoteViews remoteViews = new RemoteViews(getPackageName(), (int) R.layout.track_record_notification_layout);
        this.r = remoteViews;
        remoteViews.setTextViewText(R.id.track_recording_timing_tv, "00:00:00");
        this.r.setTextViewText(R.id.track_recording_distance_tv, "0m");
        this.r.setTextViewText(R.id.track_recording_speed_tv, "0km/h");
        this.p = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            this.p.createNotificationChannel(a("track_service", "track_foreground_service"));
        }
        NotificationCompat.b bVar = new NotificationCompat.b(getApplicationContext(), "track_service");
        bVar.a(this.r);
        bVar.a(false);
        bVar.c(false);
        bVar.b(true);
        bVar.b(getString(R.string.app_name));
        bVar.a(getString(R.string.track_record_is_going));
        bVar.a(R.mipmap.ic_launcher);
        bVar.a(BitmapFactory.decodeResource(MiTalkiApp.b().getResources(), R.mipmap.ic_launcher));
        this.s = bVar.a();
        this.s.contentIntent = PendingIntent.getActivity(MiTalkiApp.b(), 0, new Intent(MiTalkiApp.b(), MainActivity.class), 0);
        Notification notification = this.s;
        notification.flags = 32;
        startForeground(this.q, notification);
        if (intent != null) {
            if (!intent.getBooleanExtra("is_load_last_not_saved_track", false)) {
                String N = d0.N();
                int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                this.e = N + "_" + currentTimeMillis;
                com.ifengyu.intercom.greendao.bean.b bVar2 = new com.ifengyu.intercom.greendao.bean.b();
                this.n = bVar2;
                bVar2.j(N);
                this.n.g(this.e);
                this.n.d(Integer.valueOf(currentTimeMillis));
                this.n.a((Boolean) false);
                this.n.b((Boolean) false);
                long insert = MiTalkiApp.b().g().d().insert(this.n);
                this.o = insert;
                this.n.a(Long.valueOf(insert));
                d0.a(this.o);
                this.f6573a.startLocation();
            } else {
                this.o = intent.getLongExtra("last_not_saved_track_primary_key_id", -1L);
                com.ifengyu.intercom.greendao.bean.b load = MiTalkiApp.b().g().d().load(Long.valueOf(this.o));
                this.n = load;
                this.e = load.v();
                this.t = this.n.i();
                this.g = this.n.r().intValue();
                this.f = this.n.q().intValue();
                this.j = true;
                List<com.ifengyu.intercom.greendao.bean.c> list = MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(this.e), new WhereCondition[0]).orderAsc(TrackPointDao.Properties.CurrentTime).list();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    com.ifengyu.intercom.greendao.bean.c cVar = list.get(i3);
                    LocationBean locationBean = new LocationBean(cVar.f().intValue() / 1000000.0d, cVar.g().intValue() / 1000000.0d);
                    ArrayList<ArrayList<LocationBean>> arrayList = this.l;
                    arrayList.get(arrayList.size() - 1).add(locationBean);
                    if (cVar.e() && i3 != list.size() - 1) {
                        this.l.add(new ArrayList<>());
                    }
                }
            }
        }
        if (this.h == null) {
            Timer timer = new Timer();
            this.h = timer;
            timer.schedule(new a(), 1000L, 1000L);
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        z.c("TrackRecordService", "onUnbind");
        return super.onUnbind(intent);
    }

    private void e() {
        String str;
        String g = this.n.g();
        String h = this.n.h();
        String e = this.n.e();
        String i = this.n.i();
        if (g == null) {
            g = getString(R.string.track_record_unknown);
            this.n.b(g);
        }
        if (h == null) {
            this.n.c(getString(R.string.track_record_unknown));
        }
        if (g != null) {
            if (e != null) {
                if (i != null) {
                    str = g + e + " - " + i;
                } else {
                    str = g + e + " - " + getString(R.string.track_record_unknown);
                }
            } else if (i != null) {
                str = g + getString(R.string.track_record_unknown) + " - " + i;
            } else {
                str = g + getString(R.string.track_record_unknown) + " - " + getString(R.string.track_record_unknown);
            }
        } else if (e != null) {
            if (i != null) {
                str = e + " - " + i;
            } else {
                str = e + " - " + getString(R.string.track_record_unknown);
            }
        } else if (i != null) {
            str = getString(R.string.track_record_unknown) + " - " + i;
        } else {
            str = getString(R.string.track_record_unknown) + " - " + getString(R.string.track_record_unknown);
        }
        this.n.i(str);
    }

    public void b() {
        if (this.l.size() == 1 && this.l.get(0).size() == 0) {
            c cVar = this.f6574b;
            if (cVar != null) {
                cVar.a(this.o, this.e, true, false);
            }
        } else if (this.f < 100) {
            c cVar2 = this.f6574b;
            if (cVar2 != null) {
                cVar2.a(this.o, this.e, false, true);
            }
        } else {
            c cVar3 = this.f6574b;
            if (cVar3 != null) {
                cVar3.a(this.o, this.e, false, false);
            }
        }
    }

    public void c() {
        this.j = true;
        this.f6573a.stopLocation();
        this.f6575c = 0.0d;
        this.d = 0.0d;
        if (this.k > 0) {
            com.ifengyu.intercom.greendao.bean.c load = MiTalkiApp.b().g().e().load(Long.valueOf(this.k));
            load.a(true);
            MiTalkiApp.b().g().e().insertOrReplace(load);
        }
        this.n.a((Boolean) true);
        MiTalkiApp.b().g().d().insertOrReplace(this.n);
    }

    public void d() {
        z.c("TrackRecordService", "removeListener");
        this.f6574b = null;
    }

    @RequiresApi(26)
    private NotificationChannel a(String str, String str2) {
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, 0);
        notificationChannel.setLightColor(-16776961);
        notificationChannel.setLockscreenVisibility(0);
        return notificationChannel;
    }

    public void a() {
        this.j = false;
        this.m = this.l.size();
        ArrayList<ArrayList<LocationBean>> arrayList = this.l;
        if (arrayList.get(arrayList.size() - 1).size() > 0) {
            this.l.add(new ArrayList<>());
        }
        this.f6573a.startLocation();
        this.n.a((Boolean) false);
        MiTalkiApp.b().g().d().insertOrReplace(this.n);
    }

    public void a(boolean z, boolean z2) {
        this.p.cancel(this.q);
        AMapLocationClient aMapLocationClient = this.f6573a;
        if (aMapLocationClient != null) {
            aMapLocationClient.stopLocation();
            this.f6573a.onDestroy();
            this.f6573a = null;
        }
        this.h.cancel();
        this.h = null;
        if (z || z2) {
            c cVar = this.f6574b;
            if (cVar != null) {
                cVar.a(this.o, false);
            }
            MiTalkiApp.b().g().d().deleteByKey(Long.valueOf(this.o));
            e.a().execute(new b());
            return;
        }
        this.n.e(Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
        this.n.a((Boolean) false);
        e();
        float f = 0.0f;
        if (this.g > 0 && this.f > 0) {
            f = Float.valueOf(new DecimalFormat("#.0").format((this.n.q().intValue() / 1000.0f) / ((this.n.r().intValue() / 60.0f) / 60.0f))).floatValue();
        }
        this.n.a(Float.valueOf(f));
        MiTalkiApp.b().g().d().insertOrReplace(this.n);
        c cVar2 = this.f6574b;
        if (cVar2 != null) {
            cVar2.a(this.o, true);
        }
    }

    public void a(c cVar) {
        z.c("TrackRecordService", "setListener");
        this.f6574b = cVar;
    }
}
