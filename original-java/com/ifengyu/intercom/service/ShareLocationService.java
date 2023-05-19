package com.ifengyu.intercom.service;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
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
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.oldDevice.model.ShareLocationModel;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.LocationUtil;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.squareup.otto.Subscribe;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ShareLocationService extends Service implements AMapLocationListener {

    /* renamed from: h */
    private static ShareLocationService f14665h;

    /* renamed from: i */
    private static List<BeanUserLocation> f14666i = new ArrayList();

    /* renamed from: a */
    private AMapLocationClient f14667a;

    /* renamed from: b */
    private HashMap<String, BeanUserLocation> f14668b = new HashMap<>();

    /* renamed from: c */
    private AMapLocationClientOption f14669c;

    /* renamed from: d */
    private AlarmManager f14670d;

    /* renamed from: e */
    private PendingIntent f14671e;

    /* renamed from: f */
    private String f14672f;

    /* renamed from: g */
    private BroadcastReceiver f14673g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.service.ShareLocationService$a */
    /* loaded from: classes2.dex */
    public class C4328a extends ErrorConsumer {
        C4328a(ShareLocationService shareLocationService) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("ShareLocationService", "queryOtherInfo fail");
        }
    }

    /* renamed from: com.ifengyu.intercom.service.ShareLocationService$b */
    /* loaded from: classes2.dex */
    class C4329b extends BroadcastReceiver {
        C4329b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ShareLocationService.this.f14672f.equals(intent.getAction())) {
                C4161y.m11054a("ShareLocationService", "接收到广播--：" + C4148i0.m11164d(System.currentTimeMillis()));
                if (ShareLocationService.m10698e() != null && ShareLocationService.this.f14667a != null && ShareLocationService.this.f14669c != null) {
                    ShareLocationService.this.f14669c.setGpsFirst(true);
                    ShareLocationService.this.f14667a.setLocationOption(ShareLocationService.this.f14669c);
                    ShareLocationService.this.f14667a.startLocation();
                }
                Intent intent2 = new Intent();
                intent2.setAction(ShareLocationService.this.f14672f);
                ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, 0, intent2, 134217728));
                ShareLocationService.this.m10689n();
            }
        }
    }

    public ShareLocationService() {
        new ArrayList();
        this.f14672f = "com.ifengyu.intercom.SHARE_LOCATION_RECEIVER";
        this.f14673g = new C4329b();
    }

    /* renamed from: e */
    public static ShareLocationService m10698e() {
        return f14665h;
    }

    /* renamed from: f */
    private void m10697f() {
        double[] m11187s = MiTalkClientUtil.m11187s();
        BeanUserLocation beanUserLocation = new BeanUserLocation(MiTalkClientUtil.m11243P(), MiTalkClientUtil.m11239R(), (int) (m11187s[1] * 1000000.0d), (int) (m11187s[0] * 1000000.0d), (int) m11187s[2]);
        C4161y.m11054a("ShareLocationService", "发送上次保存的位置" + beanUserLocation.toString());
        m10690m(beanUserLocation);
    }

    /* renamed from: g */
    private void m10696g() {
        Location m11055a = LocationUtil.m11055a(this);
        if (m11055a == null) {
            m10697f();
            return;
        }
        BeanUserLocation beanUserLocation = new BeanUserLocation(MiTalkClientUtil.m11243P(), MiTalkClientUtil.m11239R(), (int) (m11055a.getLongitude() * 1000000.0d), (int) (m11055a.getLatitude() * 1000000.0d), (int) m11055a.getAltitude());
        C4161y.m11054a("ShareLocationService", "发送自己获取的位置--" + beanUserLocation.toString());
        m10690m(beanUserLocation);
        if (((int) m11055a.getAltitude()) != 0) {
            MiTalkClientUtil.m11200l0(m11055a.getLatitude(), m11055a.getLongitude(), (int) m11055a.getAltitude());
        } else {
            MiTalkClientUtil.m11202k0(m11055a.getLatitude(), m11055a.getLongitude());
        }
    }

    /* renamed from: h */
    private void m10695h(BeanUserLocation beanUserLocation) {
        if (TextUtils.isEmpty(beanUserLocation.getUserID())) {
            return;
        }
        ShareLocationModel mo14220c = AppDatabase.m14276F().mo14268I().mo14220c(Integer.parseInt(beanUserLocation.getUserID()));
        for (String str : this.f14668b.keySet()) {
            if (str.equals(beanUserLocation.getUserID())) {
                BeanUserLocation beanUserLocation2 = this.f14668b.get(str);
                beanUserLocation2.setBeanUser(beanUserLocation);
                if (mo14220c != null && !TextUtils.isEmpty(mo14220c.getImgUrl())) {
                    beanUserLocation2.setImgUrl(mo14220c.getImgUrl());
                }
                MiBus.getInstance().m6412i(beanUserLocation2);
                m10694i(beanUserLocation2);
                m10687p(str);
                return;
            }
        }
        this.f14668b.put(beanUserLocation.getUserID(), beanUserLocation);
        if (mo14220c != null && !TextUtils.isEmpty(mo14220c.getImgUrl())) {
            beanUserLocation.setImgUrl(mo14220c.getImgUrl());
        } else {
            beanUserLocation.setImgUrl(null);
        }
        C4161y.m11054a("ShareLocationService", beanUserLocation.toString());
        MiBus.getInstance().m6412i(beanUserLocation);
        m10694i(beanUserLocation);
        m10687p(beanUserLocation.getUserID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m10692k(String str, UserInfo userInfo) throws Exception {
        C4161y.m11049f("ShareLocationService", "queryOtherInfo success");
        String str2 = userInfo.avatar;
        String str3 = userInfo.nickname;
        BeanUserLocation beanUserLocation = this.f14668b.get(str);
        if (beanUserLocation != null) {
            beanUserLocation.setImgUrl(str2);
            beanUserLocation.setName(str3);
            MiBus.getInstance().m6412i(beanUserLocation);
            m10694i(beanUserLocation);
        }
    }

    /* renamed from: l */
    public static List<BeanUserLocation> m10691l() {
        List<ShareLocationModel> mo14222a = AppDatabase.m14276F().mo14268I().mo14222a(Integer.parseInt(MiTalkClientUtil.m11243P()), ((int) (System.currentTimeMillis() / 1000)) - 43200);
        List<BeanUserLocation> list = f14666i;
        if (list != null) {
            list.clear();
            for (ShareLocationModel shareLocationModel : mo14222a) {
                f14666i.add(new BeanUserLocation(shareLocationModel, true));
            }
        }
        return f14666i;
    }

    /* renamed from: m */
    private void m10690m(BeanUserLocation beanUserLocation) {
        String m12380g = BleCoreClient.m12373n().m12380g();
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q == 1) {
            if (TextUtils.isEmpty(m12380g)) {
                return;
            }
            BleCoreClient.m12373n().m12378i(m12380g).m12319o1(beanUserLocation);
        } else if (m11191q == 14) {
            if (TextUtils.isEmpty(m12380g)) {
                return;
            }
            BleCoreClient.m12373n().m12376k(m12380g).m12166q1(beanUserLocation, null);
        } else if (m11191q != 4) {
            if (m11191q == 5 && !TextUtils.isEmpty(m12380g)) {
                BleCoreClient.m12373n().m12375l(m12380g).m12084t1(beanUserLocation);
            }
        } else if (TextUtils.isEmpty(m12380g)) {
        } else {
            BleCoreClient.m12373n().m12374m(m12380g).m12033l1(beanUserLocation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m10689n() {
        String m12380g = BleCoreClient.m12373n().m12380g();
        if (TextUtils.isEmpty(m12380g)) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() + MiTalkClientUtil.m11201l(m12380g);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f14670d.setExactAndAllowWhileIdle(2, elapsedRealtime, this.f14671e);
        } else {
            this.f14670d.setExact(2, elapsedRealtime, this.f14671e);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: p */
    private void m10687p(final String str) {
        AppServiceClient.m11355a().m11386U(str).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.service.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ShareLocationService.this.m10692k(str, (UserInfo) obj);
            }
        }, new C4328a(this));
    }

    /* renamed from: i */
    public void m10694i(BeanUserLocation beanUserLocation) {
        AppDatabase.m14276F().mo14268I().mo14221b(new ShareLocationModel(null, Integer.parseInt(beanUserLocation.getUserID()), beanUserLocation.getName(), beanUserLocation.getImgUrl(), beanUserLocation.getLongitudeInt(), beanUserLocation.getLatitudeInt(), beanUserLocation.getAltitude(), beanUserLocation.getTime(), beanUserLocation.getFreq(), 0, MiTalkClientUtil.m11191q()));
    }

    /* renamed from: o */
    public void m10688o(long j) {
        this.f14667a.startLocation();
        this.f14670d.cancel(this.f14671e);
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        if (Build.VERSION.SDK_INT >= 23) {
            this.f14670d.setExactAndAllowWhileIdle(2, elapsedRealtime, this.f14671e);
        } else {
            this.f14670d.setExact(2, elapsedRealtime, this.f14671e);
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C4161y.m11049f("ShareLocationService", "onCreate");
        MiBus.getInstance().m6411j(this);
        f14665h = this;
        try {
            this.f14667a = new AMapLocationClient(MiTalkiApp.m14296h());
            AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
            this.f14669c = aMapLocationClientOption;
            aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
            this.f14669c.setNeedAddress(true);
            this.f14669c.setGpsFirst(false);
            this.f14669c.setOnceLocation(true);
            this.f14669c.setOnceLocationLatest(true);
            this.f14669c.setHttpTimeOut(15000L);
            AMapLocationClientOption.setLocationProtocol(AMapLocationClientOption.AMapLocationProtocol.HTTP);
            this.f14669c.setSensorEnable(false);
            this.f14669c.setWifiScan(true);
            this.f14669c.setLocationCacheEnable(true);
            this.f14667a.setLocationOption(this.f14669c);
            this.f14667a.setLocationListener(this);
            this.f14667a.startLocation();
            this.f14670d = (AlarmManager) getSystemService("alarm");
            Intent intent = new Intent();
            intent.setAction(this.f14672f);
            this.f14671e = PendingIntent.getBroadcast(getApplicationContext(), 0, intent, 134217728);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(this.f14672f);
            registerReceiver(this.f14673g, intentFilter);
            m10689n();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        C4161y.m11049f("ShareLocationService", "onDestroy");
        super.onDestroy();
        MiBus.getInstance().m6409l(this);
        f14665h = null;
        this.f14668b.clear();
        this.f14668b = null;
        AMapLocationClient aMapLocationClient = this.f14667a;
        if (aMapLocationClient != null) {
            aMapLocationClient.stopLocation();
            this.f14667a.onDestroy();
            this.f14667a = null;
        }
        AlarmManager alarmManager = this.f14670d;
        if (alarmManager != null) {
            alarmManager.cancel(this.f14671e);
            this.f14671e.cancel();
        }
        BroadcastReceiver broadcastReceiver = this.f14673g;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.f14673g = null;
        }
    }

    @Subscribe
    public void onDolphinReceiveLocationSync(MitalkProtos.LocationSync locationSync) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(locationSync);
        C4161y.m11054a("ShareLocationService", "onDolphinReceiveLocationSync: " + C4148i0.m11166b(beanUserLocation.getTime()));
        C4161y.m11043l("ShareLocationService", beanUserLocation.toString());
        m10695h(beanUserLocation);
    }

    @Override // com.amap.api.location.AMapLocationListener
    public void onLocationChanged(AMapLocation aMapLocation) {
        C4161y.m11054a("ShareLocationService", "发送位置--" + C4148i0.m11164d(System.currentTimeMillis()));
        if (aMapLocation != null) {
            if (aMapLocation.getErrorCode() == 0) {
                if (aMapLocation.getAccuracy() > 50.0f) {
                    m10697f();
                    return;
                }
                BeanUserLocation beanUserLocation = new BeanUserLocation(MiTalkClientUtil.m11243P(), MiTalkClientUtil.m11239R(), (int) (aMapLocation.getLongitude() * 1000000.0d), (int) (aMapLocation.getLatitude() * 1000000.0d), (int) aMapLocation.getAltitude());
                C4161y.m11054a("ShareLocationService", "发送最新获取的位置--" + beanUserLocation.toString());
                m10690m(beanUserLocation);
                if (((int) aMapLocation.getAltitude()) != 0) {
                    MiTalkClientUtil.m11200l0(aMapLocation.getLatitude(), aMapLocation.getLongitude(), (int) aMapLocation.getAltitude());
                    return;
                } else {
                    MiTalkClientUtil.m11202k0(aMapLocation.getLatitude(), aMapLocation.getLongitude());
                    return;
                }
            }
            m10696g();
            return;
        }
        m10696g();
    }

    @Subscribe
    public void onMi3ReceiveLocationSync(BleProtos.LocationInfo locationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(locationInfo);
        C4161y.m11054a("ShareLocationService", "onMi3ReceiveLocationSync: " + C4148i0.m11166b(beanUserLocation.getTime()));
        C4161y.m11043l("ShareLocationService", beanUserLocation.toString());
        m10695h(beanUserLocation);
    }

    @Subscribe
    public void onSealReceiveLocationSync(SealProtos.SEAL_LocationInfo sEAL_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sEAL_LocationInfo);
        C4161y.m11054a("ShareLocationService", "onSealReceiveLocationSync: " + C4148i0.m11166b(beanUserLocation.getTime()));
        C4161y.m11043l("ShareLocationService", beanUserLocation.toString());
        m10695h(beanUserLocation);
    }

    @Subscribe
    public void onSharkReceiveLocationSync(SharkProtos.SHARK_LocationInfo sHARK_LocationInfo) {
        BeanUserLocation beanUserLocation = new BeanUserLocation(sHARK_LocationInfo);
        C4161y.m11054a("ShareLocationService", "onSharkReceiveLocationSync: " + C4148i0.m11166b(beanUserLocation.getTime()));
        C4161y.m11043l("ShareLocationService", beanUserLocation.toString());
        m10695h(beanUserLocation);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C4161y.m11049f("ShareLocationService", "onStartCommand");
        if (this.f14667a != null && this.f14669c != null) {
            C4161y.m11054a("ShareLocationService", "startLocation");
            this.f14669c.setGpsFirst(false);
            this.f14667a.setLocationOption(this.f14669c);
            this.f14667a.stopLocation();
            this.f14667a.startLocation();
        }
        return super.onStartCommand(intent, i, i2);
    }
}
