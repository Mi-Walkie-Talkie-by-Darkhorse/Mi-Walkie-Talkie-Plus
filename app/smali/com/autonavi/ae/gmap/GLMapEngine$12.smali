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
    .locals 10

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$touchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$engineID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCloneMapState()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/GLMapState;->reset()V

    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    const/16 v6, 0x2ee0

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$x:F

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->val$y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v3, v4

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    int-to-float v7, v6

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    cmpl-float v2, v3, v4

    if-lez v2, :cond_3

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    int-to-float v0, v6

    :goto_2
    int-to-float v2, v6

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_3
    new-instance v2, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$900(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v4

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$900(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v6

    invoke-interface {v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v3, v4, v6}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;-><init>(III)V

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->setPositionAndVelocity(FF)V

    invoke-virtual {v2, v5}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->commitAnimation(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$12;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$300(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->addAnimation(Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    neg-int v0, v6

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    int-to-float v2, v6

    div-float/2addr v2, v4

    mul-float/2addr v2, v0

    cmpl-float v0, v1, v8

    if-lez v0, :cond_4

    int-to-float v0, v6

    :goto_4
    move v1, v2

    goto :goto_3

    :cond_4
    neg-int v0, v6

    int-to-float v0, v0

    goto :goto_4

    :cond_5
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_3
.end method
