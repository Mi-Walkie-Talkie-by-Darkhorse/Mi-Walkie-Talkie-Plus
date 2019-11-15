.class final Lcom/amap/api/col/sl/bg$3;
.super Ljava/lang/Object;
.source "NearbySearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bg;->searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

.field final synthetic b:Lcom/amap/api/col/sl/bg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bg;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    iput-object p2, p0, Lcom/amap/api/col/sl/bg$3;->a:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v0}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x9

    iput v0, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/amap/api/col/sl/ac$f;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$f;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v2}, Lcom/amap/api/col/sl/bg;->b(Lcom/amap/api/col/sl/bg;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$f;->a:Ljava/util/List;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    iget-object v3, p0, Lcom/amap/api/col/sl/bg$3;->a:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/sl/bg;->searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/sl/ac$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v0}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v0}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "NearbySearch"

    const-string v3, "searchNearbyInfoAsyn"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v0}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v0}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v2}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/sl/bg$3;->b:Lcom/amap/api/col/sl/bg;

    invoke-static {v2}, Lcom/amap/api/col/sl/bg;->a(Lcom/amap/api/col/sl/bg;)Lcom/amap/api/col/sl/ac;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v0
.end method
