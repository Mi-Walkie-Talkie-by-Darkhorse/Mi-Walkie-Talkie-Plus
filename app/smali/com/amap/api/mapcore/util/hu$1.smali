.class Lcom/amap/api/mapcore/util/hu$1;
.super Lcom/amap/api/mapcore/util/if;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/hv;

.field final synthetic b:Lcom/amap/api/mapcore/util/hw;

.field final synthetic c:Lcom/amap/api/mapcore/util/hu;


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/hu$1;->c:Lcom/amap/api/mapcore/util/hu;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/hu$1;->a:Lcom/amap/api/mapcore/util/hv;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/hu;->b(Lcom/amap/api/mapcore/util/hv;Z)Lcom/amap/api/mapcore/util/hx;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/hu$1;->c:Lcom/amap/api/mapcore/util/hu;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hu$1;->b:Lcom/amap/api/mapcore/util/hw;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/hu;->a(Lcom/amap/api/mapcore/util/hu;Lcom/amap/api/mapcore/util/hx;Lcom/amap/api/mapcore/util/hw;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/hu$1;->c:Lcom/amap/api/mapcore/util/hu;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hu$1;->b:Lcom/amap/api/mapcore/util/hw;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/hu;->a(Lcom/amap/api/mapcore/util/hu;Lcom/amap/api/mapcore/util/fn;Lcom/amap/api/mapcore/util/hw;)V

    goto :goto_0
.end method
