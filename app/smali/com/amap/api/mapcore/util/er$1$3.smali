.class Lcom/amap/api/mapcore/util/er$1$3;
.super Ljava/lang/Object;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/er$1;->invalidateZoomController(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/amap/api/mapcore/util/er$1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/er$1;F)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er$1$3;->b:Lcom/amap/api/mapcore/util/er$1;

    iput p2, p0, Lcom/amap/api/mapcore/util/er$1$3;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1$3;->b:Lcom/amap/api/mapcore/util/er$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->c(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eu;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/er$1$3;->a:F

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->a(F)V

    return-void
.end method
