.class public Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$SimpleOnZoomOutGestureListener;
.super Ljava/lang/Object;
.source "ZoomOutGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnZoomOutGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomOut(Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onZoomOutBegin(Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
