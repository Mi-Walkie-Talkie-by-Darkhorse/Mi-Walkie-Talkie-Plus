.class Lcom/amap/api/mapcore/util/cp$2;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/cp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cp$2;->a:Lcom/amap/api/mapcore/util/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp$2;->a:Lcom/amap/api/mapcore/util/cp;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/cp;->b(Lcom/amap/api/mapcore/util/cp;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp$2;->a:Lcom/amap/api/mapcore/util/cp;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/cp;->b(Lcom/amap/api/mapcore/util/cp;)Lcom/amap/api/maps/model/Circle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp$2;->a:Lcom/amap/api/mapcore/util/cp;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/cp;->c(Lcom/amap/api/mapcore/util/cp;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
