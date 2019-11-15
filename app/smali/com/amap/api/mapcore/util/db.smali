.class public Lcom/amap/api/mapcore/util/db;
.super Ljava/lang/Object;
.source "CustomStyleTextureTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/db$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/mapcore/util/da;

.field private d:Ljava/lang/Thread;

.field private e:Lcom/amap/api/mapcore/util/dg;

.field private f:Lcom/amap/api/mapcore/util/db$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "custom_texture_data"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/db;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/db;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/da;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/db;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/da;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->getMapBaseStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p1, p2}, Lcom/autonavi/amap/mapcore/FileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-object v1, p0, Lcom/amap/api/mapcore/util/db;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/db$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/db;->f:Lcom/amap/api/mapcore/util/db$a;

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/db;->e:Lcom/amap/api/mapcore/util/dg;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->d:Ljava/lang/Thread;

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
    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->c:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/da$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/amap/api/mapcore/util/da$a;->a:[B

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/db;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/db;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/db;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/amap/api/mapcore/util/da$a;->a:[B

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/db;->a(Ljava/lang/String;[B)V

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/db;->f:Lcom/amap/api/mapcore/util/db$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/db;->f:Lcom/amap/api/mapcore/util/db$a;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/db;->e:Lcom/amap/api/mapcore/util/dg;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/db$a;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dg;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/db;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/gf;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Lcom/amap/api/mapcore/util/gf;
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

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
