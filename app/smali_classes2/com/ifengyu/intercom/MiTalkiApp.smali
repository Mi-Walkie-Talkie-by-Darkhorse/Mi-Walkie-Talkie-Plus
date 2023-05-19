.class public Lcom/ifengyu/intercom/MiTalkiApp;
.super Lcom/ifengyu/library/base/BaseApp;
.source "MiTalkiApp.java"


# instance fields
.field private d:Lcom/ifengyu/library/account/UserInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private h:Landroid/app/Activity;

.field private i:Lio/reactivex/disposables/Disposable;

.field private j:Z

.field private final k:Landroid/app/Application$ActivityLifecycleCallbacks;

.field l:Lcom/ifengyu/intercom/receiver/NetReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/base/BaseApp;-><init>()V

    const-string v0, "default"

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Z

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$a;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic B(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic C(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()V

    return-void
.end method

.method static synthetic D(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/meituan/android/walle/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get channel failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiTalkiApp"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->f:Ljava/lang/String;

    const-string v1, "5e74778cdbc2ec076bd61961"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private I()Z
    .locals 5

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/MiTalkiApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    return-object p1
.end method

.method public static h()Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/base/BaseApp;->a:Lcom/ifengyu/library/base/BaseApp;

    check-cast v0, Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method private k()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->init()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->n()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->l()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->q()V

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/g;->b(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->G()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->r()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/imgcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x320

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/high16 v2, 0x1e00000

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/b0;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2882303761517508819"

    const-string v1, "5811750860819"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$b;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    .line 4
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/o/a;->f(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/o/a;

    return-void
.end method

.method private q()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/f;->d(Landroid/app/Application;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/receiver/NetReceiver;

    invoke-direct {v0}, Lcom/ifengyu/intercom/receiver/NetReceiver;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Lcom/ifengyu/intercom/receiver/NetReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Lcom/ifengyu/intercom/receiver/NetReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/database/AppDatabase;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/talk/database/TalkDatabase;->G(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->f:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "5e74778cdbc2ec076bd61961"

    const-string v3, ""

    invoke-static {p0, v2, v0, v1, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/library/account/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic x(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic z(Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/f/a0;->d()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/library/account/UserInfo;

    iget v0, v0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/library/account/UserInfo;

    iget-object v1, v1, Lcom/ifengyu/library/account/UserInfo;->pwd:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/ifengyu/talk/f/a0;->i(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic A(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->z(Ljava/lang/Long;)V

    return-void
.end method

.method public E()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lio/reactivex/disposables/Disposable;

    :cond_0
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x2

    .line 5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/c;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/a;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    sget-object v2, Lcom/ifengyu/intercom/b;->a:Lcom/ifengyu/intercom/b;

    .line 9
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()V

    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Z

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/multidex/a;->l(Landroid/content/Context;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignOff()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->c()V

    .line 7
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->clear()V

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/library/account/UserInfo;

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adcache"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/AdModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ifengyu/intercom/p/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    iget-object v3, p1, Lcom/ifengyu/intercom/bean/AdModel;->imageUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v2, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFilename(Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/MiTalkiApp$c;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/MiTalkiApp$c;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/intercom/bean/AdModel;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    return-object v0
.end method

.method public i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    const-string v0, "wxef025e7faa0241ac"

    .line 2
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    const-class v3, Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/n;->b()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/library/account/UserInfo;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->s()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->o()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->t()V

    .line 7
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/ifengyu/talk/d;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->E()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/c/b;->a()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/c/a;->a()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/library/base/BaseApp;->onCreate()V

    .line 2
    invoke-static {}, Lcom/ifengyu/blelib/utils/FooUtils;->method05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/library/utils/n;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/t;->a()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/f;->d()V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/b/b;->e(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->k()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 12
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 13
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/h/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Lcom/ifengyu/ble/a/a;->a(Z)V

    :cond_2
    return-void
.end method

.method public onEvent(Lcom/ifengyu/library/event/SimpleEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/library/event/SimpleEvent;->getEvent()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/SplashActivity;

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/ifengyu/intercom/ui/login/LoginActivity;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/v;->a()Lcom/ifengyu/intercom/p/v;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/e;->a:Lcom/ifengyu/intercom/e;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/p/v;->h(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Landroid/app/Activity;

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/SplashActivity;

    if-nez v0, :cond_5

    instance-of p1, p1, Lcom/ifengyu/intercom/ui/login/LoginActivity;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/v;->a()Lcom/ifengyu/intercom/p/v;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/d;->a:Lcom/ifengyu/intercom/d;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/p/v;->i(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onEvent(Lcom/ifengyu/talk/event/NewSessionInviteEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/v;->a()Lcom/ifengyu/intercom/p/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/v;->j()V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/talk/event/NewSessionTimeoutEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/v;->a()Lcom/ifengyu/intercom/p/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/v;->b()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Lcom/ifengyu/intercom/receiver/NetReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Z

    return v0
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/a0;->j()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/t0;->b()V

    return-void
.end method

.method public synthetic y(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->x(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
