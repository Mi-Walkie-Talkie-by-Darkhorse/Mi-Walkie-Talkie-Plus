.class Lcom/ifengyu/intercom/p/u$a;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapManagerInstance.java"

# interfaces
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdate(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDownload(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/p/u$b;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/ifengyu/intercom/p/u$b;->onDownload(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->g0(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/event/OfflineMapDownloadedEvent;

    invoke-direct {p2}, Lcom/ifengyu/intercom/event/OfflineMapDownloadedEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/p/u$b;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/ifengyu/intercom/p/u$b;->onRemove(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
