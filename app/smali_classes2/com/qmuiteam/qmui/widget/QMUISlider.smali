.class public Lcom/qmuiteam/qmui/widget/QMUISlider;
.super Landroid/widget/FrameLayout;
.source "QMUISlider.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;,
        Lcom/qmuiteam/qmui/widget/QMUISlider$a;,
        Lcom/qmuiteam/qmui/widget/QMUISlider$b;
    }
.end annotation


# static fields
.field private static r:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

.field private g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

.field private h:Lcom/qmuiteam/qmui/util/m;

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider;->r:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_slider_bar_bg_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider;->r:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_slider_bar_progress_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progressColor"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUISlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUISliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUISlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->e:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    .line 6
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->k:Z

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->l:I

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->m:I

    .line 9
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    .line 10
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider:[I

    invoke-virtual {v2, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_height:I

    const/4 v2, 0x2

    .line 14
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 15
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    .line 16
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_normal_color:I

    const/4 v3, -0x1

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->c:I

    .line 17
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_progress_color:I

    const v3, -0xffff01

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->d:I

    .line 18
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_tick_count:I

    const/16 v3, 0x64

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    .line 19
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_constraint_thumb_in_moving:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->e:Z

    .line 20
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_thumb_size_size:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 22
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 23
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_thumb_style_attr:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    .line 26
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_use_clip_children_by_developer:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_padding_hor_for_thumb_shadow:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 29
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUISlider_qmui_slider_bar_padding_ver_for_thumb_shadow:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 30
    invoke-virtual {p0, v4, v5, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    .line 33
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->p:I

    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 37
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 38
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 39
    invoke-virtual {p0, p1, p3, v3}, Lcom/qmuiteam/qmui/widget/QMUISlider;->i(Landroid/content/Context;II)Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    move-result-object p1

    .line 40
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_2

    .line 41
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    .line 42
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    .line 43
    new-instance p3, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {p3, p2}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    .line 44
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->h()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->a(II)V

    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "thumbView must be a instance of View"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    int-to-float v2, v0

    mul-float v2, v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/qmuiteam/qmui/util/g;->c(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->j(I)V

    return-void
.end method

.method private b(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v1, p2

    .line 2
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    .line 4
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUISlider;->j(I)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v2

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    .line 7
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->j(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 9
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 10
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    int-to-float v0, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    .line 11
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->j(I)V

    :goto_0
    return-void
.end method

.method private c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private f(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUISlider;->g(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method private getMaxThumbOffset()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    .line 2
    invoke-interface {v1}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->getLeftRightMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private j(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {v0, p1, v1}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->a(II)V

    return-void
.end method


# virtual methods
.method protected d(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;Z)V
    .locals 0

    .line 1
    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 2
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;IIIIFLandroid/graphics/Paint;II)V
    .locals 0

    return-void
.end method

.method protected g(Landroid/view/View;FF)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    return v0
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider;->r:La/b/g;

    return-object v0
.end method

.method public getTickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    return v0
.end method

.method protected h()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected i(Landroid/content/Context;II)Lcom/qmuiteam/qmui/widget/QMUISlider$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;

    invoke-direct {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->c:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    int-to-float v3, v4

    int-to-float v0, v0

    int-to-float v6, v5

    int-to-float v2, v2

    invoke-virtual {v1, v3, v0, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    iget v10, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    iget-object v11, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/qmuiteam/qmui/widget/QMUISlider;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;Z)V

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->getMaxThumbOffset()I

    move-result v1

    int-to-float v1, v1

    iget v6, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 9
    iget v6, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    int-to-float v6, v6

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 10
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->d:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 13
    iget-boolean v7, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    if-nez v7, :cond_0

    .line 14
    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v7, v1}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v1, v3, v0, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    iget v10, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    iget-object v11, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    const/4 v12, 0x1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/qmuiteam/qmui/widget/QMUISlider;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v6, v3, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    iget v10, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    iget-object v11, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    const/4 v12, 0x1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/qmuiteam/qmui/widget/QMUISlider;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;Z)V

    .line 19
    :goto_0
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->a:Landroid/graphics/Paint;

    iget v8, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->c:I

    iget v9, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/qmuiteam/qmui/widget/QMUISlider;->e(Landroid/graphics/Canvas;IIIIFLandroid/graphics/Paint;II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    invoke-interface {v2}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->getLeftRightMargin()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p5, p3

    sub-int/2addr p5, p2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    add-int/2addr v0, v1

    add-int/2addr p4, p2

    .line 7
    invoke-virtual {p1, v1, p2, v0, p4}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    if-ge p2, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 4
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->l:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->m:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->f(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    invoke-interface {p1, v2}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->setPress(Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz p1, :cond_d

    .line 8
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    invoke-interface {p1, p0, v0, v1, v3}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->e(Lcom/qmuiteam/qmui/widget/QMUISlider;IIZ)V

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->m:I

    sub-int v0, p1, v0

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->m:I

    .line 12
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    if-eqz v3, :cond_5

    .line 13
    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->l:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->p:I

    if-le v3, v4, :cond_5

    .line 14
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    .line 15
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz v3, :cond_3

    .line 16
    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {v3, p0, v4, v5}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->d(Lcom/qmuiteam/qmui/widget/QMUISlider;II)V

    :cond_3
    if-lez v0, :cond_4

    .line 17
    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->p:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 18
    :cond_4
    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->p:I

    add-int/2addr v0, v3

    .line 19
    :cond_5
    :goto_0
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    if-eqz v3, :cond_d

    .line 20
    invoke-static {p0, v2}, Lcom/qmuiteam/qmui/util/l;->e(Landroid/view/View;Z)V

    .line 21
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->getMaxThumbOffset()I

    move-result v3

    .line 22
    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    .line 23
    iget-boolean v5, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->e:Z

    if-eqz v5, :cond_6

    .line 24
    invoke-direct {p0, p1, v3}, Lcom/qmuiteam/qmui/widget/QMUISlider;->b(II)V

    goto :goto_1

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->h:Lcom/qmuiteam/qmui/util/m;

    .line 26
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v5

    add-int/2addr v5, v0

    .line 27
    invoke-static {v5, v1, v3}, Lcom/qmuiteam/qmui/util/g;->c(III)I

    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/util/m;->f(I)Z

    .line 29
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->a()V

    .line 30
    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    if-eq v4, v0, :cond_7

    .line 31
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->c(Lcom/qmuiteam/qmui/widget/QMUISlider;IIZ)V

    .line 32
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    :cond_8
    if-eq v0, v2, :cond_9

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    :cond_9
    const/4 v3, -0x1

    .line 33
    iput v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->m:I

    .line 34
    invoke-static {p0, v1}, Lcom/qmuiteam/qmui/util/l;->e(Landroid/view/View;Z)V

    .line 35
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    if-eqz v3, :cond_a

    .line 36
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    .line 37
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz v3, :cond_a

    .line 38
    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {v3, p0, v4, v5}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->b(Lcom/qmuiteam/qmui/widget/QMUISlider;II)V

    .line 39
    :cond_a
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    if-eqz v3, :cond_b

    .line 40
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->n:Z

    .line 41
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->g:Lcom/qmuiteam/qmui/widget/QMUISlider$b;

    invoke-interface {p1, v1}, Lcom/qmuiteam/qmui/widget/QMUISlider$b;->setPress(Z)V

    goto :goto_2

    :cond_b
    if-ne v0, v2, :cond_c

    .line 42
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->k:Z

    if-eqz v0, :cond_c

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 44
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->l:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->p:I

    if-ge v0, v1, :cond_c

    .line 45
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    .line 46
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->getMaxThumbOffset()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->b(II)V

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 48
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz p1, :cond_c

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    if-eq v0, v1, :cond_c

    .line 49
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {p1, p0, v1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->c(Lcom/qmuiteam/qmui/widget/QMUISlider;IIZ)V

    .line 50
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz p1, :cond_d

    .line 51
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {p1, p0, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->a(Lcom/qmuiteam/qmui/widget/QMUISlider;II)V

    :cond_d
    :goto_3
    return v2
.end method

.method public setBarHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBarNormalColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->c:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarProgressColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/qmuiteam/qmui/widget/QMUISlider$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    return-void
.end method

.method public setClickToChangeProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->k:Z

    return-void
.end method

.method public setConstraintThumbInMoving(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->e:Z

    return-void
.end method

.method public setCurrentProgress(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->o:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/qmuiteam/qmui/util/g;->c(III)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->j:I

    if-eq v0, p1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->j(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->f:Lcom/qmuiteam/qmui/widget/QMUISlider$a;

    if-eqz v0, :cond_0

    .line 6
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    invoke-interface {v0, p0, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUISlider$a;->c(Lcom/qmuiteam/qmui/widget/QMUISlider;IIZ)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setThumbSkin(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUISlider;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setTickCount(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
