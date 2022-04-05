.class public Lcom/amap/api/col/l3/bl;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/amap/api/col/l3/bl;

.field private static b:Lcom/amap/api/col/l3/gz;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/bl;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/bl;->b(Landroid/content/Context;)Lcom/amap/api/col/l3/gz;

    move-result-object p1

    sput-object p1, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3/bl;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3/bl;->a:Lcom/amap/api/col/l3/bl;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3/bl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/bl;->a:Lcom/amap/api/col/l3/bl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3/bl;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/bl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/col/l3/bl;->a:Lcom/amap/api/col/l3/bl;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/col/l3/bl;->a:Lcom/amap/api/col/l3/bl;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/bi;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/bi;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;IJ[J[J)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/col/l3/bh;

    const/4 v1, 0x0

    aget-wide v6, p5, v1

    aget-wide v8, p6, v1

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3/bh;-><init>(Ljava/lang/String;JIJJ)V

    invoke-static {p1}, Lcom/amap/api/col/l3/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Landroid/content/Context;)Lcom/amap/api/col/l3/gz;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/gz;

    invoke-static {}, Lcom/amap/api/col/l3/bk;->a()Lcom/amap/api/col/l3/bk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "OfflineDB"

    const-string v1, "getDB"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private b()Z
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/bl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/bl;->b(Landroid/content/Context;)Lcom/amap/api/col/l3/gz;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/col/l3/bg;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/col/l3/bj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    const-class v2, Lcom/amap/api/col/l3/bg;

    invoke-virtual {v0, p1, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/bg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/bg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    const-class v2, Lcom/amap/api/col/l3/bg;

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/bg;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/amap/api/col/l3/bg;)V
    .locals 6

    const-class v0, Lcom/amap/api/col/l3/bi;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/bj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {v2, p1, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {p1}, Lcom/amap/api/col/l3/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {v3, v2, v0}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {v3, v2, v0}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Lcom/amap/api/col/l3/bi;

    invoke-direct {v5, p1, v4}, Lcom/amap/api/col/l3/bi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;IJJJ)V
    .locals 9

    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v6, v0, [J

    const/4 v1, 0x0

    aput-wide p5, v6, v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v6, v2

    const/4 v5, 0x2

    aput-wide v3, v6, v5

    const/4 v7, 0x3

    aput-wide v3, v6, v7

    const/4 v8, 0x4

    aput-wide v3, v6, v8

    new-array v0, v0, [J

    aput-wide p7, v0, v1

    aput-wide v3, v0, v2

    aput-wide v3, v0, v5

    aput-wide v3, v0, v7

    aput-wide v3, v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3/bl;->a(Ljava/lang/String;IJ[J[J)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/col/l3/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    const-class v2, Lcom/amap/api/col/l3/bi;

    invoke-virtual {v1, p1, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/bl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/amap/api/col/l3/bg;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/bj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/bj;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/bi;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/amap/api/col/l3/bh;

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-static {p1}, Lcom/amap/api/col/l3/bj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/bj;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-static {p1}, Lcom/amap/api/col/l3/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/bi;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    invoke-static {p1}, Lcom/amap/api/col/l3/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/amap/api/col/l3/bh;

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bl;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/col/l3/bj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amap/api/col/l3/bl;->b:Lcom/amap/api/col/l3/gz;

    const-class v2, Lcom/amap/api/col/l3/bj;

    invoke-virtual {v0, p1, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/bj;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bj;->d()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
