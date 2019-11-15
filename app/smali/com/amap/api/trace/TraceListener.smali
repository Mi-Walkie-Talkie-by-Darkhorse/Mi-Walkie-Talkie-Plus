.class public interface abstract Lcom/amap/api/trace/TraceListener;
.super Ljava/lang/Object;
.source "TraceListener.java"


# virtual methods
.method public abstract onFinished(ILjava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onRequestFailed(ILjava/lang/String;)V
.end method

.method public abstract onTraceProcessing(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation
.end method
