.class public abstract Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;
.super Ljava/lang/Object;
.source "ScaleRotateGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleOnScaleRotateGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z
    .locals 1

    check-cast p1, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;->onScaleRotate(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z
    .locals 1

    check-cast p1, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;->onScaleRotateBegin(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V
    .locals 0

    check-cast p1, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;->onScaleRotateEnd(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)V

    return-void
.end method

.method public abstract onScaleRotate(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
.end method

.method public abstract onScaleRotateBegin(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
.end method

.method public abstract onScaleRotateEnd(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)V
.end method
