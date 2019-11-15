.class public final Lcom/amap/api/mapcore/util/iq;
.super Ljava/lang/Object;
.source "MapLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/iq$a;,
        Lcom/amap/api/mapcore/util/iq$b;
    }
.end annotation


# static fields
.field private static k:I

.field private static l:Z


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/mapcore/util/il;

.field c:Lcom/amap/api/mapcore/util/ir;

.field d:Lcom/amap/api/mapcore/util/iq$b;

.field e:Landroid/os/Handler;

.field f:Landroid/os/Handler;

.field g:Z

.field h:Z

.field i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field j:Ljava/lang/Object;

.field private m:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    sput v0, Lcom/amap/api/mapcore/util/iq;->k:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/iq;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->f:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/iq;->h:Z

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->j:Ljava/lang/Object;

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/iq;->f:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->e()V

    new-instance v0, Lcom/amap/api/mapcore/util/iq$b;

    const-string v1, "locServiceAction"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/iq$b;-><init>(Lcom/amap/api/mapcore/util/iq;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iq$b;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq$b;->start()V

    new-instance v0, Lcom/amap/api/mapcore/util/iq$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/iq$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/iq$a;-><init>(Lcom/amap/api/mapcore/util/iq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/amap/api/mapcore/util/iq;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lon"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sget v1, Lcom/amap/api/mapcore/util/iq;->k:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "recordOfflineLocLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/iq;->h:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/il;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/il;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    new-instance v0, Lcom/amap/api/mapcore/util/ir;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ir;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/iq;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    const/16 v4, 0x1f4

    const/16 v3, 0x1e

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    const-string v1, "maploc"

    const-string v2, "ue"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/mapcore/util/iq;->l:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    const-string v1, "maploc"

    const-string v2, "opn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore/util/iq;->k:I

    if-le v0, v4, :cond_0

    const/16 v0, 0x1f4

    sput v0, Lcom/amap/api/mapcore/util/iq;->k:I

    :cond_0
    sget v0, Lcom/amap/api/mapcore/util/iq;->k:I

    if-ge v0, v3, :cond_1

    const/16 v0, 0x1e

    sput v0, Lcom/amap/api/mapcore/util/iq;->k:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "getSPConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jd;->b()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/hz;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/mapcore/util/hz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ia;->a(Lcom/amap/api/mapcore/util/hz;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->m:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LocationService"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->e()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/il;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "getLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    :cond_1
    return-void
.end method

.method final b()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/il;->b()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/il;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/il;->d()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->f:Landroid/os/Handler;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iq;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/iq;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iq;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Device_Sensors:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ir;->a()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "doGetLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/iq;->g:Z

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->i()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->b:Lcom/amap/api/mapcore/util/il;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/il;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iq;->c()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->h()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->c:Lcom/amap/api/mapcore/util/ir;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ir;->b()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iq;->g()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq$b;->quit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq;->d:Lcom/amap/api/mapcore/util/iq$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq$b;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
