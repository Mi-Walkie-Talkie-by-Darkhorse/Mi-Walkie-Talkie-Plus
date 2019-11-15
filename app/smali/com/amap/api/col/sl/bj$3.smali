.class final Lcom/amap/api/col/sl/bj$3;
.super Ljava/lang/Object;
.source "RouteSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bj;->calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

.field final synthetic b:Lcom/amap/api/col/sl/bj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    iput-object p2, p0, Lcom/amap/api/col/sl/bj$3;->a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

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

    const/16 v0, 0x65

    iput v0, v2, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    iget-object v4, p0, Lcom/amap/api/col/sl/bj$3;->a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/sl/bj;->calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;

    move-result-object v1

    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/col/sl/bj;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->b(Lcom/amap/api/col/sl/bj;)Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/col/sl/bj;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->b(Lcom/amap/api/col/sl/bj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v4}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/col/sl/bj;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/bj$3;->b:Lcom/amap/api/col/sl/bj;

    invoke-static {v1}, Lcom/amap/api/col/sl/bj;->b(Lcom/amap/api/col/sl/bj;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
