.class final Lcom/ifengyu/intercom/b/r$1;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapManagerInstance.java"

# interfaces
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/b/r$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/b/r$a;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->m(Z)V

    :cond_1
    return-void
.end method

.method public onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/b/r$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/b/r$a;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
