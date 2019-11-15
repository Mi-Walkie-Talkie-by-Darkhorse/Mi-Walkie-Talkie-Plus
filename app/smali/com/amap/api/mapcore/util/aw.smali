.class public Lcom/amap/api/mapcore/util/aw;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static a:Lcom/amap/api/mapcore/util/aw;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/ie;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/if;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aw;->d:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/ie;->a(I)Lcom/amap/api/mapcore/util/ie;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(I)Lcom/amap/api/mapcore/util/aw;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/aw;->a(ZI)Lcom/amap/api/mapcore/util/aw;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore/util/aw;
    .locals 3

    const-class v1, Lcom/amap/api/mapcore/util/aw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/aw;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/aw;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ie;->a(I)Lcom/amap/api/mapcore/util/ie;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/aw;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/as;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/av;)V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/as;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/as;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore/util/av;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fn;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/amap/api/mapcore/util/as;

    move-object v0, p1

    check-cast v0, Lcom/amap/api/mapcore/util/bl;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lcom/amap/api/mapcore/util/as;-><init>(Lcom/amap/api/mapcore/util/bl;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/if;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ie;->a(Lcom/amap/api/mapcore/util/if;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/aw;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;

    invoke-static {}, Lcom/amap/api/mapcore/util/ie;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ie;

    invoke-static {}, Lcom/amap/api/mapcore/util/aw;->c()V

    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/av;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/as;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/as;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aw;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
