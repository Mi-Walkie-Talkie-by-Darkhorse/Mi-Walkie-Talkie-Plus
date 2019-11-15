.class public Lcom/amap/api/maps/SwipeDismissCallBack;
.super Ljava/lang/Object;
.source "SwipeDismissCallBack.java"

# interfaces
.implements Lcom/amap/api/maps/SwipeDismissTouchListener$DismissCallbacks;


# instance fields
.field a:Lcom/amap/api/maps/SwipeDismissView;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/SwipeDismissView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object v0, v0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object v0, v0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/WearMapView$OnDismissCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onNotifySwipe()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object v0, v0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/SwipeDismissCallBack;->a:Lcom/amap/api/maps/SwipeDismissView;

    iget-object v0, v0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/WearMapView$OnDismissCallback;->onNotifySwipe()V

    :cond_0
    return-void
.end method
