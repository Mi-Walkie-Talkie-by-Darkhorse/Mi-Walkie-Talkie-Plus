.class Lcom/amap/api/mapcore/util/an$b;
.super Landroid/os/Handler;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/an;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/an;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an$b;->a:Lcom/amap/api/mapcore/util/an;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/amap/api/mapcore/util/am;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amap/api/mapcore/util/am;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfflineMapHandler handleMessage CitObj  name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getcompleteCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$b;->a:Lcom/amap/api/mapcore/util/an;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$b;->a:Lcom/amap/api/mapcore/util/an;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/an$a;->a(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Do not callback by CityObject! "

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
