.class public Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$SimpleOnMoveGestureListener;
.super Ljava/lang/Object;
.source "MoveGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMoveGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMoveBegin(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMoveEnd(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)V
    .locals 0

    return-void
.end method
