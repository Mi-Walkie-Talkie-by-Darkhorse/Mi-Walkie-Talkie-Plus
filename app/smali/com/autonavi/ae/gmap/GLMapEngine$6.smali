.class Lcom/autonavi/ae/gmap/GLMapEngine$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->AddGroupAnimation(IIFIIIILcom/amap/api/maps/AMap$CancelableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$cancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

.field final synthetic val$duration:I

.field final synthetic val$toHeader:I

.field final synthetic val$toMapAngle:I

.field final synthetic val$toMaplevel:F

.field final synthetic val$toP20x:I

.field final synthetic val$toP20y:I


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;IIIFIILcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$duration:I

    iput p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toHeader:I

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toMapAngle:I

    iput p5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toMaplevel:F

    iput p6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toP20x:I

    iput p7, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toP20y:I

    iput-object p8, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$cancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$duration:I

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;-><init>(I)V

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toHeader:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->setToCameraDegree(FI)V

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toMapAngle:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->setToMapAngle(FI)V

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toMaplevel:F

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->setToMapLevel(FI)V

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toP20x:I

    iget v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$toP20y:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->setToMapCenterGeo(III)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$300(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$300(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$6;->val$cancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->addAnimation(Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    :cond_0
    return-void
.end method
