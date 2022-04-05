.class public Lcom/ifengyu/intercom/MiTalkiApp;
.super Lcom/ifengyu/library/base/BaseApp;


# static fields
.field private static s:Lcom/ifengyu/intercom/MiTalkiApp;


# instance fields
.field private d:Lcom/ifengyu/intercom/greendao/dao/a;

.field private e:Lcom/ifengyu/intercom/greendao/dao/b;

.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Z

.field public h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

.field private m:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/app/Activity;

.field private q:Ljava/lang/String;

.field r:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/base/BaseApp;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->n:Z

    const-string v0, "default"

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$b;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method private A()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private B()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/meituan/android/walle/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Ljava/lang/String;

    const-string v1, "5e74778cdbc2ec076bd61961"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private C()Z
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

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

.method private D()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v1

    invoke-static {v0}, Lcom/ifengyu/library/a/b;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const v2, 0x8f03

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/u1;->d(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/b2;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/b2;->a(II)Lno/nordicsemi/android/ble/b2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/b2;->a(Z)Lno/nordicsemi/android/ble/b2;

    sget-object v1, Lcom/ifengyu/intercom/b;->a:Lcom/ifengyu/intercom/b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/b2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/b2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->a()V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 4

    invoke-static {p0}, La/f/a/a;->a(Landroid/content/Context;)La/f/a/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/service/AutoStarterReceiver;

    invoke-direct {v1}, Lcom/ifengyu/intercom/service/AutoStarterReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ifengyu.intercom.INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, La/f/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reconnect failed, status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiTalkiApp"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Z

    return p1
.end method

.method public static b()Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/MiTalkiApp;->s:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method private q()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ifengyu/library/account/a;->d()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->t()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->s()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->r()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->v()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->z()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    invoke-static {p0}, Lcom/ifengyu/intercom/d;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->B()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiTalkiApp"

    const-string v2, "Intercom APP install failed, due to exception:"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private r()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/a$a;

    const-string v1, "mitalki_db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/greendao/dao/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->f:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lcom/ifengyu/intercom/greendao/dao/a;

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->d:Lcom/ifengyu/intercom/greendao/dao/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/a;->newSession()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Lcom/ifengyu/intercom/greendao/dao/b;

    return-void
.end method

.method private s()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

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

.method private t()V
    .locals 5

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/map"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/map/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-wide/32 v1, 0x12c00000

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    const-wide/32 v1, 0xfa00000

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    return-void
.end method

.method private u()V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2882303761517508819"

    const-string v1, "5811750860819"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/MiTalkiApp$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/MiTalkiApp$a;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private v()V
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/g/b;->a(Lokhttp3/OkHttpClient;)Lcom/ifengyu/intercom/g/b;

    return-void
.end method

.method private w()V
    .locals 0

    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/f;->a(Landroid/app/Application;)V

    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ifengyu/intercom/node/q/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/h;->a()V

    return-void
.end method

.method private y()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->q:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "5e74778cdbc2ec076bd61961"

    const-string v3, ""

    invoke-static {p0, v2, v0, v1, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    const-string v0, "wxef025e7faa0241ac"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->m:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->n:Z

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/multidex/a;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Z

    return-void
.end method

.method protected d()V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "user_last_login_time"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    long-to-int v0, v5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "user_expires_in"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x76a700

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    long-to-int v2, v5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/w;->b()Lcom/ifengyu/intercom/i/w;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/c;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w;->b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/MiTalkiApp$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/MiTalkiApp$c;-><init>(Lcom/ifengyu/intercom/MiTalkiApp;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/g/a;->c(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Z

    return-void
.end method

.method public e()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignOff()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->c()V

    invoke-static {}, Lcom/ifengyu/library/account/a;->a()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->a()V

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Landroid/app/Activity;

    return-object v0
.end method

.method public g()Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->e:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object v0
.end method

.method public h()Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->l:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    return-object v0
.end method

.method public i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->m:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->x()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->u()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->y()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->E()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->D()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->n:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->g:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->i:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->j:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->k:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/b/a;->a()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/library/base/BaseApp;->onCreate()V

    sput-object p0, Lcom/ifengyu/intercom/MiTalkiApp;->s:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {}, Lcom/ifengyu/blelib/utils/FooUtils;->method05()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    invoke-static {p0}, Lb/c/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/ifengyu/library/a/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/s;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->q()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/MiTalkiApp;->p:Landroid/app/Activity;

    const-class v3, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/j;->a()V

    return-void
.end method
