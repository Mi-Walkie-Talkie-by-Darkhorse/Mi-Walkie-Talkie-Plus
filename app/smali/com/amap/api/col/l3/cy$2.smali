.class final Lcom/amap/api/col/l3/cy$2;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/cy;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/cy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/cy$2;->a:Lcom/amap/api/col/l3/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cy$2;->a:Lcom/amap/api/col/l3/cy;

    invoke-static {v0}, Lcom/amap/api/col/l3/cy;->b(Lcom/amap/api/col/l3/cy;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/cy$2;->a:Lcom/amap/api/col/l3/cy;

    invoke-static {v0}, Lcom/amap/api/col/l3/cy;->b(Lcom/amap/api/col/l3/cy;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/cy$2;->a:Lcom/amap/api/col/l3/cy;

    invoke-static {v0}, Lcom/amap/api/col/l3/cy;->c(Lcom/amap/api/col/l3/cy;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
