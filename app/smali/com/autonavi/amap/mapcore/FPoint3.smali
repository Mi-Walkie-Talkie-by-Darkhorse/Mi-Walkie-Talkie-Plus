.class public Lcom/autonavi/amap/mapcore/FPoint3;
.super Lcom/autonavi/amap/mapcore/FPoint;
.source "FPoint3.java"


# instance fields
.field public colorIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    iput p3, p0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    return-void
.end method


# virtual methods
.method public setColorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    return-void
.end method
