.class public Lcom/autonavi/ae/gmap/gesture/message/HoverGestureMapMessage;
.super Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;
.source "HoverGestureMapMessage.java"


# instance fields
.field public mAngleDelta:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/message/GestureMapMessage;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/message/HoverGestureMapMessage;->mAngleDelta:F

    .line 3
    iput p2, p0, Lcom/autonavi/ae/gmap/gesture/message/HoverGestureMapMessage;->mAngleDelta:F

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method