.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private mMapAnimationListener:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->isOver()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;

    if-eqz v1, :cond_1

    instance-of v2, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    move-object v3, v1

    check-cast v3, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->typeEqueal(Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;

    iget-boolean v2, v2, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mCancelCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized clearAnimations()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doAnimations(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->isOver()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mMapAnimationListener:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mMapAnimationListener:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mCancelCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;->onMapAnimationFinish(Lcom/amap/api/maps/AMap$CancelableCallback;)V

    :cond_3
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->doAnimation(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAnimationsCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCancelCallback()Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mCancelCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object v0
.end method

.method public getMapAnimationListener()Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mMapAnimationListener:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;

    return-object v0
.end method

.method public setMapAnimationListener(Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->mMapAnimationListener:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;

    return-void
.end method

.method public setMapCoreListener()V
    .locals 0

    return-void
.end method
