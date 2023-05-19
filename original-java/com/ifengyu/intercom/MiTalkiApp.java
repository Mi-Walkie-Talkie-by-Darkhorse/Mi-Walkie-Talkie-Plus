package com.ifengyu.intercom;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.multidex.MultiDex;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.ifengyu.blelib.utils.FooUtils;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.p181h.BleLinkerManager;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p196c.ChNumberConstants;
import com.ifengyu.intercom.p189l.p190a.p196c.ChToneConstants;
import com.ifengyu.intercom.p209o.OkHttpUtils;
import com.ifengyu.intercom.p214p.ACache;
import com.ifengyu.intercom.p214p.ActivityListManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.FontChangeUtils;
import com.ifengyu.intercom.p214p.GlobalDialogUtil;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.SplashActivity;
import com.ifengyu.intercom.p216ui.login.LoginActivity;
import com.ifengyu.intercom.receiver.NetReceiver;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.p229b.RetrofitClient;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.C4973n;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.event.NewSessionInviteEvent;
import com.ifengyu.talk.event.NewSessionTimeoutEvent;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.meituan.android.walle.WalleChannelReader;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;
import com.qmuiteam.qmui.arch.QMUISwipeBackActivityManager;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.tencent.p256mm.opensdk.openapi.IWXAPI;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.mipush.sdk.Logger;
import com.xiaomi.mipush.sdk.MiPushClient;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class MiTalkiApp extends BaseApp {

    /* renamed from: d */
    private UserInfo f12085d;

    /* renamed from: e */
    private String f12086e;

    /* renamed from: g */
    private IWXAPI f12088g;

    /* renamed from: h */
    private Activity f12089h;

    /* renamed from: i */
    private Disposable f12090i;

    /* renamed from: l */
    NetReceiver f12093l;

    /* renamed from: f */
    private String f12087f = "default";

    /* renamed from: j */
    private boolean f12091j = false;

    /* renamed from: k */
    private final Application.ActivityLifecycleCallbacks f12092k = new C3139a();

    /* renamed from: com.ifengyu.intercom.MiTalkiApp$a */
    /* loaded from: classes2.dex */
    class C3139a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        private int f12094a;

        /* renamed from: b */
        private boolean f12095b;

        C3139a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
            MiTalkiApp.this.f12089h = activity;
            this.f12094a++;
            if (this.f12095b) {
                this.f12095b = false;
                MiTalkiApp.this.m14305E();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
            int i = this.f12094a - 1;
            this.f12094a = i;
            this.f12095b = i == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.MiTalkiApp$b */
    /* loaded from: classes2.dex */
    public class C3140b implements LoggerInterface {
        C3140b(MiTalkiApp miTalkiApp) {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str, Throwable th) {
            C4161y.m11053b("MiTalkiApp", str, th);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void setTag(String str) {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str) {
            C4161y.m11054a("MiTalkiApp", str);
        }
    }

    /* renamed from: com.ifengyu.intercom.MiTalkiApp$c */
    /* loaded from: classes2.dex */
    class C3141c extends DownloadListener2 {

        /* renamed from: a */
        final /* synthetic */ AdModel f12097a;

        C3141c(MiTalkiApp miTalkiApp, AdModel adModel) {
            this.f12097a = adModel;
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            C4161y.m11054a("MiTalkiApp", "taskEnd: " + endCause.toString());
            if (exc != null) {
                exc.printStackTrace();
            }
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                return;
            }
            String absolutePath = downloadTask.getFile().getAbsolutePath();
            AdModel adModel = this.f12097a;
            adModel.imagePath = absolutePath;
            adModel.isGoToDownload = false;
            adModel.md5 = MD5Util.m11041a(absolutePath);
            ACache.m11133b(new File(absolutePath).getParentFile()).m11128g("admodel", this.f12097a);
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public static /* synthetic */ void m14307C(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m14296h().m14294j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static /* synthetic */ void m14306D(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m14296h().m14294j();
    }

    /* renamed from: G */
    private void m14303G() {
        try {
            this.f12087f = WalleChannelReader.m8181b(getApplicationContext(), "default");
        } catch (Exception e) {
            C4161y.m11052c("MiTalkiApp", "get channel failed, " + e.getMessage());
        }
        UMConfigure.preInit(this, "5e74778cdbc2ec076bd61961", this.f12087f);
    }

    /* renamed from: I */
    private boolean m14301I() {
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

    /* renamed from: h */
    public static MiTalkiApp m14296h() {
        return (MiTalkiApp) BaseApp.f16369a;
    }

    /* renamed from: k */
    private void m14293k() {
        try {
            UserCache.init();
            m14290n();
            m14292l();
            m14288p();
            m14287q();
            Variables.m12427b(this);
            m14303G();
            m14286r();
            m14291m();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l */
    private void m14292l() {
        File file = new File(UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/imgcache");
        ImageLoader.getInstance().init(new ImageLoaderConfiguration.Builder(getApplicationContext()).defaultDisplayImageOptions(new DisplayImageOptions.Builder().displayer(new FadeInBitmapDisplayer(0)).cacheInMemory(true).imageScaleType(ImageScaleType.EXACTLY).cacheOnDisk(true).build()).threadPriority(2).memoryCache(new WeakMemoryCache()).memoryCacheSize(PKIFailureInfo.badSenderNonce).memoryCacheExtraOptions(480, GLMapStaticValue.ANIMATION_FLUENT_TIME).diskCacheSize(31457280).diskCacheFileCount(100).diskCache(new UnlimitedDiskCache(file)).denyCacheImageMultipleSizesInMemory().diskCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.LIFO).build());
    }

    /* renamed from: n */
    private void m14290n() {
        MapsInitializer.sdcardDir = MethodsUtils.m11289k(this);
    }

    /* renamed from: o */
    private void m14289o() {
        if (m14301I()) {
            MiPushClient.registerPush(this, "2882303761517508819", "5811750860819");
        }
        Logger.setLogger(this, new C3140b(this));
    }

    /* renamed from: p */
    private void m14288p() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpUtils.m11349f(builder.connectTimeout(10000L, timeUnit).readTimeout(10000L, timeUnit).build());
    }

    /* renamed from: q */
    private void m14287q() {
        QMUISwipeBackActivityManager.m7980d(this);
    }

    /* renamed from: r */
    private void m14286r() {
        this.f12093l = new NetReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        registerReceiver(this.f12093l, intentFilter);
    }

    /* renamed from: s */
    private void m14285s() {
        AppDatabase.m14274J(this, this.f12086e);
        TalkDatabase.m8503G(this, this.f12086e);
    }

    /* renamed from: t */
    private void m14284t() {
        if (MiTalkClientUtil.m11220b0()) {
            UMConfigure.init(this, "5e74778cdbc2ec076bd61961", this.f12087f, 1, "");
            MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
        }
    }

    /* renamed from: u */
    private boolean m14283u() {
        return (this.f12085d == null || TextUtils.isEmpty(this.f12086e)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m14279y(Disposable disposable) throws Exception {
        this.f12090i = disposable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m14309A(Long l) throws Exception {
        if (SlTalkClient.m8513r().m8530a().m8457d() == 3) {
            this.f12090i.dispose();
            this.f12090i = null;
            return;
        }
        SlTalkClient.m8513r().m8530a().m8452i(String.valueOf(this.f12085d.userId), this.f12085d.pwd, 0, 0);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: E */
    public void m14305E() {
        if (m14283u()) {
            Disposable disposable = this.f12090i;
            if (disposable != null) {
                disposable.dispose();
                this.f12090i = null;
            }
            Observable.interval(1L, 2L, TimeUnit.SECONDS).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.c
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MiTalkiApp.this.m14279y((Disposable) obj);
                }
            }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.a
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MiTalkiApp.this.m14309A((Long) obj);
                }
            }, C3151b.f12114a);
        }
    }

    /* renamed from: F */
    public void m14304F() {
        m14281w();
        m14294j();
    }

    /* renamed from: H */
    public void m14302H(boolean z) {
        this.f12091j = z;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.m22513l(this);
    }

    /* renamed from: e */
    public void m14299e() {
        if (!TextUtils.isEmpty(this.f12086e)) {
            MiPushClient.unsetAlias(getApplicationContext(), this.f12086e, null);
            MiPushClient.unsetUserAccount(getApplicationContext(), this.f12086e, null);
        }
        MobclickAgent.onProfileSignOff();
        MiTalkClientUtil.m11221b();
        MiTalkClientUtil.m11219c();
        UserCache.clear();
        this.f12085d = null;
        this.f12086e = null;
    }

    /* renamed from: f */
    public void m14298f(AdModel adModel) {
        if (adModel == null || TextUtils.isEmpty(adModel.imageUrl)) {
            return;
        }
        File m8666d = C4970j.m8666d(getApplicationContext(), "adcache");
        new DownloadTask.Builder(adModel.imageUrl, m8666d).setAutoCallbackToUIThread(true).setFilename(MD5Util.m11040b(adModel.imageUrl)).build().enqueue(new C3141c(this, adModel));
    }

    /* renamed from: g */
    public Activity m14297g() {
        return this.f12089h;
    }

    /* renamed from: i */
    public IWXAPI m14295i() {
        if (this.f12088g == null) {
            this.f12088g = WXEntryActivity.m8731a(this, "wxef025e7faa0241ac");
        }
        return this.f12088g;
    }

    /* renamed from: j */
    public void m14294j() {
        this.f12089h.startActivity(new Intent(this.f12089h, SplashActivity.class));
        ActivityListManager.m11091b();
    }

    /* renamed from: m */
    public void m14291m() {
        UserInfo userInfo = UserCache.getUserInfo();
        this.f12085d = userInfo;
        if (userInfo != null) {
            this.f12086e = String.valueOf(userInfo.userId);
        }
        if (m14283u()) {
            m14285s();
            m14289o();
            m14284t();
            SlTalkClient.m8513r().m8514q(this, AppData.m12436b().m12437a());
            m14305E();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ChToneConstants.m11821a();
        ChNumberConstants.m11822a();
    }

    @Override // com.ifengyu.library.base.BaseApp, android.app.Application
    public void onCreate() {
        super.onCreate();
        if (!FooUtils.method05()) {
            Process.killProcess(Process.myPid());
        }
        if (C4973n.m8635d(this)) {
            EventBus.m174c().m159r(this);
            FontChangeUtils.m11074a();
            registerActivityLifecycleCallbacks(this.f12092k);
            AppData.m12436b().m12434d();
            RetrofitClient.m8725e(AppData.m12436b().m12435c());
            m14293k();
            if (Build.VERSION.SDK_INT >= 24) {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
            }
            BleLinkerManager.m12425a(this);
            com.ifengyu.ble.p149a.Logger.m14385a(true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(SimpleEvent simpleEvent) {
        int event = simpleEvent.getEvent();
        if (event == 2) {
            Activity activity = this.f12089h;
            if ((activity instanceof SplashActivity) || (activity instanceof LoginActivity)) {
                return;
            }
            m14296h().m14281w();
            GlobalDialogUtil.m11067a().m11059i(C3156d.f12121a);
        } else if (event != 3) {
        } else {
            Activity activity2 = this.f12089h;
            if ((activity2 instanceof SplashActivity) || (activity2 instanceof LoginActivity)) {
                return;
            }
            m14296h().m14281w();
            GlobalDialogUtil.m11067a().m11060h(C3848e.f13697a);
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        unregisterReceiver(this.f12093l);
        super.onTerminate();
    }

    /* renamed from: v */
    public boolean m14282v() {
        return this.f12091j;
    }

    /* renamed from: w */
    public void m14281w() {
        m14299e();
        SlTalkClient.m8513r().m8530a().m8451j();
        BleCoreClient.m12373n().m12385b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(NewSessionInviteEvent newSessionInviteEvent) {
        GlobalDialogUtil.m11067a().m11058j();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(NewSessionTimeoutEvent newSessionTimeoutEvent) {
        GlobalDialogUtil.m11067a().m11066b();
    }
}
