.class public Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
