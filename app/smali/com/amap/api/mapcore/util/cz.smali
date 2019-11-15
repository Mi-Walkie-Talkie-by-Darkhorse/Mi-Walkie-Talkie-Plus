.class public Lcom/amap/api/mapcore/util/cz;
.super Ljava/lang/Object;
.source "CustomStyleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/l;

.field private c:Lcom/amap/api/mapcore/util/cy;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/cz;->b:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/cy;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/cy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-object v1, p0, Lcom/amap/api/mapcore/util/cz;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cy;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Lcom/amap/api/mapcore/util/cy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cy;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/amap/api/mapcore/util/cy$a;->a:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->b:Lcom/amap/api/mapcore/util/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->b:Lcom/amap/api/mapcore/util/l;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v2

    iget-object v0, v0, Lcom/amap/api/mapcore/util/cy$a;->a:[B

    invoke-interface {v1, v2, v0}, Lcom/amap/api/mapcore/util/l;->a(Z[B)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/gf;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Lcom/amap/api/mapcore/util/gf;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CustomStyleTask"

    const-string v2, "download customStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
