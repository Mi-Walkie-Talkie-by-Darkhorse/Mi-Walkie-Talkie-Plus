.class Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;
.super Ljava/lang/Object;
.source "SmoothMoveMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->startSmoothMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v4

    div-double v4, v0, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$602(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D

    :cond_3
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    :cond_4
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-object v5, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v6

    sub-double v0, v6, v0

    invoke-static {v4, v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$602(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    :cond_5
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    invoke-static {v4, v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$802(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;

    invoke-direct {v5, p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    invoke-virtual {v4, v5, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4, v1, v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v1, v5, v1

    iget-object v5, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/AMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v5

    iget v5, v5, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_6
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    new-instance v4, Lcom/amap/api/maps/model/animation/TranslateAnimation;

    invoke-direct {v4, v0}, Lcom/amap/api/maps/model/animation/TranslateAnimation;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    invoke-static {v1, v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/animation/TranslateAnimation;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-boolean v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V

    return-void
.end method
