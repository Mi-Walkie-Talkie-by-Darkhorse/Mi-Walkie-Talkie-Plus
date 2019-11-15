.class Lcom/amap/api/mapcore/util/an$3;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/an;->f(Lcom/amap/api/mapcore/util/am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/am;

.field final synthetic b:Lcom/amap/api/mapcore/util/an;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/an;Lcom/amap/api/mapcore/util/am;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/an$3;->a:Lcom/amap/api/mapcore/util/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->e(Lcom/amap/api/mapcore/util/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->b(Lcom/amap/api/mapcore/util/an;)V

    new-instance v0, Lcom/amap/api/mapcore/util/ap;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/an;->c(Lcom/amap/api/mapcore/util/an;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ap;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ao;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/an;Z)Z

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$3;->b:Lcom/amap/api/mapcore/util/an;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/an;->b()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$3;->a:Lcom/amap/api/mapcore/util/am;

    sget-object v1, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$3;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->f()V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "startDownloadRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
