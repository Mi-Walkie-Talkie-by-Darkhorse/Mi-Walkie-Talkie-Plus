.class final Lcom/amap/api/col/sl/bh$1;
.super Ljava/lang/Object;
.source "PoiSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bh;->searchPOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/bh;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v0}, Lcom/amap/api/col/sl/bh;->a(Lcom/amap/api/col/sl/bh;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v0, 0x6

    iput v0, v2, Landroid/os/Message;->arg1:I

    const/16 v0, 0x258

    iput v0, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/bh;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v1

    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/amap/api/col/sl/ac$h;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$h;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v4}, Lcom/amap/api/col/sl/bh;->b(Lcom/amap/api/col/sl/bh;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/sl/ac$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v1, v0, Lcom/amap/api/col/sl/ac$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v0}, Lcom/amap/api/col/sl/bh;->a(Lcom/amap/api/col/sl/bh;)Landroid/os/Handler;

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

    new-instance v0, Lcom/amap/api/col/sl/ac$h;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$h;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v4}, Lcom/amap/api/col/sl/bh;->b(Lcom/amap/api/col/sl/bh;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/sl/ac$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v1, v0, Lcom/amap/api/col/sl/ac$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v0}, Lcom/amap/api/col/sl/bh;->a(Lcom/amap/api/col/sl/bh;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v4, Lcom/amap/api/col/sl/ac$h;

    invoke-direct {v4}, Lcom/amap/api/col/sl/ac$h;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v5}, Lcom/amap/api/col/sl/bh;->b(Lcom/amap/api/col/sl/bh;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/col/sl/ac$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v1, v4, Lcom/amap/api/col/sl/ac$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/bh$1;->a:Lcom/amap/api/col/sl/bh;

    invoke-static {v1}, Lcom/amap/api/col/sl/bh;->a(Lcom/amap/api/col/sl/bh;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
