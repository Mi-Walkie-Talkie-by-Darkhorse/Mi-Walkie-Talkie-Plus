.class public final Lcom/amap/api/col/l3/ib;
.super Lcom/amap/api/col/l3/hx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ib$a;
    }
.end annotation


# static fields
.field private static c:Lcom/amap/api/col/l3/ib;


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/l3/hx;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/ib$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/ib$a;-><init>(Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ib;->d:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3/ib$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ib$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ib;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NetManger"

    const-string v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b()Lcom/amap/api/col/l3/ib;
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3/ib;->c()Lcom/amap/api/col/l3/ib;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/amap/api/col/l3/ib;
    .locals 2

    const-class v0, Lcom/amap/api/col/l3/ib;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/ib;->c:Lcom/amap/api/col/l3/ib;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3/ib;

    invoke-direct {v1}, Lcom/amap/api/col/l3/ib;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3/ib;->c:Lcom/amap/api/col/l3/ib;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/amap/api/col/l3/ib;->c:Lcom/amap/api/col/l3/ib;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Lcom/amap/api/col/l3/ic;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/ib;->e(Lcom/amap/api/col/l3/ic;)Lcom/amap/api/col/l3/ie;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3/ie;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method private static e(Lcom/amap/api/col/l3/ic;)Lcom/amap/api/col/l3/ie;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/hx;->c(Lcom/amap/api/col/l3/ic;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ic;->j:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ic;->j:Ljava/net/Proxy;

    :goto_0
    new-instance v1, Lcom/amap/api/col/l3/ia;

    iget v2, p0, Lcom/amap/api/col/l3/ic;->h:I

    iget v3, p0, Lcom/amap/api/col/l3/ic;->i:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/amap/api/col/l3/ia;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->m()Z

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->a()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/col/l3/ie;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final b(Lcom/amap/api/col/l3/ic;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/amap/api/col/l3/ie;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/amap/api/col/l3/gv;->e()Lcom/amap/api/col/l3/gv;

    move-result-object v0

    const-string v1, "NetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/col/l3/gv;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    throw p1
.end method
