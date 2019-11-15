.class public Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;
.super Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;
.source "RotateGestureMapMessage.java"


# instance fields
.field public mAngleDelta:F

.field public mPivotX:I

.field public mPivotY:I


# direct methods
.method public constructor <init>(IFII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mPivotX:I

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mPivotY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mAngleDelta:F

    iput p2, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mAngleDelta:F

    iput p3, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mPivotX:I

    iput p4, p0, Lcom/autonavi/ae/gmap/gesture/message/RotateGestureMapMessage;->mPivotY:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
