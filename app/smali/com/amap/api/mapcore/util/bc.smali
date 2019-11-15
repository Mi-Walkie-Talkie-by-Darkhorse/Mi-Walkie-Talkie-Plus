.class public Lcom/amap/api/mapcore/util/bc;
.super Ljava/lang/Object;
.source "OfflineDBOperation.java"


# static fields
.field private static volatile a:Lcom/amap/api/mapcore/util/bc;

.field private static b:Lcom/amap/api/mapcore/util/gl;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bc;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/bc;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/gl;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/bc;
    .locals 2

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/bc;

    if-nez v0, :cond_1

    const-class v1, Lcom/amap/api/mapcore/util/bc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/bc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/bc;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/bc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/bc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->a:Lcom/amap/api/mapcore/util/bc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/az;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/amap/api/mapcore/util/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v2, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v2, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    new-instance v5, Lcom/amap/api/mapcore/util/az;

    invoke-direct {v5, p1, v4}, Lcom/amap/api/mapcore/util/az;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/gl;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/gl;

    invoke-static {}, Lcom/amap/api/mapcore/util/bb;->a()Lcom/amap/api/mapcore/util/bb;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/gl;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gk;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "OfflineDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bc;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/bc;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/gl;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/ax;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ax;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v3, Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ax;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/ax;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    sget-object v2, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v3, Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/ax;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {v1, p1, v0}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;IJJJ)V
    .locals 9

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v6, v0, [J

    const/4 v0, 0x0

    aput-wide p5, v6, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x5

    new-array v7, v0, [J

    const/4 v0, 0x0

    aput-wide p7, v7, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/lang/String;IJ[J[J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;IJ[J[J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/ay;

    const/4 v0, 0x0

    aget-wide v6, p5, v0

    const/4 v0, 0x0

    aget-wide v8, p6, v0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore/util/ay;-><init>(Ljava/lang/String;JIJJ)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v3, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore/util/ax;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ba;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ax;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/ay;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ba;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/ay;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bc;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ba;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/bc;->b:Lcom/amap/api/mapcore/util/gl;

    const-class v3, Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ba;->e()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
