.class Lcom/autonavi/ae/gmap/GLMapEngine$12;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->startMapSlidAnim(ILandroid/graphics/Point;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I

.field final synthetic val$touchPoint:Landroid/graphics/Point;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;Landroid/graphics/Point;IFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$touchPoint:Landroid/graphics/Point;

    iput p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$engineID:I

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$x:F

    iput p5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$touchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$engineID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    .line 3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCloneMapState()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->reset()V

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    .line 6
    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$x:F

    .line 7
    iget v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$y:F

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    const v7, 0x463b8000    # 12000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    const v6, -0x39c48000    # -12000.0f

    const/4 v8, 0x0

    if-lez v5, :cond_3

    cmpl-float v1, v1, v8

    if-lez v1, :cond_2

    const v6, 0x463b8000    # 12000.0f

    :cond_2
    div-float/2addr v7, v3

    mul-float v7, v7, v2

    move v1, v6

    move v2, v7

    goto :goto_1

    :cond_3
    div-float v3, v7, v4

    mul-float v3, v3, v1

    cmpl-float v1, v2, v8

    if-lez v1, :cond_4

    move v1, v3

    const v2, 0x463b8000    # 12000.0f

    goto :goto_1

    :cond_4
    move v1, v3

    const v2, -0x39c48000    # -12000.0f

    .line 10
    :cond_5
    :goto_1
    new-instance v3, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;

    const/16 v4, 0x1f4

    iget-object v5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    .line 11
    invoke-static {v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$900(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v5

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$900(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v6

    invoke-interface {v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;-><init>(III)V

    .line 12
    invoke-virtual {v3, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->setPositionAndVelocity(FF)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->commitAnimation(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$300(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->addAnimation(Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
