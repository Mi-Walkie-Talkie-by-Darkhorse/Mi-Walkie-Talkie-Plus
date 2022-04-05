.class public final Lcom/amap/api/col/l3/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/dk$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/col/l3/dj;

.field private d:Ljava/lang/Thread;

.field private e:Lcom/amap/api/col/l3/dp;

.field private f:Lcom/amap/api/col/l3/dk$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "custom_texture_data"

    iput-object v0, p0, Lcom/amap/api/col/l3/dk;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3/dk;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/dj;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3/dj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/dk;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    :cond_1
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dk$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dk;->f:Lcom/amap/api/col/l3/dk$a;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dk;->e:Lcom/amap/api/col/l3/dp;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/amap/api/col/l3/dj;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dk;->d:Ljava/lang/Thread;

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
    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->c:Lcom/amap/api/col/l3/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fp;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/dj$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/amap/api/col/l3/dj$a;->a:[B

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/dk;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/autonavi/amap/mapcore/FileUtil;->getMapBaseStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/dk;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/amap/api/col/l3/dj$a;->a:[B

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/FileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->f:Lcom/amap/api/col/l3/dk$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->f:Lcom/amap/api/col/l3/dk$a;

    iget-object v2, p0, Lcom/amap/api/col/l3/dk;->e:Lcom/amap/api/col/l3/dp;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/col/l3/dk$a;->a(Ljava/lang/String;Lcom/amap/api/col/l3/dp;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dk;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/gv;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Lcom/amap/api/col/l3/gv;
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
