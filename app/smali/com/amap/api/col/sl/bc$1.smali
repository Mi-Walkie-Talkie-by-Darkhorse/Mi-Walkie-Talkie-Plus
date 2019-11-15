.class final Lcom/amap/api/col/sl/bc$1;
.super Ljava/lang/Object;
.source "DistanceSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bc;->calculateRouteDistanceAsyn(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

.field final synthetic b:Lcom/amap/api/col/sl/bc;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bc;Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    iput-object p2, p0, Lcom/amap/api/col/sl/bc$1;->a:Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v0, 0x190

    iput v0, v2, Landroid/os/Message;->what:I

    const/16 v0, 0x10

    iput v0, v2, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    iget-object v4, p0, Lcom/amap/api/col/sl/bc$1;->a:Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/sl/bc;->calculateRouteDistance(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)Lcom/amap/api/services/route/DistanceResult;

    move-result-object v1

    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v0}, Lcom/amap/api/col/sl/bc;->a(Lcom/amap/api/col/sl/bc;)Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v0}, Lcom/amap/api/col/sl/bc;->b(Lcom/amap/api/col/sl/bc;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v0}, Lcom/amap/api/col/sl/bc;->a(Lcom/amap/api/col/sl/bc;)Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v0}, Lcom/amap/api/col/sl/bc;->b(Lcom/amap/api/col/sl/bc;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v4}, Lcom/amap/api/col/sl/bc;->a(Lcom/amap/api/col/sl/bc;)Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/bc$1;->b:Lcom/amap/api/col/sl/bc;

    invoke-static {v1}, Lcom/amap/api/col/sl/bc;->b(Lcom/amap/api/col/sl/bc;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
