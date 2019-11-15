.class public interface abstract Lcom/autonavi/ae/gmap/listener/MapListener;
.super Ljava/lang/Object;
.source "MapListener.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;


# virtual methods
.method public abstract beforeDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
.end method

.method public abstract onDoubleTap(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onFling(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onHorizontalMove(IF)V
.end method

.method public abstract onHorizontalMoveEnd(I)V
.end method

.method public abstract onLongPress(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onMapAnimationFinished(II)V
.end method

.method public abstract onMapLevelChange(IZ)V
.end method

.method public abstract onMapSizeChange(I)V
.end method

.method public abstract onMapTipClear(I)V
.end method

.method public abstract onMapTipInfo(ILjava/lang/String;)V
.end method

.method public abstract onMotionFinished(II)V
.end method

.method public abstract onOfflineMap(ILjava/lang/String;I)V
.end method

.method public abstract onRealCityAnimateFinish(I)V
.end method

.method public abstract onShowPress(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onSingleTapUp(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract onUserMapTouchEvent(ILandroid/view/MotionEvent;)V
.end method
