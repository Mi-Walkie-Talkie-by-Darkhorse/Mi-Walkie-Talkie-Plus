.class public Lcom/yalantis/ucrop/view/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# instance fields
.field private A:Lcom/yalantis/ucrop/a/d;

.field private B:Z

.field protected a:I

.field protected b:I

.field protected c:[F

.field protected d:[F

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private g:I

.field private h:I

.field private i:F

.field private j:[F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Z

.field private u:F

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Z

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_min_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_area_line_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->a()V

    return-void
.end method

.method private a(FF)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    :goto_2
    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move v5, v2

    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move v4, v2

    :goto_4
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move v3, v2

    :goto_5
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :goto_6
    invoke-virtual {v6, v5, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->b()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    :cond_1
    :goto_7
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, p2, p1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p1, v3, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->b()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    goto/16 :goto_7

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move v5, v2

    goto/16 :goto_3

    :cond_5
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move v4, v2

    goto/16 :goto_4

    :cond_6
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move v3, v2

    goto/16 :goto_5

    :cond_7
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(FF)I
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v4, -0x1

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    int-to-double v2, v0

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:[F

    aget v0, v0, v5

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:[F

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    sub-float v6, p2, v6

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    div-int/lit8 v2, v5, 0x2

    :goto_1
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    :cond_1
    return v4

    :cond_2
    move-wide v0, v2

    move v2, v4

    goto :goto_1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/yalantis/ucrop/c/g;->a(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:[F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/yalantis/ucrop/c/g;->b(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_stroke_size:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_color:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private c(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x2

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_stroke_size:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_color:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x1

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_circle_dimmed_layer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_dimmed_color:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->b(Landroid/content/res/TypedArray;)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_frame:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->c(Landroid/content/res/TypedArray;)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_grid:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    aput v5, v3, v2

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v6, v8

    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    aput v5, v2, v4

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    aput v5, v2, v3

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v2, v4, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v6, v8

    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v5, v8

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    aput v4, v0, v2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v5, v8

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    aput v4, v0, v2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getCropViewRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOverlayViewChangeListener()Lcom/yalantis/ucrop/a/d;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v2, v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:I

    sub-int v0, v3, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:I

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Z

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:F

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_4

    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    iput v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/yalantis/ucrop/view/OverlayView;->b(FF)I

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    if-ne v2, v6, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v0, :cond_5

    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    if-eq v4, v6, :cond_5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/yalantis/ucrop/view/OverlayView;->a(FF)V

    iput v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v0, :cond_6

    iput v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:F

    iput v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Lcom/yalantis/ucrop/a/d;->a(Landroid/graphics/RectF;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public setCircleDimmedLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    return-void
.end method

.method public setFreestyleCropEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Z

    return-void
.end method

.method public setOverlayViewChangeListener(Lcom/yalantis/ucrop/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:F

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->setupCropBounds()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Z

    goto :goto_0
.end method

.method public setupCropBounds()V
    .locals 7

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v1

    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:Lcom/yalantis/ucrop/a/d;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/a/d;->a(Landroid/graphics/RectF;)V

    :cond_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->b()V

    return-void

    :cond_1
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method
