.class Lcom/amap/api/mapcore/util/fl$b;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Lcom/amap/api/trace/TraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/fl;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/fl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fl$b;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fl$b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onFinished(ILjava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$b;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fl;->a(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/trace/TraceStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$b;->b:Ljava/util/List;

    const-string v2, "\u7ea0\u504f\u6210\u529f"

    invoke-interface {v0, v1, p2, v2}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$b;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fl;->a(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/trace/TraceStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$b;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onTraceProcessing(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
