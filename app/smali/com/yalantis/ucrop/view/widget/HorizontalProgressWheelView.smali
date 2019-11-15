.class public Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
.super Landroid/view/View;
.source "HorizontalProgressWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

.field private c:F

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:F

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_progress_wheel_line:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_width_horizontal_wheel_progress_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_height_horizontal_wheel_progress_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_margin_horizontal_wheel_progress_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;F)V
    .locals 3

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->i:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->i:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->postInvalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    neg-float v1, p2

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->i:F

    invoke-interface {v0, v1, v2}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->a(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    add-int/2addr v1, v2

    div-int v7, v0, v1

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->i:F

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    rem-float v8, v0, v1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_progress_wheel_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    div-int/lit8 v0, v7, 0x4

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    int-to-float v1, v6

    div-int/lit8 v2, v7, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    neg-float v0, v8

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    sub-float v2, v0, v2

    neg-float v0, v8

    iget-object v3, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:I

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v7, 0x3

    div-int/lit8 v0, v0, 0x4

    if-le v6, v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    sub-int v1, v7, v6

    int-to-float v1, v1

    div-int/lit8 v2, v7, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    invoke-interface {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->a()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:Z

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    invoke-interface {v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->b()V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMiddleLineColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->invalidate()V

    return-void
.end method

.method public setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    return-void
.end method
