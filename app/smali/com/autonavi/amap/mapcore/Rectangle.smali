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
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    cmpl-float v0, p1, p2

    if-gez v0, :cond_0

    cmpg-float v0, p4, p3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->left:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->right:F

    iput p4, p0, Lcom/autonavi/amap/mapcore/Rectangle;->top:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/Rectangle;->bottom:F

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipRect()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipMapRect(II)V

    :cond_0
    return-void
.end method

.method private updateClipMapRect(II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v0, v6

    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    :cond_1
    return-void
.end method

.method private updateClipRect()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v2, v2}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_1
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Landroid/graphics/Rect;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public contains(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipMapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->clipRect:[Lcom/autonavi/amap/mapcore/IPoint;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isOverlap(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRect(Landroid/graphics/Rect;II)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipRect()V

    invoke-direct {p0, p2, p3}, Lcom/autonavi/amap/mapcore/Rectangle;->updateClipMapRect(II)V

    :cond_0
    return-void
.end method
