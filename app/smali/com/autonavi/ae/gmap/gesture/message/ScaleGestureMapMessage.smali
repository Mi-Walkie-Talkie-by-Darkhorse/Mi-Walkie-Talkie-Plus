.class public Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;
.super Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;
.source "ScaleGestureMapMessage.java"


# instance fields
.field public mPivotX:I

.field public mPivotY:I

.field public mScaleDelta:F


# direct methods
.method public constructor <init>(IFII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mScaleDelta:F

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotX:I

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotY:I

    iput p2, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mScaleDelta:F

    iput p3, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotX:I

    iput p4, p0, Lcom/autonavi/ae/gmap/gesture/message/ScaleGestureMapMessage;->mPivotY:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
