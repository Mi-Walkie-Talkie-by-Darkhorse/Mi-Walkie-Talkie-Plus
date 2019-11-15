.class final Lcom/amap/api/mapcore/util/in$a;
.super Landroid/os/HandlerThread;
.source "MapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/in;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/mapcore/util/in;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/in$a;->a:Lcom/amap/api/mapcore/util/in;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in$a;->a:Lcom/amap/api/mapcore/util/in;

    new-instance v1, Lcom/amap/api/mapcore/util/iq;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in$a;->a:Lcom/amap/api/mapcore/util/in;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/in;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/in$a;->a:Lcom/amap/api/mapcore/util/in;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/in;->d:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/iq;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
