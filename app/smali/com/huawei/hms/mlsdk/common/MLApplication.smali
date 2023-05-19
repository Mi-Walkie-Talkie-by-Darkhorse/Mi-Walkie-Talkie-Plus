.class public Lcom/huawei/hms/mlsdk/common/MLApplication;
.super Ljava/lang/Object;
.source "MLApplication.java"


# static fields
.field public static final DEFAULT_APP_NAME:Ljava/lang/String; = "_DEFAULT_"

.field static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/mlsdk/common/MLApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "MLApplication"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private final appContext:Landroid/content/Context;

.field private final appName:Ljava/lang/String;

.field private final appSetting:Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

.field private isAcessTokenSetByCP:Z

.field private setByCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->setByCP:Z

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->isAcessTokenSetByCP:Z

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appSetting:Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    return-void
.end method

.method private static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/content/ContextWrapper;

    .line 5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllAppNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    .line 7
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/mlsdk/common/MLApplication;

    .line 8
    invoke-virtual {v3}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/mlsdk/common/MLApplication;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/huawei/hms/mlsdk/common/MLApplication;
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    const-string v2, "_DEFAULT_"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/mlsdk/common/MLApplication;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lb/b/a/a;->b()Lb/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->initialize(Landroid/content/Context;)Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please call MLApplication.initialize(Context) to initialize application first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplication;
    .locals 5

    .line 7
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/mlsdk/common/MLApplication;

    if-eqz p0, :cond_0

    .line 9
    monitor-exit v0

    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAllAppNames()Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available app names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "application doesn\'t exist. current available application names:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 14
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getUniqueKey(Ljava/lang/String;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 6
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/huawei/hms/mlsdk/common/MLApplication;
    .locals 3

    const-string v0, "MLApplication"

    const-string v1, "initialize one para"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->makeSureAGConnectInstanceInitialed(Landroid/content/Context;)V

    .line 4
    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    const-string v2, "_DEFAULT_"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getInstance()Lcom/huawei/hms/mlsdk/common/MLApplication;

    .line 6
    :cond_0
    new-instance v1, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;

    invoke-direct {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->create()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    .line 7
    invoke-static {p0}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->fromResource(Landroid/content/Context;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->initialize(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object p0

    .line 9
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Lcom/huawei/hms/mlsdk/common/MLApplication;
    .locals 2

    const-string v0, "MLApplication"

    const-string v1, "initialize two para"

    .line 11
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_DEFAULT_"

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->initialize(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplication;
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    :goto_0
    sget-object v1, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->makeSureAGConnectInstanceInitialed(Landroid/content/Context;)V

    if-nez p1, :cond_1

    .line 17
    new-instance p1, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;

    invoke-direct {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->create()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    .line 18
    invoke-static {p0}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->fromResource(Landroid/content/Context;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object p1

    .line 19
    :cond_1
    new-instance p0, Lcom/huawei/hms/mlsdk/common/MLApplication;

    invoke-direct {p0, v0, p2, p1}, Lcom/huawei/hms/mlsdk/common/MLApplication;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)V

    .line 20
    sget-object p1, Lcom/huawei/hms/mlsdk/common/MLApplication;->INSTANCES:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lcom/huawei/hms/ml/common/utils/ActivityMgr;->INST:Lcom/huawei/hms/ml/common/utils/ActivityMgr;

    invoke-virtual {p1}, Lcom/huawei/hms/ml/common/utils/ActivityMgr;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_2

    instance-of p2, v0, Landroid/app/Application;

    if-eqz p2, :cond_2

    .line 22
    check-cast v0, Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/ml/common/utils/ActivityMgr;->init(Landroid/app/Application;)V

    .line 23
    :cond_2
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static makeSureAGConnectInstanceInitialed(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lb/b/a/a;->b()Lb/b/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lb/b/a/a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static readManifest(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "MLApplication"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "readManifest Exception"

    .line 4
    invoke-static {v0, p0}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Resources NotFoundException"

    .line 5
    invoke-static {v0, p0}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "PackageManager NameNotFoundException"

    .line 6
    invoke-static {v0, p0}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 3

    const-string v0, "MLApplication"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get ky flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->setByCP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getInstance()Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->isSetByCP()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->apiKey:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "please set your app apiKey"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appSetting:Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    return-object v0
.end method

.method public getAuthorizationToken()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->isAcessTokenSetByCP:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getApiKey()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->accessToken:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "access token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getUniqueKey(Ljava/lang/String;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_DEFAULT_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSetByCP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->setByCP:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MLApplication"

    const-string v1, "set a tkn"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->accessToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->isAcessTokenSetByCP:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MLApplication"

    const-string v1, "set a ky"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/mlsdk/common/MLApplication;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->apiKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->setByCP:Z

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getInstance()Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->setApiKey(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getInstance()Lcom/huawei/hms/mlsdk/common/MLApplication;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->setApiKeyByCP(Z)V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setApiKeyByCP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->setByCP:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/mlsdk/common/MLApplication;->readManifest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getMLSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.huawei.hms.client.service.name:ml-computer-vision"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLApplication;->getAppSetting()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->getAcceptHa()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "openHa"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    new-instance v1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;

    iget-object v2, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;-><init>(Landroid/content/Context;Z)V

    .line 13
    invoke-virtual {v1}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "MLApplication"

    const-string v2, "APP setting is null."

    .line 15
    invoke-static {v1, v2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplication;->appSetting:Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
