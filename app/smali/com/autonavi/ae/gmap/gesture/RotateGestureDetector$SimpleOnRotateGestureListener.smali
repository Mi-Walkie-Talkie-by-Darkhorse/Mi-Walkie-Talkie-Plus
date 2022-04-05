.class public Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$SimpleOnRotateGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnRotateGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRotateBegin(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRotateEnd(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)V
    .locals 0

    return-void
.end method
