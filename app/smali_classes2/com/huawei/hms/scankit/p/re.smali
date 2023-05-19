.class public Lcom/huawei/hms/scankit/p/re;
.super Ljava/lang/Object;
.source "ParticleEffect.java"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/graphics/Rect;

.field private h:Lcom/huawei/hms/scankit/p/se;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/se;Landroid/graphics/Rect;IF[I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/re;->a:J

    .line 3
    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/re;->b:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/huawei/hms/scankit/p/re;->c:I

    .line 5
    iput v0, p0, Lcom/huawei/hms/scankit/p/re;->d:I

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    .line 7
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/re;->g:Landroid/graphics/Rect;

    .line 8
    iput p3, p0, Lcom/huawei/hms/scankit/p/re;->e:I

    if-eqz p5, :cond_0

    .line 9
    array-length p1, p5

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    .line 10
    aget p1, p5, v0

    iput p1, p0, Lcom/huawei/hms/scankit/p/re;->c:I

    const/4 p1, 0x1

    .line 11
    aget p1, p5, p1

    iput p1, p0, Lcom/huawei/hms/scankit/p/re;->d:I

    .line 12
    :cond_0
    iput p4, p0, Lcom/huawei/hms/scankit/p/re;->f:F

    .line 13
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/re;->c()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/se;->a()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/qe;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/qe;

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/re;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/scankit/p/qe;->b(I)V

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->d()F

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->d()F

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 18
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    .line 20
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_0

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->d()F

    move-result v3

    .line 23
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/qe;->f()F

    move-result v0

    iget v4, p0, Lcom/huawei/hms/scankit/p/re;->f:F

    mul-float v0, v0, v4

    .line 24
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private b()I
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/ze;->a(F)F

    move-result v0

    .line 2
    iget v1, p0, Lcom/huawei/hms/scankit/p/re;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/huawei/hms/scankit/p/re;->c:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/huawei/hms/scankit/p/re;->c:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 5
    iget v4, p0, Lcom/huawei/hms/scankit/p/re;->d:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 6
    iget v5, p0, Lcom/huawei/hms/scankit/p/re;->d:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 7
    iget v6, p0, Lcom/huawei/hms/scankit/p/re;->d:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v7, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float v1, v1, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v7, v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    mul-float v3, v3, v0

    add-float/2addr v3, v4

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v6, v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, v0

    add-float/2addr v2, v4

    add-float/2addr v6, v2

    float-to-int v0, v6

    .line 8
    invoke-static {v1, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/re;->a()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/re;->b:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/re;->a:J

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/re;->g:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 5
    iget v2, p0, Lcom/huawei/hms/scankit/p/re;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/scankit/p/se;->a(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/re;->a:J

    sub-long/2addr v0, v2

    .line 5
    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/re;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/huawei/hms/scankit/p/re;->b:J

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/scankit/p/se;->a(J)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/re;->h:Lcom/huawei/hms/scankit/p/se;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/se;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/re;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/re;->a:J

    :cond_2
    :goto_0
    return-void
.end method
