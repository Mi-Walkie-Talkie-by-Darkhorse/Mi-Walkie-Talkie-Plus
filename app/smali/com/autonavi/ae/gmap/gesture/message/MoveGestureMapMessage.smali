.class public Lcom/autonavi/ae/gmap/gesture/message/MoveGestureMapMessage;
.super Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;
.source "MoveGestureMapMessage.java"


# instance fields
.field public mTouchDeltaX:F

.field public mTouchDeltaY:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/MoveGestureMapMessage;->mTouchDeltaX:F

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/MoveGestureMapMessage;->mTouchDeltaY:F

    iput p2, p0, Lcom/autonavi/ae/gmap/gesture/message/MoveGestureMapMessage;->mTouchDeltaX:F

    iput p3, p0, Lcom/autonavi/ae/gmap/gesture/message/MoveGestureMapMessage;->mTouchDeltaY:F

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
