.class public Lcom/amap/api/maps/model/Gradient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/Gradient$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[I

.field private c:[F

.field private d:Z


# direct methods
.method public constructor <init>([I[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[FB)V

    return-void
.end method

.method private constructor <init>([I[FB)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p2, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "startPoints should be in increasing order"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/amap/api/maps/model/Gradient;->a:I

    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amap/api/maps/model/Gradient;->b:[I

    array-length v2, p2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/amap/api/maps/model/Gradient;->c:[F

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean p3, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    return-void

    :cond_2
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "No colors have been defined"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should be same length"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should not be null"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static a(IIF)I
    .locals 7

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v3, v4, p0, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    new-array p0, v1, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v3, v4, p1, p0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x0

    aget v3, v2, p1

    aget v4, p0, p1

    sub-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    aget v3, p0, p1

    add-float/2addr v3, v4

    aput v3, p0, p1

    goto :goto_0

    :cond_0
    aget v3, p0, p1

    aget v6, v2, p1

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget v3, v2, p1

    add-float/2addr v3, v4

    aput v3, v2, p1

    :cond_1
    :goto_0
    new-array v3, v1, [F

    :goto_1
    if-ge p1, v1, :cond_2

    aget v4, p0, p1

    aget v5, v2, p1

    sub-float/2addr v4, v5

    mul-float v4, v4, p2

    aget v5, v2, p1

    add-float/2addr v4, v5

    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected generateColorMap(D)[I
    .locals 15

    move-object v6, p0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v0, v0, v8

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v0, v0, v8

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget-object v1, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v1, v1, v8

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget-object v2, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v2, v2, v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v10, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v0, v8

    iget v0, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v1, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v1, v1, v8

    mul-float v4, v0, v1

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFB)V

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    array-length v0, v0

    if-ge v11, v0, :cond_1

    iget v0, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v1, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    add-int/lit8 v2, v11, -0x1

    aget v1, v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v0, v2

    aget v4, v0, v11

    iget v0, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v1, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v5, v1, v11

    aget v1, v1, v2

    sub-float/2addr v5, v1

    mul-float v5, v5, v0

    const/4 v14, 0x0

    move-object v0, v13

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFB)V

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    array-length v1, v0

    sub-int/2addr v1, v10

    aget v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    array-length v1, v0

    sub-int/2addr v1, v10

    iget v3, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v3, v3

    aget v0, v0, v1

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v0, v6, Lcom/amap/api/maps/model/Gradient;->b:[I

    aget v3, v0, v1

    aget v4, v0, v1

    iget v0, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    int-to-float v0, v0

    iget-object v5, v6, Lcom/amap/api/maps/model/Gradient;->c:[F

    aget v1, v5, v1

    sub-float/2addr v2, v1

    mul-float v5, v0, v2

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIFB)V

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    new-array v0, v0, [I

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Gradient$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v4, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    if-ge v2, v4, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Gradient$a;

    move v3, v2

    :cond_3
    sub-int v4, v2, v3

    int-to-float v4, v4

    invoke-static {v1}, Lcom/amap/api/maps/model/Gradient$a;->a(Lcom/amap/api/maps/model/Gradient$a;)F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v1}, Lcom/amap/api/maps/model/Gradient$a;->b(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v5

    invoke-static {v1}, Lcom/amap/api/maps/model/Gradient$a;->c(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v9

    invoke-static {v5, v9, v4}, Lcom/amap/api/maps/model/Gradient;->a(IIF)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_5

    :goto_2
    iget v1, v6, Lcom/amap/api/maps/model/Gradient;->a:I

    if-ge v8, v1, :cond_5

    aget v1, v0, v8

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, p1

    double-to-int v2, v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->d:Z

    return v0
.end method
