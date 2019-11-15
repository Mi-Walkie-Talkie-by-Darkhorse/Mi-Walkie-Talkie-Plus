.class Lcom/amap/api/mapcore/util/fl$c;
.super Landroid/os/Handler;
.source "TraceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/amap/api/trace/TraceListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/trace/TraceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fl$c;->a:Lcom/amap/api/trace/TraceListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$c;->a:Lcom/amap/api/trace/TraceListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "lineID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$c;->a:Lcom/amap/api/trace/TraceListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3, v0}, Lcom/amap/api/trace/TraceListener;->onTraceProcessing(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$c;->a:Lcom/amap/api/trace/TraceListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/amap/api/trace/TraceListener;->onFinished(ILjava/util/List;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$c;->a:Lcom/amap/api/trace/TraceListener;

    invoke-interface {v2, v1, v0}, Lcom/amap/api/trace/TraceListener;->onRequestFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
