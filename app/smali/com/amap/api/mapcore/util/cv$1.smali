.class Lcom/amap/api/mapcore/util/cv$1;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ei$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/cv;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/cv;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cv$1;->a:Lcom/amap/api/mapcore/util/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv$1;->a:Lcom/amap/api/mapcore/util/cv;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/cv;->a(Lcom/amap/api/mapcore/util/cv;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->resetRenderTimeLongLong()V

    return-void
.end method
