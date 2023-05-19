.class public Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;
.super Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;
.source "ScaleGestureMapMessage.java"


# instance fields
.field public mPivotX:I

.field public mPivotY:I

.field public mScaleDelta:F


# direct methods
.method public constructor <init>(IFII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mScaleDelta:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotX:I

    .line 4
    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotY:I

    .line 5
    iput p2, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mScaleDelta:F

    .line 6
    iput p3, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotX:I

    .line 7
    iput p4, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotY:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
