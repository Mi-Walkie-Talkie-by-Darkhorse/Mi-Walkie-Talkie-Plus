.class Landroidx/constraintlayout/utils/widget/ImageFilterView$c;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    return-void
.end method

.method private a(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput p1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v2, 0xc

    aput p1, v0, v2

    const/16 p1, 0xd

    aput v1, v0, p1

    const/16 p1, 0xe

    aput v1, v0, p1

    const/16 p1, 0xf

    aput v1, v0, p1

    const/16 p1, 0x10

    aput v1, v0, p1

    const/16 p1, 0x11

    aput v1, v0, p1

    const/16 p1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p1

    const/16 p1, 0x13

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

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    aput v5, v4, v6

    const/4 v6, 0x4

    aput v5, v4, v6

    const/4 v6, 0x5

    aput v2, v4, v6

    add-float v6, v3, p1

    const/4 v7, 0x6

    aput v6, v4, v7

    const/4 v6, 0x7

    aput v1, v4, v6

    const/16 v6, 0x8

    aput v5, v4, v6

    const/16 v6, 0x9

    aput v5, v4, v6

    const/16 v6, 0xa

    aput v2, v4, v6

    const/16 v2, 0xb

    aput v3, v4, v2

    add-float/2addr v1, p1

    const/16 p1, 0xc

    aput v1, v4, p1

    const/16 p1, 0xd

    aput v5, v4, p1

    const/16 p1, 0xe

    aput v5, v4, p1

    const/16 p1, 0xf

    aput v5, v4, p1

    const/16 p1, 0x10

    aput v5, v4, p1

    const/16 p1, 0x11

    aput v5, v4, p1

    const/16 p1, 0x12

    aput v0, v4, p1

    const/16 p1, 0x13

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

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float v5, v5, v6

    const v6, 0x43900fa3

    const-wide v9, 0x3fb354f0e0000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v6

    goto :goto_0

    :cond_1
    float-to-double v5, v1

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

    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v7, 0x42480000    # 50.0f

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float v7, v7, v2

    sub-float/2addr v7, p1

    const/high16 p1, 0x42200000    # 40.0f

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float p1, v9

    mul-float p1, p1, v8

    sub-float/2addr p1, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v3, v2

    div-float/2addr v5, v6

    div-float/2addr v1, p1

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    const/4 v2, 0x0

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v0, p1, v2

    const/4 v2, 0x2

    aput v0, p1, v2

    const/4 v2, 0x3

    aput v0, p1, v2

    const/4 v2, 0x4

    aput v0, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v2, 0x6

    aput v5, p1, v2

    const/4 v2, 0x7

    aput v0, p1, v2

    const/16 v2, 0x8

    aput v0, p1, v2

    const/16 v2, 0x9

    aput v0, p1, v2

    const/16 v2, 0xa

    aput v0, p1, v2

    const/16 v2, 0xb

    aput v0, p1, v2

    const/16 v2, 0xc

    aput v1, p1, v2

    const/16 v1, 0xd

    aput v0, p1, v1

    const/16 v1, 0xe

    aput v0, p1, v1

    const/16 v1, 0xf

    aput v0, p1, v1

    const/16 v1, 0x10

    aput v0, p1, v1

    const/16 v1, 0x11

    aput v0, p1, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    const/16 v1, 0x13

    aput v0, p1, v1

    return-void
.end method


# virtual methods
.method a(Landroid/widget/ImageView;)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    :cond_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_2
    return-void
.end method
