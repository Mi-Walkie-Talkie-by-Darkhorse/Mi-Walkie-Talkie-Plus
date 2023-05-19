.class public Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    const-string p1, "%"

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 9
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    const-string p1, "%"

    .line 13
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->k:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    const/16 v0, 0x56

    .line 14
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->m:I

    const/16 v0, 0x2a

    .line 15
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->n:I

    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->o:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    .line 3
    div-int/2addr v1, v2

    int-to-float v1, v1

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const v3, 0x7f06018b

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 10
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    neg-float v5, v0

    invoke-virtual {v4, v5, v5, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$a;->a:[I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    .line 15
    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->k:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    int-to-double v3, v0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v7

    const-wide v7, 0x4076800000000000L    # 360.0

    mul-double v3, v3, v7

    double-to-int v0, v3

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->m:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 23
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    neg-float v7, v4

    div-float/2addr v7, v1

    .line 24
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->n:I

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v5, v6, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    div-float/2addr v4, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->o:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    neg-int v1, v3

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
