.class Lcom/autonavi/ae/gmap/GLMapRender$1;
.super Landroid/os/Handler;


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
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-static {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->access$000(Lcom/autonavi/ae/gmap/GLMapRender;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-object p1, p1, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getRenderMode()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/autonavi/ae/gmap/GLMapRender$1;->this$0:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-object p1, p1, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_2
    :goto_0
    return-void
.end method
