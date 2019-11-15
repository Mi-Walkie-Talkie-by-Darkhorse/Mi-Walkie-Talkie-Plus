package com.ifengyu.intercom;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.VmPolicy.Builder;
import android.support.multidex.MultiDex;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.sp.LoginSp;
import com.ifengyu.im.DB.sp.LoginSp.SpLoginIdentity;
import com.ifengyu.im.config.AppConstant;
import com.ifengyu.im.imservice.audio.StorageUtil;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.service.IMService;
import com.ifengyu.im.imservice.support.IMServiceConnector;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.o;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.b.z;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.a;
import com.ifengyu.intercom.greendao.dao.a.C0024a;
import com.ifengyu.intercom.greendao.dao.b;
import com.ifengyu.intercom.service.AutoStarterReceiver;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.SplashActivity;
import com.ifengyu.intercom.ui.activity.PermissionActivity;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.util.f;
import com.liulishuo.filedownloader.r;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.mimsgsdk.utils.GlobalData;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;
import com.tencent.connect.common.Constants;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.mipush.sdk.Logger;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.util.StorageUtils;

public class MiTalkiApp extends BaseApp {
    private static MiTalkiApp g;
    public boolean a = true;
    ActivityLifecycleCallbacks b = new ActivityLifecycleCallbacks() {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            if (activity instanceof MainActivity) {
                MiTalkiApp.this.l = true;
            }
            if (c.b() && !z.c(activity)) {
                if ((activity instanceof PermissionActivity) || (activity instanceof MainActivity) || (activity instanceof SplashActivity)) {
                    s.c("MiTalkiApp", "avoiding repetion");
                } else {
                    activity.startActivity(new Intent(activity, PermissionActivity.class));
                }
            }
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
            if (activity instanceof MainActivity) {
                MiTalkiApp.this.l = false;
            }
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }
    };
    private a h;
    private b i;
    private SQLiteDatabase j;
    private boolean k = true;
    /* access modifiers changed from: private */
    public boolean l;
    private boolean m;
    private boolean n;
    private StateUpdateEvent o;
    private IWXAPI p;
    private boolean q = false;
    private boolean r = false;
    /* access modifiers changed from: private */
    public IMService s;
    /* access modifiers changed from: private */
    public IMServiceConnector t = new IMServiceConnector() {
        public void onIMServiceConnected() {
            logger.d("detail#onIMServiceConnected", new Object[0]);
            MiTalkiApp.this.s = MiTalkiApp.this.t.getIMService();
            try {
                if (MiTalkiApp.this.s == null) {
                    logger.e("detail#imService is null", new Object[0]);
                } else {
                    IMLoginManager loginManager = MiTalkiApp.this.s.getLoginManager();
                    LoginSp loginSp = MiTalkiApp.this.s.getLoginSp();
                    if (!(loginManager == null || loginSp == null)) {
                        SpLoginIdentity loginIdentity = loginSp.getLoginIdentity();
                        if (loginIdentity != null) {
                            MiTalkiApp.this.a(loginIdentity);
                        }
                    }
                }
                MiTalkiApp.this.z();
            } catch (Exception e) {
                logger.w("loadIdentity failed", new Object[0]);
                MiTalkiApp.this.z();
            }
        }

        public void onServiceDisconnected() {
        }
    };

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
        b.a(context);
    }

    public void onCreate() {
        super.onCreate();
        g = this;
        com.squareup.a.a.a(this);
        o.a();
        k();
        registerActivityLifecycleCallbacks(this.b);
        s();
        t();
        u();
        v();
        w();
        x();
        o();
        try {
            a.a((Context) this);
            p();
        } catch (Exception e) {
            s.b("MiTalkiApp", "Intercom APP install failed, due to exception:", e);
        }
        if (VERSION.SDK_INT >= 24) {
            StrictMode.setVmPolicy(new Builder().build());
        }
        MapsInitializer.sdcardDir = v.d((Context) this);
        if (j() && f.a(this)) {
            StorageUtil.init(this, null);
            q();
            r();
            r.a((Context) this);
            this.t.connect(this);
        }
    }

    public static MiTalkiApp a() {
        return g;
    }

    private void o() {
        this.p = WXEntryActivity.a(this, "wxef025e7faa0241ac");
    }

    private void p() {
        LocalBroadcastManager.getInstance(this).registerReceiver(new AutoStarterReceiver(), new IntentFilter("com.ifengyu.intercom.INITIALIZE"));
        Intent intent = new Intent("com.ifengyu.intercom.INITIALIZE");
        intent.setPackage(getPackageName());
        sendBroadcast(intent);
    }

    private void q() {
        GlobalData.initialize(this, AppConstant.APP_ID);
    }

    private void r() {
        Intent intent = new Intent();
        intent.setClass(this, IMService.class);
        startService(intent);
    }

    private void s() {
        Configuration.getInstance().setOsmdroidBasePath(new File(StorageUtils.getStorage().getAbsolutePath() + "/" + "mitalki"));
        Configuration.getInstance().setOsmdroidTileCache(new File(StorageUtils.getStorage().getAbsolutePath() + "/" + "mitalki/map/cache"));
        Configuration.getInstance().getOsmdroidBasePath().mkdirs();
        Configuration.getInstance().getOsmdroidTileCache().mkdirs();
        Configuration.getInstance().setTileFileSystemCacheMaxBytes(314572800);
        Configuration.getInstance().setTileFileSystemCacheTrimBytes(262144000);
    }

    private void t() {
        File ownCacheDirectory = com.nostra13.universalimageloader.utils.StorageUtils.getOwnCacheDirectory(this, "mitalki/imgcache");
        ImageLoader.getInstance().init(new ImageLoaderConfiguration.Builder(getApplicationContext()).defaultDisplayImageOptions(new DisplayImageOptions.Builder().displayer(new FadeInBitmapDisplayer(0)).cacheInMemory(true).imageScaleType(ImageScaleType.EXACTLY).cacheOnDisk(true).build()).threadPriority(2).memoryCache(new WeakMemoryCache()).memoryCacheSize(2097152).memoryCacheExtraOptions(480, GLMapStaticValue.ANIMATION_FLUENT_TIME).diskCacheSize(31457280).diskCacheFileCount(100).diskCache(new UnlimitedDiskCache(ownCacheDirectory)).denyCacheImageMultipleSizesInMemory().diskCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.LIFO).build());
    }

    private void u() {
        MiStatInterface.initialize(a(), "2882303761517508819", "5811750860819", "default channel");
        if (w.ab()) {
            MiStatInterface.setUploadPolicy(4, 60000);
            MiStatInterface.enableExceptionCatcher(true);
            return;
        }
        MiStatInterface.setUploadPolicy(5, 60000);
        MiStatInterface.enableExceptionCatcher(false);
    }

    private void v() {
        this.j = new C0024a(this, "mitalki_db", null).getWritableDatabase();
        this.h = new a(this.j);
        this.i = this.h.newSession();
    }

    private void w() {
        com.ifengyu.intercom.a.b.a(new OkHttpClient.Builder().connectTimeout(FileTracerConfig.DEF_FLUSH_INTERVAL, TimeUnit.MILLISECONDS).readTimeout(FileTracerConfig.DEF_FLUSH_INTERVAL, TimeUnit.MILLISECONDS).build());
    }

    private void x() {
        if (y()) {
            MiPushClient.registerPush(this, "2882303761517508819", "5811750860819");
        }
        Logger.setLogger(this, new LoggerInterface() {
            public void setTag(String str) {
            }

            public void log(String str, Throwable th) {
                Log.d("MiTalkiApp", str, th);
            }

            public void log(String str) {
                Log.d("MiTalkiApp", str);
            }
        });
    }

    private boolean y() {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
        String packageName = getPackageName();
        int myPid = Process.myPid();
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid && packageName.equals(runningAppProcessInfo.processName)) {
                return true;
            }
        }
        return false;
    }

    public b b() {
        return this.i;
    }

    public boolean c() {
        return this.n;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public boolean d() {
        return this.m;
    }

    public void b(boolean z) {
        this.m = z;
    }

    public void c(boolean z) {
        this.k = z;
    }

    public boolean e() {
        return this.k;
    }

    public boolean f() {
        return this.l;
    }

    public StateUpdateEvent g() {
        return this.o;
    }

    public void a(StateUpdateEvent stateUpdateEvent) {
        this.o = stateUpdateEvent;
    }

    public IWXAPI h() {
        return this.p;
    }

    public boolean i() {
        return this.r;
    }

    public void d(boolean z) {
        this.r = z;
    }

    /* access modifiers changed from: private */
    public void z() {
    }

    /* access modifiers changed from: private */
    public void a(SpLoginIdentity spLoginIdentity) {
        this.s.getLoginManager().login(spLoginIdentity);
    }

    public boolean j() {
        return this.q;
    }

    public void e(boolean z) {
        this.q = z;
    }

    public void k() {
        try {
            String[] split = getPackageManager().getPackageInfo(getPackageName(), 0).versionName.split("\\.");
            if (split.length == 3 && split[0].equals("2") && split[1].equals(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ)) {
                e(true);
            }
        } catch (NameNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }
}
