.class final Lcom/amap/api/col/sl/ba$1;
.super Ljava/lang/Object;
.source "BusStationSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/ba;->searchBusStationAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/ba;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v0, 0x7

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/amap/api/col/sl/ac$b;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$b;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-static {v2}, Lcom/amap/api/col/sl/ba;->a(Lcom/amap/api/col/sl/ba;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-virtual {v2}, Lcom/amap/api/col/sl/ba;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v2

    const/16 v3, 0x3e8

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$b;->a:Lcom/amap/api/services/busline/BusStationResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-static {v0}, Lcom/amap/api/col/sl/ba;->b(Lcom/amap/api/col/sl/ba;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-static {v0}, Lcom/amap/api/col/sl/ba;->b(Lcom/amap/api/col/sl/ba;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/sl/ba$1;->a:Lcom/amap/api/col/sl/ba;

    invoke-static {v2}, Lcom/amap/api/col/sl/ba;->b(Lcom/amap/api/col/sl/ba;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
