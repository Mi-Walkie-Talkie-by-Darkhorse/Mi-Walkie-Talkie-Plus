.class public interface abstract Lcom/amap/api/trace/LBSTraceBase;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setLocationInterval(J)V
.end method

.method public abstract setTraceStatusInterval(I)V
.end method

.method public abstract startTrace(Lcom/amap/api/trace/TraceStatusListener;)V
.end method

.method public abstract stopTrace()V
.end method
