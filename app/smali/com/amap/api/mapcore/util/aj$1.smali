.class Lcom/amap/api/mapcore/util/aj$1;
.super Ljava/lang/Object;
.source "MultiPointOverlayDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/aj;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ah;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/mapcore/util/aj;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/aj;Lcom/amap/api/mapcore/util/ah;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aj$1;->c:Lcom/amap/api/mapcore/util/aj;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/aj$1;->a:Lcom/amap/api/mapcore/util/ah;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/aj$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj$1;->a:Lcom/amap/api/mapcore/util/ah;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj$1;->a:Lcom/amap/api/mapcore/util/ah;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ah;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj$1;->c:Lcom/amap/api/mapcore/util/aj;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aj;->a(Lcom/amap/api/mapcore/util/aj;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
