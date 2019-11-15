.class Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;
.super Ljava/lang/Object;
.source "GLRouteOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->removeRouteName(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

.field final synthetic val$isRefreshMap:Z


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;->this$0:Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    iput-boolean p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;->val$isRefreshMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;->this$0:Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    iget-wide v0, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->access$100(J)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;->val$isRefreshMap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;->this$0:Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_0
    return-void
.end method
