.class final Lcom/amap/api/col/sl/bb$2;
.super Ljava/lang/Object;
.source "CloudSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bb;->searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/col/sl/bb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

    iput-object p2, p0, Lcom/amap/api/col/sl/bb$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/sl/bb$2;->b:Ljava/lang/String;

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

    const/16 v0, 0xc

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x2bd

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Lcom/amap/api/col/sl/ac$c;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$c;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

    invoke-static {v2}, Lcom/amap/api/col/sl/bb;->a(Lcom/amap/api/col/sl/bb;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

    iget-object v3, p0, Lcom/amap/api/col/sl/bb$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/sl/bb$2;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/bb;->a(Lcom/amap/api/col/sl/bb;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

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

    iget-object v0, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

    invoke-static {v0}, Lcom/amap/api/col/sl/bb;->b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/sl/bb$2;->c:Lcom/amap/api/col/sl/bb;

    invoke-static {v2}, Lcom/amap/api/col/sl/bb;->b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
