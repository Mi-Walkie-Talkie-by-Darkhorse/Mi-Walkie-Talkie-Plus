.class final Lcom/amap/api/col/sl/bk$6;
.super Ljava/lang/Object;
.source "ShareSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bk;->searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/LatLonSharePoint;

.field final synthetic b:Lcom/amap/api/col/sl/bk;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bk;Lcom/amap/api/services/core/LatLonSharePoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bk$6;->b:Lcom/amap/api/col/sl/bk;

    iput-object p2, p0, Lcom/amap/api/col/sl/bk$6;->a:Lcom/amap/api/services/core/LatLonSharePoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/bk$6;->b:Lcom/amap/api/col/sl/bk;

    invoke-static {v0}, Lcom/amap/api/col/sl/bk;->a(Lcom/amap/api/col/sl/bk;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0xb

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x44d

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/col/sl/bk$6;->b:Lcom/amap/api/col/sl/bk;

    invoke-static {v0}, Lcom/amap/api/col/sl/bk;->a(Lcom/amap/api/col/sl/bk;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bk$6;->b:Lcom/amap/api/col/sl/bk;

    iget-object v2, p0, Lcom/amap/api/col/sl/bk$6;->a:Lcom/amap/api/services/core/LatLonSharePoint;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/bk;->searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/sl/ac;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
