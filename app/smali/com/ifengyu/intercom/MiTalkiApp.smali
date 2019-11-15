.class public Lcom/ifengyu/intercom/MiTalkiApp;
.super Lcom/ifengyu/library/base/BaseApp;
.source "MiTalkiApp.java"


# static fields
.field private static g:Lcom/ifengyu/intercom/MiTalkiApp;


# instance fields
.field public a:Z

.field b:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private h:Lcom/ifengyu/intercom/greendao/dao/a;

.field private i:Lcom/ifengyu/intercom/greendao/dao/b;

.field private j:Landroid/database/sqlite/SQLiteDatabase;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

.field private p:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private q:Z

.field private r:Z

.field private s:Lcom/ifengyu/im/imservice/service/IMService;

.field private t:Lcom/ifengyu/im/imservice/support/IMServiceConnector;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/base/BaseApp;-><init>()V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->r:Z

    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$2;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$3;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->t:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/im/imservice/service/IMService;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->s:Lcom/ifengyu/im/imservice/service/IMService;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/support/IMServiceConnector;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->t:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    return-object v0
.end method

.method public static a()Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method private a(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->s:Lcom/ifengyu/im/imservice/service/IMService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/service/IMService;->getLoginManager()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->login(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->s:Lcom/ifengyu/im/imservice/service/IMService;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->z()V

    return-void
.end method

.method private o()V
    .locals 1

    const-string v0, "wxef025e7faa0241ac"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void
.end method

.method private p()V
    .locals 4

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/service/AutoStarterReceiver;

    invoke-direct {v1}, Lcom/ifengyu/intercom/service/AutoStarterReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ifengyu.intercom.INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.INITIALIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private q()V
    .locals 1

    const v0, 0x5f5e10d

    invoke-static {p0, v0}, Lcom/mi/mimsgsdk/utils/GlobalData;->initialize(Landroid/content/Context;I)V

    return-void
.end method

.method private r()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/ifengyu/im/imservice/service/IMService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private s()V
    .locals 4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mitalki"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mitalki/map/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    const-wide/32 v2, 0x12c00000

    invoke-interface {v0, v2, v3}, Lorg/osmdroid/config/IConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    const-wide/32 v2, 0xfa00000

    invoke-interface {v0, v2, v3}, Lorg/osmdroid/config/IConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    return-void
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "mitalki/imgcache"

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->getApplicationContext()Landroid/content/Context;

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

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method private u()V
    .locals 6

    const-wide/32 v4, 0xea60

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-string v1, "2882303761517508819"

    const-string v2, "5811750860819"

    const-string v3, "default channel"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/a$a;

    const-string v1, "mitalki_db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/greendao/dao/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/a$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Lcom/ifengyu/intercom/greendao/dao/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Lcom/ifengyu/intercom/greendao/dao/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/a;->a()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lcom/ifengyu/intercom/greendao/dao/b;

    return-void
.end method

.method private w()V
    .locals 4

    const-wide/16 v2, 0x2710

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/a/b;

    return-void
.end method

.method private x()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2882303761517508819"

    const-string v1, "5811750860819"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$1;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    return-void
.end method

.method private y()Z
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->n:Z

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/library/base/BaseApp;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b()Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->m:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->n:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->r:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->m:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Z

    return v0
.end method

.method public g()Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    return-object v0
.end method

.method public h()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->r:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Z

    return v0
.end method

.method public k()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/ifengyu/library/base/BaseApp;->onCreate()V

    sput-object p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {p0}, Lcom/squareup/a/a;->a(Landroid/app/Application;)Lcom/squareup/a/b;

    invoke-static {}, Lcom/ifengyu/intercom/b/o;->a()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->s()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->t()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->u()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->v()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->x()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->o()V

    :try_start_0
    invoke-static {p0}, Lcom/ifengyu/intercom/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ifengyu/library/util/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ifengyu/im/imservice/audio/StorageUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->q()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->r()V

    invoke-static {p0}, Lcom/liulishuo/filedownloader/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->t:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->connect(Landroid/content/Context;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiTalkiApp"

    const-string v2, "Intercom APP install failed, due to exception:"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
