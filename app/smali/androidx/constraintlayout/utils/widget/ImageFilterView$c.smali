.class Landroidx/constraintlayout/utils/widget/ImageFilterView$c;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:[F

.field b:Landroid/graphics/ColorMatrix;

.field c:Landroid/graphics/ColorMatrix;

.field d:F

.field e:F

.field f:F

.field g:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    .line 3
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    .line 4
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    .line 8
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    return-void
.end method

.method private a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 3
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 4
    aput v1, v0, v2

    const/4 v2, 0x4

    .line 5
    aput v1, v0, v2

    const/4 v2, 0x5

    .line 6
    aput v1, v0, v2

    const/4 v2, 0x6

    .line 7
    aput p1, v0, v2

    const/4 v2, 0x7

    .line 8
    aput v1, v0, v2

    const/16 v2, 0x8

    .line 9
    aput v1, v0, v2

    const/16 v2, 0x9

    .line 10
    aput v1, v0, v2

    const/16 v2, 0xa

    .line 11
    aput v1, v0, v2

    const/16 v2, 0xb

    .line 12
    aput v1, v0, v2

    const/16 v2, 0xc

    .line 13
    aput p1, v0, v2

    const/16 p1, 0xd

    .line 14
    aput v1, v0, p1

    const/16 p1, 0xe

    .line 15
    aput v1, v0, p1

    const/16 p1, 0xf

    .line 16
    aput v1, v0, p1

    const/16 p1, 0x10

    .line 17
    aput v1, v0, p1

    const/16 p1, 0x11

    .line 18
    aput v1, v0, p1

    const/16 p1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    aput v2, v0, p1

    const/16 p1, 0x13

    .line 20
    aput v1, v0, p1

    return-void
.end method

.method private b(F)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const v2, 0x3e998c7e    # 0.2999f

    mul-float v2, v2, v1

    const v3, 0x3f1645a2    # 0.587f

    mul-float v3, v3, v1

    const v4, 0x3de978d5    # 0.114f

    mul-float v1, v1, v4

    .line 1
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    .line 2
    aput v3, v4, v5

    const/4 v5, 0x2

    .line 3
    aput v1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 4
    aput v5, v4, v6

    const/4 v6, 0x4

    .line 5
    aput v5, v4, v6

    const/4 v6, 0x5

    .line 6
    aput v2, v4, v6

    add-float v6, v3, p1

    const/4 v7, 0x6

    .line 7
    aput v6, v4, v7

    const/4 v6, 0x7

    .line 8
    aput v1, v4, v6

    const/16 v6, 0x8

    .line 9
    aput v5, v4, v6

    const/16 v6, 0x9

    .line 10
    aput v5, v4, v6

    const/16 v6, 0xa

    .line 11
    aput v2, v4, v6

    const/16 v2, 0xb

    .line 12
    aput v3, v4, v2

    add-float/2addr v1, p1

    const/16 p1, 0xc

    .line 13
    aput v1, v4, p1

    const/16 p1, 0xd

    .line 14
    aput v5, v4, p1

    const/16 p1, 0xe

    .line 15
    aput v5, v4, p1

    const/16 p1, 0xf

    .line 16
    aput v5, v4, p1

    const/16 p1, 0x10

    .line 17
    aput v5, v4, p1

    const/16 p1, 0x11

    .line 18
    aput v5, v4, p1

    const/16 p1, 0x12

    .line 19
    aput v0, v4, p1

    const/16 p1, 0x13

    .line 20
    aput v5, v4, p1

    return-void
.end method

.method private c(F)V
    .locals 11

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    :cond_0
    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v1, p1

    const p1, 0x43211e9c

    const v2, 0x42c6f10d

    const/high16 v3, 0x42840000    # 66.0f

    const/high16 v4, 0x437f0000    # 255.0f

    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    const/high16 v5, 0x42700000    # 60.0f

    sub-float v5, v1, v5

    const v6, 0x43a4d970

    float-to-double v7, v5

    const-wide v9, -0x403ef32580000000L    # -0.13320475816726685

    .line 1
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float v5, v5, v6

    const v6, 0x43900fa3

    const-wide v9, 0x3fb354f0e0000000L

    .line 2
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v6

    goto :goto_0

    :cond_1
    float-to-double v5, v1

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v2

    sub-float v7, v5, p1

    const/high16 v5, 0x437f0000    # 255.0f

    :goto_0
    const v6, 0x439885bc

    const v8, 0x430a848a

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    const/high16 v3, 0x41980000    # 19.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v1, v3

    float-to-double v9, v1

    .line 4
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float v1, v1, v8

    sub-float/2addr v1, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 5
    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 6
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v7, 0x42480000    # 50.0f

    float-to-double v9, v7

    .line 8
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float v7, v7, v2

    sub-float/2addr v7, p1

    const/high16 p1, 0x42200000    # 40.0f

    float-to-double v9, p1

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float p1, v9

    mul-float p1, p1, v8

    sub-float/2addr p1, v6

    .line 10
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 11
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v3, v2

    div-float/2addr v5, v6

    div-float/2addr v1, p1

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    const/4 v2, 0x0

    aput v3, p1, v2

    const/4 v2, 0x1

    .line 14
    aput v0, p1, v2

    const/4 v2, 0x2

    .line 15
    aput v0, p1, v2

    const/4 v2, 0x3

    .line 16
    aput v0, p1, v2

    const/4 v2, 0x4

    .line 17
    aput v0, p1, v2

    const/4 v2, 0x5

    .line 18
    aput v0, p1, v2

    const/4 v2, 0x6

    .line 19
    aput v5, p1, v2

    const/4 v2, 0x7

    .line 20
    aput v0, p1, v2

    const/16 v2, 0x8

    .line 21
    aput v0, p1, v2

    const/16 v2, 0x9

    .line 22
    aput v0, p1, v2

    const/16 v2, 0xa

    .line 23
    aput v0, p1, v2

    const/16 v2, 0xb

    .line 24
    aput v0, p1, v2

    const/16 v2, 0xc

    .line 25
    aput v1, p1, v2

    const/16 v1, 0xd

    .line 26
    aput v0, p1, v1

    const/16 v1, 0xe

    .line 27
    aput v0, p1, v1

    const/16 v1, 0xf

    .line 28
    aput v0, p1, v1

    const/16 v1, 0x10

    .line 29
    aput v0, p1, v1

    const/16 v1, 0x11

    .line 30
    aput v0, p1, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    aput v2, p1, v1

    const/16 v1, 0x13

    .line 32
    aput v0, p1, v1

    return-void
.end method


# virtual methods
.method a(Landroid/widget/ImageView;)V
    .locals 5

    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 22
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    .line 23
    invoke-direct {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b(F)V

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    .line 28
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    .line 29
    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c(F)V

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    .line 32
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 33
    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a(F)V

    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 36
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 37
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_2
    return-void
.end method
