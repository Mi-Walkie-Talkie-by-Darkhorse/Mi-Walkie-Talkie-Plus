.class public Lcom/amap/api/mapcore/util/ai;
.super Ljava/lang/Object;
.source "IBounds.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/ai;->a(IIII)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/ai;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/ai;->b:I

    iput p2, p0, Lcom/amap/api/mapcore/util/ai;->c:I

    iput p4, p0, Lcom/amap/api/mapcore/util/ai;->d:I

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/ai;->e:I

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/ai;->f:I

    return-void
.end method

.method public a(II)Z
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->c:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->b:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->d:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/ai;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/amap/api/mapcore/util/ai;->a:I

    iget v1, p1, Lcom/amap/api/mapcore/util/ai;->c:I

    iget v2, p1, Lcom/amap/api/mapcore/util/ai;->b:I

    iget v3, p1, Lcom/amap/api/mapcore/util/ai;->d:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ai;->b(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/ai;->a(II)Z

    move-result v0

    goto :goto_0
.end method

.method public b(IIII)Z
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->a:I

    if-ge v0, p2, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->d:I

    if-ge p3, v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ai;->b:I

    if-ge v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
