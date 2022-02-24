.class public Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
.super Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$i;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$h;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;,
        Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;
    }
.end annotation


# static fields
.field public static final E:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private final D:Ljava/lang/Runnable;

.field private d:F

.field private e:Landroid/view/View;

.field private f:F

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:F

.field private n:I

.field private o:Landroid/view/VelocityTracker;

.field private p:F

.field private q:F

.field private r:Landroid/widget/OverScroller;

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:I

.field private y:Lcom/qmuiteam/qmui/util/m;

.field private z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->E:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$h;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$h;-><init>()V

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$i;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$i;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/arch/R$attr;->SwipeBackLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    const/high16 v0, -0x67000000

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->n:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    .line 7
    sget-object v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->E:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    .line 10
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->C:Z

    .line 11
    new-instance v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$a;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$a;-><init>(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->D:Ljava/lang/Runnable;

    .line 12
    sget-object v1, Lcom/qmuiteam/qmui/arch/R$styleable;->SwipeBackLayout:[I

    sget v2, Lcom/qmuiteam/qmui/arch/R$style;->SwipeBackLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget p3, Lcom/qmuiteam/qmui/arch/R$styleable;->SwipeBackLayout_shadow_left:I

    sget v1, Lcom/qmuiteam/qmui/arch/R$drawable;->shadow_left:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 14
    sget v1, Lcom/qmuiteam/qmui/arch/R$styleable;->SwipeBackLayout_shadow_right:I

    sget v2, Lcom/qmuiteam/qmui/arch/R$drawable;->shadow_right:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 15
    sget v2, Lcom/qmuiteam/qmui/arch/R$styleable;->SwipeBackLayout_shadow_bottom:I

    sget v3, Lcom/qmuiteam/qmui/arch/R$drawable;->shadow_bottom:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 16
    sget v3, Lcom/qmuiteam/qmui/arch/R$styleable;->SwipeBackLayout_shadow_top:I

    sget v4, Lcom/qmuiteam/qmui/arch/R$drawable;->shadow_top:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 17
    invoke-virtual {p0, p3, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setShadow(II)V

    const/4 p3, 0x2

    .line 18
    invoke-virtual {p0, v1, p3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setShadow(II)V

    const/16 p3, 0x8

    .line 19
    invoke-virtual {p0, v2, p3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setShadow(II)V

    const/4 p3, 0x4

    .line 20
    invoke-virtual {p0, v3, p3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setShadow(II)V

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float p2, p2, p3

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 24
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->s:I

    .line 25
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    .line 26
    iput p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->q:F

    .line 27
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lcom/qmuiteam/qmui/a;->e:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a(FF)F
    .locals 2

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    sub-float/2addr p2, p1

    return p2

    .line 8
    :cond_1
    :goto_0
    iget p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    sub-float/2addr p1, p2

    return p1
.end method

.method private a(FFF)F
    .locals 2

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private a(III)I
    .locals 1

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private a(IIII)I
    .locals 6

    .line 23
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->q:F

    float-to-int v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    float-to-int v1, v1

    invoke-direct {p0, p3, v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(III)I

    move-result p3

    .line 24
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->q:F

    float-to-int v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(III)I

    move-result p4

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 27
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 28
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p3, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p4, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v2, p0, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;I)I

    move-result v2

    .line 30
    invoke-direct {p0, p1, p3, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(III)I

    move-result p1

    .line 31
    invoke-direct {p0, p2, p4, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(III)I

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public static a(Landroid/content/Context;ILcom/qmuiteam/qmui/arch/SwipeBackLayout$f;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
    .locals 2

    .line 53
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 55
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {v0, p3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setCallback(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setViewMoveAction(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
    .locals 3

    .line 48
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setViewMoveAction(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setCallback(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)V

    return-object v0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    .line 40
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->n:I

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    .line 41
    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 42
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, p2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1, v3, v3, v1, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 47
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 70
    sget v0, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_layout_in_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "swipe_back_view"

    if-ne v0, v1, :cond_0

    .line 71
    sget v0, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 72
    instance-of v0, p0, Lcom/qmuiteam/qmui/util/m;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 2

    .line 59
    sget v0, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    instance-of v1, v0, Lcom/qmuiteam/qmui/util/m;

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    .line 62
    sget v1, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    check-cast v0, Lcom/qmuiteam/qmui/util/m;

    :goto_0
    const/16 p0, 0x8

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 64
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    .line 65
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 66
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    .line 67
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    neg-int p0, p2

    .line 69
    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    :goto_1
    return-void
.end method

.method private b(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 15
    div-int/lit8 v1, v0, 0x2

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 17
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 20
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x100

    :goto_0
    const/16 p2, 0x258

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 25
    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->i:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 30
    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->j:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 32
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 33
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr p2, v5

    .line 35
    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 37
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    .line 40
    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(FF)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(IIII)Z
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    return p1

    .line 10
    :cond_0
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(IIII)I

    move-result v6

    .line 11
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method private c(FF)I
    .locals 8

    .line 1
    iget v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->t:F

    sub-float v5, p1, v3

    .line 2
    iget v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->u:F

    sub-float v6, p2, v4

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->h:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->s:I

    int-to-float v7, v1

    move-object v1, p0

    .line 4
    invoke-interface/range {v0 .. v7}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    if-eqz v0, :cond_1

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->t:F

    .line 6
    iput p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    iput p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->u:F

    .line 7
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e()V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 9
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    return p1
.end method

.method private c()V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v0, p0, v1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f:F

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v0, p0, v1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    .line 12
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f:F

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    if-nez v0, :cond_0

    .line 13
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    .line 14
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f:F

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    .line 16
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d()V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    .line 19
    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    invoke-interface {v3, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f:F

    invoke-interface {v1, v2, v3, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;->a(IIF)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    .line 3
    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->B:Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v0, p0, v1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    .line 5
    iget v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    invoke-interface {v3, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;->a(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->q:F

    iget v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    invoke-direct {p0, v1, v4, v5}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(FFF)F

    move-result v1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->q:F

    iget v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->p:F

    invoke-direct {p0, v1, v4, v5}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(FFF)F

    move-result v1

    :goto_1
    const/4 v10, 0x0

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v6, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v8, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    iget v9, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    move-object v5, p0

    move v7, v1

    invoke-interface/range {v4 .. v9}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;FIF)I

    move-result v0

    float-to-int v1, v1

    .line 7
    invoke-direct {p0, v10, v0, v10, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(IIII)Z

    goto :goto_3

    .line 8
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v6, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v8, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    iget v9, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    move-object v5, p0

    move v7, v1

    invoke-interface/range {v4 .. v9}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;FIF)I

    move-result v0

    float-to-int v1, v1

    .line 9
    invoke-direct {p0, v0, v10, v1, v10}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(IIII)Z

    :goto_3
    return-void
.end method

.method private f(I)V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    .line 12
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    .line 13
    invoke-interface {v2, p0, v3, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result v2

    .line 14
    invoke-interface {v1, p1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;->a(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;-><init>(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Landroid/graphics/Rect;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Z)Z
    .locals 8

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 11
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 13
    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    .line 14
    invoke-virtual {v5}, Lcom/qmuiteam/qmui/util/m;->a()I

    move-result v6

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    .line 15
    invoke-virtual {v7}, Lcom/qmuiteam/qmui/util/m;->b()I

    move-result v7

    sub-int v7, v4, v7

    .line 16
    invoke-virtual {v5, v6, v7}, Lcom/qmuiteam/qmui/util/m;->a(II)Z

    .line 17
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->c()V

    if-eqz v0, :cond_0

    .line 18
    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 19
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 22
    :cond_2
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne p1, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->g:Ljava/util/List;

    return-void
.end method

.method public computeScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3
    iget p4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->m:F

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1

    if-eqz v0, :cond_1

    iget p4, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-eqz p4, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    :cond_1
    return p3
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto :goto_1

    .line 10
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->c(FF)I

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    .line 12
    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v7, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget-object v8, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    iget v9, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    .line 13
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(FF)F

    move-result v10

    move-object v6, p0

    .line 14
    invoke-interface/range {v5 .. v10}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;Lcom/qmuiteam/qmui/util/m;IF)V

    .line 15
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->c()V

    goto :goto_0

    .line 16
    :cond_5
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p0, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 18
    :cond_6
    :goto_0
    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    goto :goto_1

    .line 21
    :cond_8
    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->t:F

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->u:F

    .line 23
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne v0, v3, :cond_9

    .line 24
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p0, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 26
    :cond_9
    :goto_1
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne p1, v4, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne p1, v4, :cond_4

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    .line 12
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o:Landroid/view/VelocityTracker;

    .line 13
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 14
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(IIII)Z

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    goto :goto_1

    .line 16
    :cond_5
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-nez v0, :cond_6

    .line 17
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->c(FF)I

    goto :goto_0

    :cond_6
    if-ne v0, v4, :cond_7

    .line 18
    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    iget-object v7, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->e:Landroid/view/View;

    iget-object v8, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->y:Lcom/qmuiteam/qmui/util/m;

    iget v9, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->A:I

    .line 19
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(FF)F

    move-result v10

    move-object v6, p0

    .line 20
    invoke-interface/range {v5 .. v10}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;Lcom/qmuiteam/qmui/util/m;IF)V

    .line 21
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->c()V

    goto :goto_0

    .line 22
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p0, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    .line 24
    :cond_8
    :goto_0
    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    .line 25
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    goto :goto_1

    .line 26
    :cond_9
    iget p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne p1, v4, :cond_a

    .line 27
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f()V

    .line 28
    :cond_a
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a()V

    goto :goto_1

    .line 29
    :cond_b
    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->v:F

    iput v2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->t:F

    .line 30
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->w:F

    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->u:F

    .line 31
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-ne v0, v3, :cond_c

    .line 32
    invoke-direct {p0, v2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    :cond_c
    :goto_1
    return v4
.end method

.method public setCallback(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->h:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

    return-void
.end method

.method setDragState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x:I

    .line 4
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->f(I)V

    :cond_0
    return-void
.end method

.method public setEnableSwipeBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->C:Z

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->d:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShadow(II)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    .line 4
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setViewMoveAction(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->z:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    return-void
.end method
