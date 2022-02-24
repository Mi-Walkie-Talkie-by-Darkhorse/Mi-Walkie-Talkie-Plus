package com.ifengyu.intercom;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.ifengyu.blelib.utils.FooUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.greendao.dao.a;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.j;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.s;
import com.ifengyu.intercom.i.w;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.utils.h;
import com.ifengyu.intercom.service.AutoStarterReceiver;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.SplashActivity;
import com.ifengyu.intercom.ui.UserAuthPermissionActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.ifengyu.library.base.BaseApp;
import com.meituan.android.walle.f;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.mipush.sdk.Logger;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import no.nordicsemi.android.ble.b2;
import no.nordicsemi.android.ble.u2.d;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.json.JSONException;
import org.json.JSONObject;
import org.osmdroid.config.Configuration;
import org.osmdroid.config.IConfigurationProvider;

/* loaded from: classes.dex */
public class MiTalkiApp extends BaseApp {
    private static MiTalkiApp s;
    private com.ifengyu.intercom.greendao.dao.a d;
    private com.ifengyu.intercom.greendao.dao.b e;
    private SQLiteDatabase f;
    private boolean i;
    private boolean j;
    private boolean k;
    private StateUpdateEvent l;
    private IWXAPI m;
    private String o;
    private Activity p;
    private boolean g = true;
    public boolean h = true;
    private boolean n = false;
    private String q = "default";
    Application.ActivityLifecycleCallbacks r = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements LoggerInterface {
        a(MiTalkiApp miTalkiApp) {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str, Throwable th) {
            Log.d("MiTalkiApp", str, th);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void setTag(String str) {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str) {
            Log.d("MiTalkiApp", str);
        }
    }

    /* loaded from: classes.dex */
    class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            MiTalkiApp.this.p = activity;
            if (activity instanceof MainActivity) {
                MiTalkiApp.this.i = true;
            }
            if (!(activity instanceof SplashActivity) && !(activity instanceof WebViewActivity)) {
                MiTalkiApp.this.d();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity instanceof MainActivity) {
                MiTalkiApp.this.i = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends l {
        c() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("errno") == 3) {
                    w.b().a(new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.a
                        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                        public final void a(b bVar, int i2) {
                            MiTalkiApp.c.this.a(bVar, i2);
                        }
                    });
                } else if ("success".equals(jSONObject.getString(SocialConstants.PARAM_SEND_MSG))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    String string = jSONObject2.getString("avatar");
                    String string2 = jSONObject2.getString("gender");
                    SharedPreferences.Editor edit = d0.R().edit();
                    if (!TextUtils.isEmpty(string)) {
                        edit.putString("avatar", string);
                    }
                    if (!TextUtils.isEmpty(string2)) {
                        edit.putString("gender", string2);
                    }
                    edit.apply();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
            MiTalkiApp.this.p();
        }
    }

    private boolean A() {
        return !com.ifengyu.library.a.l.b(this.o);
    }

    private void B() {
        try {
            this.q = f.a(getApplicationContext(), "default");
        } catch (Exception e) {
            z.b("MiTalkiApp", "get channel failed, " + e.getMessage());
        }
        UMConfigure.preInit(this, "5e74778cdbc2ec076bd61961", this.q);
    }

    private boolean C() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
        String packageName = getPackageName();
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid && packageName.equals(runningAppProcessInfo.processName)) {
                return true;
            }
        }
        return false;
    }

    private void D() {
        String p = d0.p();
        int g = d0.g();
        BluetoothDevice a2 = com.ifengyu.library.a.b.a(p);
        if (g == 36611 && a2 != null && d0.a(36611)) {
            b2 d = com.ifengyu.intercom.lite.e.f.a(this).d(a2);
            d.a(3, 200);
            d.a(true);
            d.a((d) b.f5219a);
            d.a();
        }
    }

    private void E() {
        a.f.a.a.a(this).a(new AutoStarterReceiver(), new IntentFilter("com.ifengyu.intercom.INITIALIZE"));
        Intent intent = new Intent("com.ifengyu.intercom.INITIALIZE");
        intent.setPackage(getPackageName());
        sendBroadcast(intent);
    }

    public static MiTalkiApp b() {
        return s;
    }

    private void q() {
        try {
            com.ifengyu.library.account.a.d();
            t();
            s();
            r();
            v();
            z();
            w();
            d.a(this);
            B();
            j();
        } catch (Exception e) {
            z.a("MiTalkiApp", "Intercom APP install failed, due to exception:", e);
        }
    }

    private void r() {
        SQLiteDatabase writableDatabase = new a.C0151a(this, "mitalki_db", null).getWritableDatabase();
        this.f = writableDatabase;
        com.ifengyu.intercom.greendao.dao.a aVar = new com.ifengyu.intercom.greendao.dao.a(writableDatabase);
        this.d = aVar;
        this.e = aVar.newSession();
    }

    private void s() {
        File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/imgcache");
        ImageLoader.getInstance().init(new ImageLoaderConfiguration.Builder(getApplicationContext()).defaultDisplayImageOptions(new DisplayImageOptions.Builder().displayer(new FadeInBitmapDisplayer(0)).cacheInMemory(true).imageScaleType(ImageScaleType.EXACTLY).cacheOnDisk(true).build()).threadPriority(2).memoryCache(new WeakMemoryCache()).memoryCacheSize(PKIFailureInfo.badSenderNonce).memoryCacheExtraOptions(480, GLMapStaticValue.ANIMATION_FLUENT_TIME).diskCacheSize(31457280).diskCacheFileCount(100).diskCache(new UnlimitedDiskCache(file)).denyCacheImageMultipleSizesInMemory().diskCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.LIFO).build());
    }

    private void t() {
        IConfigurationProvider instance = Configuration.getInstance();
        instance.setOsmdroidBasePath(new File(getExternalFilesDir(null).getAbsolutePath() + "/map"));
        IConfigurationProvider instance2 = Configuration.getInstance();
        instance2.setOsmdroidTileCache(new File(getExternalFilesDir(null).getAbsolutePath() + "/map/cache"));
        Configuration.getInstance().getOsmdroidBasePath().mkdirs();
        Configuration.getInstance().getOsmdroidTileCache().mkdirs();
        Configuration.getInstance().setTileFileSystemCacheMaxBytes(314572800L);
        Configuration.getInstance().setTileFileSystemCacheTrimBytes(262144000L);
        MapsInitializer.sdcardDir = c0.a(this);
    }

    private void u() {
        if (C()) {
            MiPushClient.registerPush(this, "2882303761517508819", "5811750860819");
        }
        Logger.setLogger(this, new a(this));
        MiPushClient.setAlias(getApplicationContext(), this.o, null);
        MiPushClient.setUserAccount(getApplicationContext(), this.o, null);
    }

    private void v() {
        com.ifengyu.intercom.g.b.a(new OkHttpClient.Builder().connectTimeout(10000L, TimeUnit.MILLISECONDS).readTimeout(10000L, TimeUnit.MILLISECONDS).build());
    }

    private void w() {
        com.qmuiteam.qmui.arch.f.a(this);
    }

    private void x() {
        LiteDatabase.b(this, this.o);
        com.ifengyu.intercom.node.q.d.a(this);
        h.a();
    }

    private void y() {
        if (d0.b0()) {
            UMConfigure.init(this, "5e74778cdbc2ec076bd61961", this.q, 1, "");
            MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
        }
    }

    private void z() {
        this.m = WXEntryActivity.a(this, "wxef025e7faa0241ac");
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        androidx.multidex.a.d(this);
        e.a(context);
    }

    public void c(boolean z) {
        this.j = z;
    }

    public void d(boolean z) {
        this.k = z;
    }

    public void e() {
        com.ifengyu.intercom.node.q.d a2;
        if (!TextUtils.isEmpty(d0.p()) && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
            a2.c(d0.p());
        }
        d0.f((String) null);
        d0.e((String) null);
        String N = d0.N();
        if (!TextUtils.isEmpty(N)) {
            MiPushClient.unsetAlias(getApplicationContext(), N, null);
            MiPushClient.unsetUserAccount(getApplicationContext(), N, null);
        }
        MobclickAgent.onProfileSignOff();
        d0.b();
        d0.c();
        com.ifengyu.library.account.a.a();
        com.ifengyu.intercom.lite.e.f.a(getApplicationContext()).c().a();
    }

    public Activity f() {
        return this.p;
    }

    public com.ifengyu.intercom.greendao.dao.b g() {
        return this.e;
    }

    public StateUpdateEvent h() {
        return this.l;
    }

    public IWXAPI i() {
        return this.m;
    }

    public void j() {
        this.o = d0.N();
        if (A()) {
            x();
            u();
            y();
            E();
            D();
        }
    }

    public boolean k() {
        return this.n;
    }

    public boolean l() {
        return this.g;
    }

    public boolean m() {
        return this.i;
    }

    public boolean n() {
        return this.j;
    }

    public boolean o() {
        return this.k;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.ifengyu.intercom.lite.b.a.a();
    }

    @Override // com.ifengyu.library.base.BaseApp, android.app.Application
    public void onCreate() {
        super.onCreate();
        s = this;
        if (!FooUtils.method05()) {
            Process.killProcess(Process.myPid());
        }
        if (!b.c.a.a.a(this) && com.ifengyu.library.a.h.c(this)) {
            s.a();
            registerActivityLifecycleCallbacks(this.r);
            q();
            if (Build.VERSION.SDK_INT >= 24) {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
            }
        }
    }

    public void p() {
        e();
        this.p.startActivity(new Intent(this.p, UserAuthPermissionActivity.class));
        j.a();
    }

    public void b(boolean z) {
        this.g = z;
    }

    protected void d() {
        int i = d0.R().getInt("user_last_login_time", 0);
        if (i == 0) {
            i = (int) (System.currentTimeMillis() / 1000);
            d0.R().edit().putInt("user_last_login_time", i).apply();
        }
        int i2 = d0.R().getInt("user_expires_in", 0);
        if (i2 == 0) {
            i2 = 7776000;
            d0.R().edit().putInt("user_expires_in", 7776000).apply();
        }
        if (((int) (System.currentTimeMillis() / 1000)) - i >= i2) {
            w.b().b(new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.c
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i3) {
                    MiTalkiApp.this.a(bVar, i3);
                }
            });
        } else {
            com.ifengyu.intercom.g.a.c(d0.R().getString(AuthorizeActivityBase.KEY_USERID, ""), new c());
        }
    }

    public void a(StateUpdateEvent stateUpdateEvent) {
        this.l = stateUpdateEvent;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        p();
    }
}
