.class final Lcom/amap/api/col/sl/bb$1;
.super Ljava/lang/Object;
.source "CloudSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bb;->searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field final synthetic b:Lcom/amap/api/col/sl/bb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bb;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    iput-object p2, p0, Lcom/amap/api/col/sl/bb$1;->a:Lcom/amap/api/services/cloud/CloudSearch$Query;

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

    const/16 v0, 0xc

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x2bc

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Lcom/amap/api/col/sl/ac$d;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$d;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    invoke-static {v2}, Lcom/amap/api/col/sl/bb;->a(Lcom/amap/api/col/sl/bb;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    iget-object v3, p0, Lcom/amap/api/col/sl/bb$1;->a:Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/bb;->a(Lcom/amap/api/col/sl/bb;Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    invoke-static {v0}, Lcom/amap/api/col/sl/bb;->b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    invoke-static {v0}, Lcom/amap/api/col/sl/bb;->b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$1;->b:Lcom/amap/api/col/sl/bb;

    invoke-static {v2}, Lcom/amap/api/col/sl/bb;->b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
