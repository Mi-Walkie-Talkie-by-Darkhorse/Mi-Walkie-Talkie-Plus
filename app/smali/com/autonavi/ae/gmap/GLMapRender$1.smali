.class Lcom/autonavi/ae/gmap/GLMapRender$1;
.super Landroid/os/Handler;
.source "GLMapRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapRender;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapRender;


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapRender;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->access$000(Lcom/autonavi/ae/gmap/GLMapRender;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
