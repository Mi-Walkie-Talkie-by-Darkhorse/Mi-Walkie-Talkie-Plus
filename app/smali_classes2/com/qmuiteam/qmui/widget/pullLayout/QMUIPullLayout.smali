.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidx/core/view/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;,
        Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$PullEdge;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Lcom/qmuiteam/qmui/util/m;

.field private d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

.field private e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

.field private f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

.field private g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

.field private h:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;

.field private final i:[I

.field private j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/widget/OverScroller;

.field private m:F

.field private n:I

.field private o:I

.field private final p:Landroidx/core/view/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIPullLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->i:[I

    invoke-static {}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;->a()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_qmui_pull_enable_edge:I

    const/16 v0, 0xf

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroidx/core/view/q;

    invoke-direct {p2, p0}, Landroidx/core/view/q;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->p:Landroidx/core/view/q;

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lcom/qmuiteam/qmui/a;->e:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(I[II)I
    .locals 5

    if-lez p1, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    neg-int v2, v0

    invoke-virtual {p3, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(I)F

    move-result p3

    :goto_0
    int-to-float v2, p1

    mul-float v2, v2, p3

    float-to-int v2, v2

    if-nez v2, :cond_2

    return p1

    :cond_2
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v3

    if-nez v3, :cond_4

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v4

    neg-int v4, v4

    if-lt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v2

    neg-int v2, v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v1

    add-int/2addr v0, p3

    aput v0, p2, v1

    sub-int/2addr p1, p3

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p2

    neg-int p2, p2

    goto :goto_2

    :cond_4
    :goto_1
    sub-int p3, v0, v2

    aget v0, p2, v1

    add-int/2addr v0, p1

    aput v0, p2, v1

    const/4 p1, 0x0

    move p2, p3

    :goto_2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    :cond_5
    return p1
.end method

.method private a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->n:I

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)F

    move-result p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;

    return-object p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    return-void
.end method

.method private a(Landroid/view/View;III)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    if-gez p3, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_2
    if-gez p2, :cond_3

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    new-instance p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;-><init>(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Landroid/view/View;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V
    .locals 1

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->f(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;Z)Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->h:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    :cond_1
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;->a()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-ne v4, p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_1
    if-le v4, p1, :cond_4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    :goto_0
    move v1, p1

    :cond_4
    sub-int p1, v1, v4

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v4

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-gez v4, :cond_a

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    neg-int p1, p1

    if-ne v4, p1, :cond_6

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_6
    if-ge v4, p1, :cond_9

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_7

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_8

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    goto :goto_1

    :cond_8
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    :goto_1
    move v1, p1

    :cond_9
    sub-int p1, v1, v4

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v4

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_f

    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    if-lez v3, :cond_f

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-ne v3, p1, :cond_b

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_b
    if-le v3, p1, :cond_e

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_c

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_d

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    goto :goto_2

    :cond_d
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    :goto_2
    move v1, p1

    :cond_e
    sub-int v5, v1, v3

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    if-gez v3, :cond_14

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    neg-int p1, p1

    if-ne v3, p1, :cond_10

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_10
    if-ge v3, p1, :cond_13

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->g(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_11

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->h(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-nez v0, :cond_12

    iput v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    goto :goto_3

    :cond_12
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    :goto_3
    move v1, p1

    :cond_13
    sub-int v5, v1, v3

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_14
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    return-void
.end method

.method private b(I[II)I
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v0

    if-gez p1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-gez v0, :cond_3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_2

    aget p3, p2, v3

    add-int/2addr p3, p1

    aput p3, p2, v3

    sub-int/2addr v0, v1

    move v2, v0

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v3

    add-int/2addr v0, p3

    aput v0, p2, v3

    sub-int/2addr p1, p3

    :goto_1
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    :cond_3
    return p1
.end method

.method private c(I[II)I
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v0

    if-gez p1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(I)F

    move-result p3

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    neg-int v2, v1

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v3

    add-int/2addr v0, p3

    aput v0, p2, v3

    sub-int/2addr p1, p3

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p2

    goto :goto_2

    :cond_4
    :goto_1
    sub-int p3, v0, v1

    aget v0, p2, v3

    add-int/2addr v0, p1

    aput v0, p2, v3

    move p2, p3

    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    :cond_5
    return p1
.end method

.method private d(I[II)I
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    aget p3, p2, v2

    add-int/2addr p3, p1

    aput p3, p2, v2

    sub-int/2addr v0, v1

    move v2, v0

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v2

    add-int/2addr v0, p3

    aput v0, p2, v2

    sub-int/2addr p1, p3

    :goto_1
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    :cond_3
    return p1
.end method

.method private d(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    return-object p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    return-object p1

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(I[II)I
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v0

    if-gez p1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-gez v0, :cond_3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    if-gt v0, p1, :cond_2

    aget p3, p2, v2

    add-int/2addr p3, p1

    aput p3, p2, v2

    sub-int/2addr v0, v1

    move v2, v0

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v2

    add-int/2addr v0, p3

    aput v0, p2, v2

    sub-int/2addr p1, p3

    :goto_1
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    :cond_3
    return p1
.end method

.method private f(I[II)I
    .locals 5

    if-lez p1, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    neg-int v1, v0

    invoke-virtual {p3, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(I)F

    move-result p3

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    sub-int v2, v0, v1

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v4

    neg-int v4, v4

    if-lt v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v3

    add-int/2addr v0, p3

    aput v0, p2, v3

    sub-int/2addr p1, p3

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p2

    neg-int p2, p2

    goto :goto_2

    :cond_4
    :goto_1
    sub-int p3, v0, v1

    aget v0, p2, v3

    add-int/2addr v0, p1

    aput v0, p2, v3

    move p2, p3

    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    :cond_5
    return p1
.end method

.method private g(I[II)I
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v0

    if-lez p1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    aget p3, p2, v3

    add-int/2addr p3, p1

    aput p3, p2, v3

    sub-int/2addr v0, v1

    move v2, v0

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v3

    add-int/2addr v0, p3

    aput v0, p2, v3

    sub-int/2addr p1, p3

    :goto_1
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    :cond_3
    return p1
.end method

.method private h(I[II)I
    .locals 5

    if-gez p1, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c()F

    move-result p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p3, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->a(I)F

    move-result p3

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, p3

    float-to-int v1, v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    neg-int v2, v1

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    aget v0, p2, v3

    add-int/2addr v0, p3

    aput v0, p2, v3

    sub-int/2addr p1, p3

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p2

    goto :goto_2

    :cond_4
    :goto_1
    sub-int p3, v0, v1

    aget v0, p2, v3

    add-int/2addr v0, p1

    aput v0, p2, v3

    const/4 p1, 0x0

    move p2, p3

    :goto_2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    :cond_5
    return p1
.end method

.method private setHorOffsetToTargetOffsetHelper(I)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_1

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V

    :cond_1
    return-void
.end method

.method private setVerOffsetToTargetOffsetHelper(I)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_1

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->b(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    return-void

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Z)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iput v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v2

    neg-int v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)V

    :cond_6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setHorOffsetToTargetOffsetHelper(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setVerOffsetToTargetOffsetHelper(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    iget-boolean v5, v4, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setTargetView(Landroid/view/View;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "More than one view in xml are marked by qmui_is_target = true."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v5, v4, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    and-int v7, v1, v5

    if-eqz v7, :cond_6

    if-eq v5, v6, :cond_5

    const/4 v0, 0x2

    if-eq v5, v0, :cond_4

    const/4 v0, 0x4

    if-eq v5, v0, :cond_3

    const/16 v0, 0x8

    if-ne v5, v0, :cond_2

    const-string v0, "bottom"

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, "right"

    goto :goto_1

    :cond_4
    const-string v0, "top"

    goto :goto_1

    :cond_5
    const-string v0, "left"

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than one view in xml marked by qmui_layout_edge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    or-int/2addr v1, v5

    invoke-virtual {p0, v3, v4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setActionView(Landroid/view/View;Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v1, p5, v0

    div-int/lit8 v1, v1, 0x2

    neg-int p3, p3

    add-int/2addr v0, v1

    invoke-virtual {p1, p3, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v1, p4, p3

    div-int/lit8 v1, v1, 0x2

    neg-int v0, v0

    add-int/2addr p3, v1

    invoke-virtual {p1, v1, v0, p3, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, p4

    add-int/2addr p3, v0

    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->c(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    :cond_4
    return-void
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 11

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result v9

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v10}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpg-float v1, p2, v6

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const v7, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    move v7, p1

    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    neg-float p1, p2

    float-to-int v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v0

    move v3, v9

    move v8, v9

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_1
    cmpl-float v1, p2, v6

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    neg-int v4, v0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    const/high16 v7, -0x80000000

    if-eqz v1, :cond_5

    invoke-virtual {p0, v5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    cmpl-float v1, p2, v6

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_4

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 v6, -0x80000000

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    neg-int p1, p1

    move v6, p1

    :goto_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    neg-float p1, p2

    float-to-int v4, p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, v0

    move v3, v9

    move v8, v9

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_4
    cmpg-float v1, p2, v6

    if-gez v1, :cond_5

    if-gez v0, :cond_5

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    neg-int v4, v0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    cmpg-float v1, p3, v6

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_7

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    div-float/2addr p3, p1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7fffffff

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    :goto_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    neg-float p2, p3

    float-to-int v5, p2

    const/4 v8, 0x0

    move v2, v0

    move v3, v9

    move v6, v0

    move v7, v0

    move v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_7
    cmpl-float v1, p3, v6

    if-lez v1, :cond_8

    if-lez v9, :cond_8

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    neg-int v5, v9

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v9}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_8
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    cmpl-float v1, p3, v6

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_a

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    div-float/2addr p3, p1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    const/high16 v8, -0x80000000

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    neg-int p1, p1

    move v8, p1

    :goto_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    neg-float p1, p3

    float-to-int v5, p1

    const/4 p1, 0x0

    move v2, v0

    move v3, v9

    move v6, v0

    move v7, v0

    move v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_a
    cmpg-float v1, p3, v6

    if-gez v1, :cond_b

    if-gez v9, :cond_b

    iput v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    neg-int v5, v9

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    invoke-direct {p0, p1, v9}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)I

    move-result v6

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return v10

    :cond_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g(I[II)I

    move-result v0

    invoke-direct {p0, v0, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I[II)I

    move-result v0

    invoke-direct {p0, v0, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->h(I[II)I

    move-result v0

    invoke-direct {p0, v0, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b(I[II)I

    move-result v0

    invoke-direct {p0, p2, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d(I[II)I

    move-result v1

    invoke-direct {p0, v1, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f(I[II)I

    move-result v1

    invoke-direct {p0, v1, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c(I[II)I

    move-result v1

    invoke-direct {p0, v1, p4, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e(I[II)I

    move-result p4

    if-ne p2, p4, :cond_0

    if-ne p3, v0, :cond_0

    iget p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1, p4, v0, p5}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->i:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p5, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g(I[II)I

    move-result p2

    invoke-direct {p0, p2, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I[II)I

    move-result p2

    invoke-direct {p0, p2, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->h(I[II)I

    move-result p2

    invoke-direct {p0, p2, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b(I[II)I

    move-result p2

    invoke-direct {p0, p4, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d(I[II)I

    move-result p3

    invoke-direct {p0, p3, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f(I[II)I

    move-result p3

    invoke-direct {p0, p3, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->c(I[II)I

    move-result p3

    invoke-direct {p0, p3, p7, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e(I[II)I

    move-result p3

    if-ne p2, p5, :cond_0

    if-ne p3, p4, :cond_0

    iget p4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    const/4 p5, 0x5

    if-ne p4, p5, :cond_0

    invoke-direct {p0, p1, p3, p2, p6}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a()V

    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->l:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p4, 0x1

    iput p4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    :cond_0
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->p:Landroidx/core/view/q;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/core/view/q;->a(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->b:Landroid/view/View;

    const/4 p4, 0x1

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :cond_2
    :goto_0
    return p4
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->o:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a()V

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActionListener(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->h:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$b;

    return-void
.end method

.method public setActionView(Landroid/view/View;Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;)V
    .locals 2

    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    invoke-direct {v0, p1, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;-><init>(Landroid/view/View;I)V

    iget-boolean v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget-boolean v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->c(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget-boolean v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->d(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget-boolean v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->c(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    iget v1, p2, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->setActionView(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)V

    return-void
.end method

.method public setActionView(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)V
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_6

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->d:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->e:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->f:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->g:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Action view already exists other parent view."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabledEdges(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a:I

    return-void
.end method

.method public setMinScrollDuration(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->n:I

    return-void
.end method

.method public setNestedPreFlingVelocityScaleDown(F)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->m:F

    return-void
.end method

.method public setStopTargetViewFlingImpl(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Target already exists other parent view."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
