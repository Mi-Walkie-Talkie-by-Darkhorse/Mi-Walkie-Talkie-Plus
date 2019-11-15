.class public Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;
.super Landroid/widget/TextView;
.source "AspectRatioTextView.java"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:Ljava/lang/String;

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    sget-object v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    sget-object v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    aput v4, v2, v4

    aput-object v2, v1, v5

    new-array v2, v6, [I

    aput p1, v2, v4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setGravity(I)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->e:Ljava/lang/String;

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_x:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    :goto_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$dimen;->ucrop_size_dot_scale_text_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->c:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    goto :goto_0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)F
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a()V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b()V

    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setActiveColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->a(I)V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->invalidate()V

    return-void
.end method

.method public setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V
    .locals 2
    .param p1    # Lcom/yalantis/ucrop/model/AspectRatio;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->b()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->c()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    :goto_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b()V

    return-void

    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    goto :goto_0
.end method
