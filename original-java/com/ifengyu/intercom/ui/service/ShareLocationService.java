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
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationClientOption.AMapLocationProtocol;
import com.amap.api.location.AMapLocationListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ac;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.greendao.bean.d;
import com.ifengyu.intercom.greendao.dao.UserLocationDao.Properties;
import com.ifengyu.intercom.greendao.dao.b;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.LocationSync;
import com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfo;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Call;
import org.greenrobot.greendao.c.i;
import org.json.JSONException;
import org.json.JSONObject;

public class ShareLocationService extends Service implements AMapLocationListener {
    private static ShareLocationService e;
    private static List<BeanUserLocation> n = new ArrayList();
    private final String a = "ShareLocationService";
    /* access modifiers changed from: private */
    public AMapLocationClient b;
    private com.ifengyu.intercom.node.i.a c = new a();
    /* access modifiers changed from: private */
    public HashMap<String, BeanUserLocation> d = new HashMap<>();
    private b f;
    private List<d> g = new ArrayList();
    /* access modifiers changed from: private */
    public AMapLocationClientOption h;
    /* access modifiers changed from: private */
    public AlarmManager i;
    /* access modifiers changed from: private */
    public PendingIntent j;
    /* access modifiers changed from: private */
    public String k = "com.ifengyu.intercom.SHARE_LOCATION_RECEIVER";
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.node.btle.BtleCentralService.a l;
    private ServiceConnection m = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ShareLocationService.this.l = (com.ifengyu.intercom.node.btle.BtleCentralService.a) iBinder;
            long k = w.k(ShareLocationService.this.l != null ? ShareLocationService.this.l.b().c() : null) + SystemClock.elapsedRealtime();
            if (VERSION.SDK_INT >= 23) {
                ShareLocationService.this.i.setExactAndAllowWhileIdle(2, k, ShareLocationService.this.j);
            } else if (VERSION.SDK_INT >= 19) {
                ShareLocationService.this.i.setExact(2, k, ShareLocationService.this.j);
            } else {
                ShareLocationService.this.i.set(2, k, ShareLocationService.this.j);
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    private BroadcastReceiver o = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (ShareLocationService.this.k.equals(intent.getAction())) {
                s.b("ShareLocationService", "接收到广播--：" + ac.a(System.currentTimeMillis()));
                if (!(ShareLocationService.a() == null || ShareLocationService.this.b == null || ShareLocationService.this.h == null)) {
                    ShareLocationService.this.h.setGpsFirst(true);
                    ShareLocationService.this.b.setLocationOption(ShareLocationService.this.h);
                    ShareLocationService.this.b.startLocation();
                }
                AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                Intent intent2 = new Intent();
                intent2.setAction(ShareLocationService.this.k);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 134217728);
                alarmManager.cancel(broadcast);
                long elapsedRealtime = SystemClock.elapsedRealtime() + w.k(ShareLocationService.this.l != null ? ShareLocationService.this.l.b().c() : null);
                if (VERSION.SDK_INT >= 23) {
                    alarmManager.setExactAndAllowWhileIdle(2, elapsedRealtime, broadcast);
                } else if (VERSION.SDK_INT >= 19) {
                    alarmManager.setExact(2, elapsedRealtime, broadcast);
                } else {
                    alarmManager.set(2, elapsedRealtime, broadcast);
                }
            }
        }
    };

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void a(String str) {
        }

        public void b(String str) {
        }

        public void c(String str) {
            MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
        }

        public void d(String str) {
        }

        public void e(String str) {
        }

        public void f(String str) {
        }
    }

    public void onCreate() {
        super.onCreate();
        s.c("ShareLocationService", "onCreate");
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        e = this;
        this.f = MiTalkiApp.a().b();
        k.a().a(this.c);
        this.b = new AMapLocationClient(MiTalkiApp.a());
        this.h = new AMapLocationClientOption();
        this.h.setLocationMode(AMapLocationMode.Hight_Accuracy);
        this.h.setNeedAddress(true);
        this.h.setGpsFirst(false);
        this.h.setOnceLocation(true);
        this.h.setOnceLocationLatest(true);
        this.h.setHttpTimeOut(IPC.LogoutAsyncTimeout);
        AMapLocationClientOption.setLocationProtocol(AMapLocationProtocol.HTTP);
        this.h.setSensorEnable(false);
        this.h.setWifiScan(true);
        this.h.setLocationCacheEnable(true);
        this.b.setLocationOption(this.h);
        this.b.setLocationListener(this);
        this.b.startLocation();
        bindService(new Intent(this, BtleCentralService.class), this.m, 1);
        this.i = (AlarmManager) getSystemService("alarm");
        Intent intent = new Intent();
        intent.setAction(this.k);
        this.j = PendingIntent.getBroadcast(getApplicationContext(), 0, intent, 134217728);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(this.k);
        registerReceiver(this.o, intentFilter);
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        s.c("ShareLocationService", "onStartCommand");
        return super.onStartCommand(intent, i2, i3);
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onDestroy() {
        s.c("ShareLocationService", "onDestroy");
        super.onDestroy();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        k.a().b(this.c);
        e = null;
        this.d.clear();
        this.d = null;
        if (this.b != null) {
            this.b.stopLocation();
            this.b.onDestroy();
            this.b = null;
        }
        if (this.i != null) {
            this.i.cancel(this.j);
            this.j.cancel();
        }
        if (this.o != null) {
            unregisterReceiver(this.o);
            this.o = null;
        }
        unbindService(this.m);
        this.m = null;
    }

    public void onLocationChanged(AMapLocation aMapLocation) {
        s.b("ShareLocationService", "发送位置--" + ac.a(System.currentTimeMillis()));
        if (MiTalkiApp.a().f()) {
            c();
        } else if (aMapLocation == null) {
            c();
        } else if (aMapLocation.getErrorCode() != 0) {
            c();
        } else if (aMapLocation.getAccuracy() > 50.0f) {
            c();
        } else {
            BeanUserLocation beanUserLocation = new BeanUserLocation(w.K(), w.M(), (int) (aMapLocation.getLongitude() * 1000000.0d), (int) (aMapLocation.getLatitude() * 1000000.0d), (int) aMapLocation.getAltitude());
            s.b("ShareLocationService", "发送最新获取的位置--" + beanUserLocation.toString());
            b(beanUserLocation);
            if (((int) aMapLocation.getAltitude()) != 0) {
                w.a(aMapLocation.getLatitude(), aMapLocation.getLongitude(), (int) aMapLocation.getAltitude());
            } else {
                w.a(aMapLocation.getLatitude(), aMapLocation.getLongitude());
            }
        }
    }

    private void c() {
        double[] Z = w.Z();
        BeanUserLocation beanUserLocation = new BeanUserLocation(w.K(), w.M(), (int) (Z[1] * 1000000.0d), (int) (Z[0] * 1000000.0d), (int) Z[2]);
        s.b("ShareLocationService", "发送上次保存的位置" + beanUserLocation.toString());
        b(beanUserLocation);
    }

    private void b(BeanUserLocation beanUserLocation) {
        switch (w.ad()) {
            case 1:
                f.a().a(beanUserLocation);
                return;
            case 4:
                ab.a(beanUserLocation);
                return;
            case 5:
                aa.a(beanUserLocation);
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void onDolphinReceiveLocationSync(LocationSync locationSync) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(locationSync);
        s.b("ShareLocationService", "onDolphinReceiveLocationSync: " + ac.d((long) beanUserLocation.getTime()));
        s.a("ShareLocationService", beanUserLocation.toString());
        c(beanUserLocation);
    }

    @Subscribe
    public void onSealReceiveLocationSync(SEAL_LocationInfo sEAL_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sEAL_LocationInfo);
        s.b("ShareLocationService", "onSealReceiveLocationSync: " + ac.d((long) beanUserLocation.getTime()));
        s.a("ShareLocationService", beanUserLocation.toString());
        c(beanUserLocation);
    }

    @Subscribe
    public void onSharkReceiveLocationSync(SHARK_LocationInfo sHARK_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sHARK_LocationInfo);
        s.b("ShareLocationService", "onSharkReceiveLocationSync: " + ac.d((long) beanUserLocation.getTime()));
        s.a("ShareLocationService", beanUserLocation.toString());
        c(beanUserLocation);
    }

    private void c(BeanUserLocation beanUserLocation) {
        if (!TextUtils.isEmpty(beanUserLocation.getUserID())) {
            d dVar = (d) this.f.e().queryBuilder().a(Properties.b.a(Integer.valueOf(Integer.parseInt(beanUserLocation.getUserID()))), new i[0]).d();
            for (String str : this.d.keySet()) {
                if (str.equals(beanUserLocation.getUserID())) {
                    BeanUserLocation beanUserLocation2 = (BeanUserLocation) this.d.get(str);
                    beanUserLocation2.setBeanUser(beanUserLocation);
                    if (dVar != null && !TextUtils.isEmpty(dVar.d())) {
                        beanUserLocation2.setImgUrl(dVar.d());
                    }
                    com.ifengyu.intercom.eventbus.a.a().c((Object) beanUserLocation2);
                    a(beanUserLocation2);
                    a(str);
                    return;
                }
            }
            this.d.put(beanUserLocation.getUserID(), beanUserLocation);
            if (dVar == null || TextUtils.isEmpty(dVar.d())) {
                beanUserLocation.setImgUrl(null);
            } else {
                beanUserLocation.setImgUrl(dVar.d());
            }
            s.b("ShareLocationService", beanUserLocation.toString());
            com.ifengyu.intercom.eventbus.a.a().c((Object) beanUserLocation);
            a(beanUserLocation);
            a(beanUserLocation.getUserID());
        }
    }

    public void a(BeanUserLocation beanUserLocation) {
        this.f.insertOrReplace(new d(null, Integer.valueOf(Integer.parseInt(beanUserLocation.getUserID())), beanUserLocation.getName(), beanUserLocation.getImgUrl(), Integer.valueOf(beanUserLocation.getLongitudeInt()), Integer.valueOf(beanUserLocation.getLatitudeInt()), Integer.valueOf(beanUserLocation.getAltitude()), Integer.valueOf(beanUserLocation.getTime()), Integer.valueOf(beanUserLocation.getFreq()), Integer.valueOf(0), Integer.valueOf(5)));
    }

    private void a(final String str) {
        com.ifengyu.intercom.a.a.a(str, (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
                s.a("ShareLocationService", "queryUserInfo onError");
                ThrowableExtension.printStackTrace(exc);
            }

            public void a(String str, int i) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if ("success".equals(jSONObject.getString("msg"))) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA);
                        String string = jSONObject2.getString("avatar");
                        String string2 = jSONObject2.getString("nickname");
                        BeanUserLocation beanUserLocation = (BeanUserLocation) ShareLocationService.this.d.get(str);
                        beanUserLocation.setImgUrl(string);
                        beanUserLocation.setName(string2);
                        s.a("ShareLocationService", "onFinal" + beanUserLocation.toString());
                        com.ifengyu.intercom.eventbus.a.a().c((Object) beanUserLocation);
                        ShareLocationService.this.a(beanUserLocation);
                    }
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    public static ShareLocationService a() {
        return e;
    }

    public void a(long j2) {
        this.b.startLocation();
        this.i.cancel(this.j);
        long elapsedRealtime = SystemClock.elapsedRealtime() + j2;
        if (VERSION.SDK_INT >= 23) {
            this.i.setExactAndAllowWhileIdle(2, elapsedRealtime, this.j);
        } else if (VERSION.SDK_INT >= 19) {
            this.i.setExact(2, elapsedRealtime, this.j);
        } else {
            this.i.set(2, elapsedRealtime, this.j);
        }
    }

    public static List<BeanUserLocation> b() {
        List<d> c2 = MiTalkiApp.a().b().e().queryBuilder().a(Properties.b.b(Integer.valueOf(0)), Properties.h.b(Long.valueOf((System.currentTimeMillis() / 1000) - 43200))).c();
        if (n != null) {
            n.clear();
            for (d beanUserLocation : c2) {
                n.add(new BeanUserLocation(beanUserLocation, true));
            }
        }
        return n;
    }
}
