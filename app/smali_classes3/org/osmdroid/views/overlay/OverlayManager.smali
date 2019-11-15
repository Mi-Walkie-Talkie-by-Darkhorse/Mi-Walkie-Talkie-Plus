.class public interface abstract Lorg/osmdroid/views/overlay/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract add(ILorg/osmdroid/views/overlay/Overlay;)V
.end method

.method public abstract get(I)Lorg/osmdroid/views/overlay/Overlay;
.end method

.method public abstract getTilesOverlay()Lorg/osmdroid/views/overlay/TilesOverlay;
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onDetach(Lorg/osmdroid/views/MapView;)V
.end method

.method public abstract onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
.end method

.method public abstract onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end method

.method public abstract overlays()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end method

.method public abstract overlaysReversed()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(I)Lorg/osmdroid/views/overlay/Overlay;
.end method

.method public abstract set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;
.end method

.method public abstract setOptionsMenusEnabled(Z)V
.end method

.method public abstract setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V
.end method

.method public abstract size()I
.end method
