package com.ifengyu.intercom.ui.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.greendao.dao.UserLocationDao;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.j0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.node.h;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.squareup.otto.Subscribe;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Call;
import org.greenrobot.greendao.query.WhereCondition;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ShareLocationService extends Service implements AMapLocationListener {
    private static ShareLocationService m;
    private static List<BeanUserLocation> n = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private AMapLocationClient f6567b;
    private com.ifengyu.intercom.greendao.dao.b e;
    private AMapLocationClientOption f;
    private AlarmManager g;
    private PendingIntent h;
    private BtleCentralService.a j;

    /* renamed from: a  reason: collision with root package name */
    private final String f6566a = "ShareLocationService";

    /* renamed from: c  reason: collision with root package name */
    private h f6568c = new d(this, null);
    private HashMap<String, BeanUserLocation> d = new HashMap<>();
    private String i = "com.ifengyu.intercom.SHARE_LOCATION_RECEIVER";
    private ServiceConnection k = new a();
    private BroadcastReceiver l = new c();

    /* loaded from: classes2.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ShareLocationService.this.j = (BtleCentralService.a) iBinder;
            long elapsedRealtime = SystemClock.elapsedRealtime() + d0.a(ShareLocationService.this.j != null ? ShareLocationService.this.j.a().a() : null);
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                ShareLocationService.this.g.setExactAndAllowWhileIdle(2, elapsedRealtime, ShareLocationService.this.h);
            } else if (i >= 19) {
                ShareLocationService.this.g.setExact(2, elapsedRealtime, ShareLocationService.this.h);
            } else {
                ShareLocationService.this.g.set(2, elapsedRealtime, ShareLocationService.this.h);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f6570b;

        b(String str) {
            this.f6570b = str;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.d("ShareLocationService", "queryUserInfo onError");
            exc.printStackTrace();
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if ("success".equals(jSONObject.getString(SocialConstants.PARAM_SEND_MSG))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    String string = jSONObject2.getString("avatar");
                    String string2 = jSONObject2.getString("nickname");
                    BeanUserLocation beanUserLocation = (BeanUserLocation) ShareLocationService.this.d.get(this.f6570b);
                    beanUserLocation.setImgUrl(string);
                    beanUserLocation.setName(string2);
                    z.d("ShareLocationService", "onFinal" + beanUserLocation.toString());
                    com.ifengyu.intercom.eventbus.a.a().a(beanUserLocation);
                    ShareLocationService.this.a(beanUserLocation);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes2.dex */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ShareLocationService.this.i.equals(intent.getAction())) {
                z.a("ShareLocationService", "接收到广播--：" + j0.c(System.currentTimeMillis()));
                if (!(ShareLocationService.a() == null || ShareLocationService.this.f6567b == null || ShareLocationService.this.f == null)) {
                    ShareLocationService.this.f.setGpsFirst(true);
                    ShareLocationService.this.f6567b.setLocationOption(ShareLocationService.this.f);
                    ShareLocationService.this.f6567b.startLocation();
                }
                AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                Intent intent2 = new Intent();
                intent2.setAction(ShareLocationService.this.i);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 134217728);
                alarmManager.cancel(broadcast);
                long elapsedRealtime = SystemClock.elapsedRealtime() + d0.a(ShareLocationService.this.j != null ? ShareLocationService.this.j.a().a() : null);
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    alarmManager.setExactAndAllowWhileIdle(2, elapsedRealtime, broadcast);
                } else if (i >= 19) {
                    alarmManager.setExact(2, elapsedRealtime, broadcast);
                } else {
                    alarmManager.set(2, elapsedRealtime, broadcast);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private class d implements h {
        private d(ShareLocationService shareLocationService) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
        }

        /* synthetic */ d(ShareLocationService shareLocationService, a aVar) {
            this(shareLocationService);
        }
    }

    public ShareLocationService() {
        new ArrayList();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        z.c("ShareLocationService", "onCreate");
        com.ifengyu.intercom.eventbus.a.a().b(this);
        m = this;
        this.e = MiTalkiApp.b().g();
        j.b().a(this.f6568c);
        this.f6567b = new AMapLocationClient(MiTalkiApp.b());
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        this.f = aMapLocationClientOption;
        aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
        this.f.setNeedAddress(true);
        this.f.setGpsFirst(false);
        this.f.setOnceLocation(true);
        this.f.setOnceLocationLatest(true);
        this.f.setHttpTimeOut(15000L);
        AMapLocationClientOption.setLocationProtocol(AMapLocationClientOption.AMapLocationProtocol.HTTP);
        this.f.setSensorEnable(false);
        this.f.setWifiScan(true);
        this.f.setLocationCacheEnable(true);
        this.f6567b.setLocationOption(this.f);
        this.f6567b.setLocationListener(this);
        this.f6567b.startLocation();
        bindService(new Intent(this, BtleCentralService.class), this.k, 1);
        this.g = (AlarmManager) getSystemService("alarm");
        Intent intent = new Intent();
        intent.setAction(this.i);
        this.h = PendingIntent.getBroadcast(getApplicationContext(), 0, intent, 134217728);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(this.i);
        registerReceiver(this.l, intentFilter);
    }

    @Override // android.app.Service
    public void onDestroy() {
        z.c("ShareLocationService", "onDestroy");
        super.onDestroy();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        j.b().b(this.f6568c);
        m = null;
        this.d.clear();
        this.d = null;
        AMapLocationClient aMapLocationClient = this.f6567b;
        if (aMapLocationClient != null) {
            aMapLocationClient.stopLocation();
            this.f6567b.onDestroy();
            this.f6567b = null;
        }
        AlarmManager alarmManager = this.g;
        if (alarmManager != null) {
            alarmManager.cancel(this.h);
            this.h.cancel();
        }
        BroadcastReceiver broadcastReceiver = this.l;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.l = null;
        }
        unbindService(this.k);
        this.k = null;
    }

    @Subscribe
    public void onDolphinReceiveLocationSync(MitalkProtos.LocationSync locationSync) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(locationSync);
        z.a("ShareLocationService", "onDolphinReceiveLocationSync: " + j0.a(beanUserLocation.getTime()));
        z.d("ShareLocationService", beanUserLocation.toString());
        b(beanUserLocation);
    }

    @Override // com.amap.api.location.AMapLocationListener
    public void onLocationChanged(AMapLocation aMapLocation) {
        z.a("ShareLocationService", "发送位置--" + j0.c(System.currentTimeMillis()));
        if (MiTalkiApp.b().m()) {
            b();
        } else if (aMapLocation == null) {
            b();
        } else if (aMapLocation.getErrorCode() != 0) {
            b();
        } else if (aMapLocation.getAccuracy() > 50.0f) {
            b();
        } else {
            BeanUserLocation beanUserLocation = new BeanUserLocation(d0.N(), d0.P(), (int) (aMapLocation.getLongitude() * 1000000.0d), (int) (aMapLocation.getLatitude() * 1000000.0d), (int) aMapLocation.getAltitude());
            z.a("ShareLocationService", "发送最新获取的位置--" + beanUserLocation.toString());
            c(beanUserLocation);
            if (((int) aMapLocation.getAltitude()) != 0) {
                d0.a(aMapLocation.getLatitude(), aMapLocation.getLongitude(), (int) aMapLocation.getAltitude());
            } else {
                d0.a(aMapLocation.getLatitude(), aMapLocation.getLongitude());
            }
        }
    }

    @Subscribe
    public void onSealReceiveLocationSync(SealProtos.SEAL_LocationInfo sEAL_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sEAL_LocationInfo);
        z.a("ShareLocationService", "onSealReceiveLocationSync: " + j0.a(beanUserLocation.getTime()));
        z.d("ShareLocationService", beanUserLocation.toString());
        b(beanUserLocation);
    }

    @Subscribe
    public void onSharkReceiveLocationSync(SharkProtos.SHARK_LocationInfo sHARK_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sHARK_LocationInfo);
        z.a("ShareLocationService", "onSharkReceiveLocationSync: " + j0.a(beanUserLocation.getTime()));
        z.d("ShareLocationService", beanUserLocation.toString());
        b(beanUserLocation);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        z.c("ShareLocationService", "onStartCommand");
        return super.onStartCommand(intent, i, i2);
    }

    private void b() {
        double[] s = d0.s();
        BeanUserLocation beanUserLocation = new BeanUserLocation(d0.N(), d0.P(), (int) (s[1] * 1000000.0d), (int) (s[0] * 1000000.0d), (int) s[2]);
        z.a("ShareLocationService", "发送上次保存的位置" + beanUserLocation.toString());
        c(beanUserLocation);
    }

    private void c(BeanUserLocation beanUserLocation) {
        int g = d0.g();
        if (g == 1) {
            e.d().a(beanUserLocation);
        } else if (g == 4) {
            h0.a(beanUserLocation);
        } else if (g == 5) {
            g0.a(beanUserLocation);
        }
    }

    public void a(BeanUserLocation beanUserLocation) {
        this.e.insertOrReplace(new com.ifengyu.intercom.greendao.bean.d(null, Integer.valueOf(Integer.parseInt(beanUserLocation.getUserID())), beanUserLocation.getName(), beanUserLocation.getImgUrl(), Integer.valueOf(beanUserLocation.getLongitudeInt()), Integer.valueOf(beanUserLocation.getLatitudeInt()), Integer.valueOf(beanUserLocation.getAltitude()), Integer.valueOf(beanUserLocation.getTime()), Integer.valueOf(beanUserLocation.getFreq()), 0, 5));
    }

    private void b(BeanUserLocation beanUserLocation) {
        if (!TextUtils.isEmpty(beanUserLocation.getUserID())) {
            com.ifengyu.intercom.greendao.bean.d unique = this.e.g().queryBuilder().where(UserLocationDao.Properties.Userid.eq(Integer.valueOf(Integer.parseInt(beanUserLocation.getUserID()))), new WhereCondition[0]).unique();
            for (String str : this.d.keySet()) {
                if (str.equals(beanUserLocation.getUserID())) {
                    BeanUserLocation beanUserLocation2 = this.d.get(str);
                    beanUserLocation2.setBeanUser(beanUserLocation);
                    if (unique != null && !TextUtils.isEmpty(unique.e())) {
                        beanUserLocation2.setImgUrl(unique.e());
                    }
                    com.ifengyu.intercom.eventbus.a.a().a(beanUserLocation2);
                    a(beanUserLocation2);
                    a(str);
                    return;
                }
            }
            this.d.put(beanUserLocation.getUserID(), beanUserLocation);
            if (unique == null || TextUtils.isEmpty(unique.e())) {
                beanUserLocation.setImgUrl(null);
            } else {
                beanUserLocation.setImgUrl(unique.e());
            }
            z.a("ShareLocationService", beanUserLocation.toString());
            com.ifengyu.intercom.eventbus.a.a().a(beanUserLocation);
            a(beanUserLocation);
            a(beanUserLocation.getUserID());
        }
    }

    public static List<BeanUserLocation> c() {
        List<com.ifengyu.intercom.greendao.bean.d> list = MiTalkiApp.b().g().g().queryBuilder().where(UserLocationDao.Properties.Userid.gt(0), UserLocationDao.Properties.Userid.notEq(d0.N()), UserLocationDao.Properties.Time.gt(Long.valueOf((System.currentTimeMillis() / 1000) - 43200))).list();
        List<BeanUserLocation> list2 = n;
        if (list2 != null) {
            list2.clear();
            for (com.ifengyu.intercom.greendao.bean.d dVar : list) {
                n.add(new BeanUserLocation(dVar, true));
            }
        }
        return n;
    }

    private void a(String str) {
        com.ifengyu.intercom.g.a.c(str, new b(str));
    }

    public static ShareLocationService a() {
        return m;
    }

    public void a(long j) {
        this.f6567b.startLocation();
        this.g.cancel(this.h);
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            this.g.setExactAndAllowWhileIdle(2, elapsedRealtime, this.h);
        } else if (i >= 19) {
            this.g.setExact(2, elapsedRealtime, this.h);
        } else {
            this.g.set(2, elapsedRealtime, this.h);
        }
    }
}
