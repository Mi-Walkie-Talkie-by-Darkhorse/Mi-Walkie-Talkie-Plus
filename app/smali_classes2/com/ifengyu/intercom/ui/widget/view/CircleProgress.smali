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
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    const-string v0, "%"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    const-string v0, "%"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const v3, 0x7f0f0095

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->a:F

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->k:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    const/16 v0, 0x56

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->m:I

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->n:I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->o:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v6, 0x64

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->j:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$1;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    if-lt v0, v6, :cond_1

    iput v6, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->f:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    int-to-double v6, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v3, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->m:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v4, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    neg-float v3, v2

    div-float/2addr v3, v10

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->n:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->i:Ljava/lang/String;

    div-float/2addr v2, v10

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->o:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->d:I

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->e:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->invalidate()V

    return-void
.end method
