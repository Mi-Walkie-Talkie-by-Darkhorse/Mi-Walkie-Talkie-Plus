.class public final Lcom/amap/api/col/l3/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3/u;

.field private c:Lcom/amap/api/col/l3/dh;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/di;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/di;->b:Lcom/amap/api/col/l3/u;

    iget-object p2, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    if-nez p2, :cond_0

    new-instance p2, Lcom/amap/api/col/l3/dh;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Lcom/amap/api/col/l3/dh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/di;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/di;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/dh;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/di;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/di;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/di;->c:Lcom/amap/api/col/l3/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fp;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/dh$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/amap/api/col/l3/dh$a;->a:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/di;->b:Lcom/amap/api/col/l3/u;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/di;->b:Lcom/amap/api/col/l3/u;

    iget-object v2, p0, Lcom/amap/api/col/l3/di;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/l3/dh$a;->a:[B

    invoke-interface {v1, v2, v0}, Lcom/amap/api/col/l3/u;->a(Z[B)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/di;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/gv;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Lcom/amap/api/col/l3/gv;

    iget-object v0, p0, Lcom/amap/api/col/l3/di;->b:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "CustomStyleTask"

    const-string v2, "download customStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
