.class final Lcom/amap/api/col/sl/be$2;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/be;->getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/GeocodeQuery;

.field final synthetic b:Lcom/amap/api/col/sl/be;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/be;Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    iput-object p2, p0, Lcom/amap/api/col/sl/be$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0xc8

    :try_start_0
    iput v0, v1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Lcom/amap/api/col/sl/ac$e;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$e;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    invoke-static {v2}, Lcom/amap/api/col/sl/be;->a(Lcom/amap/api/col/sl/be;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    iget-object v3, p0, Lcom/amap/api/col/sl/be$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/sl/be;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/amap/api/services/geocoder/GeocodeResult;

    iget-object v4, p0, Lcom/amap/api/col/sl/be$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {v3, v4, v2}, Lcom/amap/api/services/geocoder/GeocodeResult;-><init>(Lcom/amap/api/services/geocoder/GeocodeQuery;Ljava/util/List;)V

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    invoke-static {v0}, Lcom/amap/api/col/sl/be;->b(Lcom/amap/api/col/sl/be;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    invoke-static {v0}, Lcom/amap/api/col/sl/be;->b(Lcom/amap/api/col/sl/be;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/sl/be$2;->b:Lcom/amap/api/col/sl/be;

    invoke-static {v2}, Lcom/amap/api/col/sl/be;->b(Lcom/amap/api/col/sl/be;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
