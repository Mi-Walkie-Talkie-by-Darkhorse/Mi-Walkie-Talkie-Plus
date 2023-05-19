.class public final Lcom/huawei/hms/scankit/p/pa;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/pa;


# instance fields
.field public b:Landroid/content/Context;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/pa;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/pa;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/pa;->a:Lcom/huawei/hms/scankit/p/pa;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/pa;->b()V

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/pa;->a:Lcom/huawei/hms/scankit/p/pa;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HiAnalyticsEventManager"

    const-string v1, "Exception occured when transferring bundle to json"

    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/p/T;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/pa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/pa;->a:Lcom/huawei/hms/scankit/p/pa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/pa;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/pa;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/pa;->a:Lcom/huawei/hms/scankit/p/pa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/pa;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pa;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pa;->b:Landroid/content/Context;

    .line 1
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/huawei/hms/scankit/p/d;->a(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/huawei/hms/scankit/p/pa;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p4

    .line 5
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
