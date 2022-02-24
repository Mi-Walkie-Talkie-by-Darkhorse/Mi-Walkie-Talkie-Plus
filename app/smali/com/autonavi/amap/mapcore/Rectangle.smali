.class public Lcom/autonavi/amap/mapcore/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public bottom:F

.field public clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

.field public clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

.field public left:F

.field public rect:Landroid/graphics/Rect;

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    .line 4
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    .line 16
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    cmpl-float v0, p1, p2

    if-gez v0, :cond_1

    cmpg-float v0, p4, p3

    if-gtz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->left:F

    .line 18
    iput p2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->right:F

    .line 19
    iput p4, p0, Lcom/autonavi/amap/mapcore/Rectangle;->top:F

    .line 20
    iput p3, p0, Lcom/autonavi/amap/mapcore/Rectangle;->bottom:F

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    .line 8
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    .line 9
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    .line 11
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipRect()V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipMapRect(II)V

    :cond_0
    return-void
.end method

.method private updateClipMapRect(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 2
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v5, 0x0

    .line 3
    invoke-static {v5, v5}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    aput-object v6, v0, v4

    .line 4
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v5, v5}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    aput-object v6, v0, v3

    .line 5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v5, v5}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    aput-object v6, v0, v2

    .line 6
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v5, v5}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v5

    aput-object v5, v0, v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 8
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v6, v5, v4

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, p1

    int-to-float v8, v8

    iput v8, v6, Landroid/graphics/PointF;->x:F

    .line 9
    aget-object v4, v5, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, p2

    int-to-float v8, v8

    iput v8, v4, Landroid/graphics/PointF;->y:F

    .line 10
    aget-object v4, v5, v3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, p1

    int-to-float v9, v9

    iput v9, v4, Landroid/graphics/PointF;->x:F

    .line 11
    aget-object v3, v5, v3

    sub-int/2addr v6, p2

    int-to-float v4, v6

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 12
    aget-object v3, v5, v2

    sub-int/2addr v8, p1

    int-to-float v4, v8

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 13
    aget-object v2, v5, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 14
    aget-object v2, v5, v1

    sub-int/2addr v7, p1

    int-to-float p1, v7

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 15
    aget-object p1, v5, v1

    sub-int/2addr v0, p2

    int-to-float p2, v0

    iput p2, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method

.method private updateClipRect()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    .line 2
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    .line 3
    invoke-static {v4, v4}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    aput-object v5, v0, v4

    .line 4
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v4, v4}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    aput-object v5, v0, v3

    .line 5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v4, v4}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    aput-object v5, v0, v2

    .line 6
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v4, v4}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    aput-object v5, v0, v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 8
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v6, v5, v4

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 9
    aget-object v4, v5, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 10
    aget-object v4, v5, v3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 11
    aget-object v3, v5, v3

    iput v6, v3, Landroid/graphics/Point;->y:I

    .line 12
    aget-object v3, v5, v2

    iput v8, v3, Landroid/graphics/Point;->x:I

    .line 13
    aget-object v2, v5, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 14
    aget-object v2, v5, v1

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 15
    aget-object v1, v5, v1

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_1
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Landroid/graphics/Rect;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public contains(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result p1

    return p1
.end method

.method public getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isOverlap(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public updateRect(Landroid/graphics/Rect;II)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipRect()V

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipMapRect(II)V

    :cond_0
    return-void
.end method
