.class public Lcom/amap/api/maps/model/MyTrafficStyle;
.super Ljava/lang/Object;
.source "MyTrafficStyle.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff5df7

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    const v0, -0x8af8

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    const v0, -0x15fcee

    .line 4
    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    const v0, -0x6dfff6

    .line 5
    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 6
    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->e:F

    return-void
.end method


# virtual methods
.method public getCongestedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    return v0
.end method

.method public getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->e:F

    return v0
.end method

.method public getSeriousCongestedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    return v0
.end method

.method public getSlowColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    return v0
.end method

.method public getSmoothColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    return v0
.end method

.method public setCongestedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->e:F

    return-void
.end method

.method public setSeriousCongestedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    return-void
.end method

.method public setSlowColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    return-void
.end method

.method public setSmoothColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    return-void
.end method
