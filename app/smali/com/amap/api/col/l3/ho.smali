.class abstract Lcom/amap/api/col/l3/ho;
.super Ljava/lang/ClassLoader;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected c:Ldalvik/system/DexFile;

.field volatile d:Z

.field protected e:Lcom/amap/api/col/l3/gh;

.field protected f:Ljava/lang/String;

.field protected volatile g:Z

.field protected volatile h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ho;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ho;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ho;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ho;->h:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/ho;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/ho;->e:Lcom/amap/api/col/l3/gh;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ho;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ho;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/ho;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ho;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/ho;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    const-string v1, "BaseLoader"

    const-string v2, "releaseDexFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
