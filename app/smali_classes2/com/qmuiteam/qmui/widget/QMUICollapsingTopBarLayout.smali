.class public Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;
.super Landroid/widget/FrameLayout;
.source "QMUICollapsingTopBarLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/c;
.implements Lcom/qmuiteam/qmui/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;,
        Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;,
        Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private A:I

.field private a:Z

.field private b:I

.field private c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/graphics/Rect;

.field final j:Lcom/qmuiteam/qmui/util/a;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Z

.field private p:Landroid/animation/ValueAnimator;

.field private q:J

.field private r:I

.field private s:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field v:I

.field w:Ljava/lang/Object;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a:Z

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->i:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->r:I

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->u:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->x:I

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->y:I

    .line 10
    iput v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->z:I

    .line 11
    iput v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->A:I

    .line 12
    new-instance v3, Lcom/qmuiteam/qmui/util/a;

    invoke-direct {v3, p0}, Lcom/qmuiteam/qmui/util/a;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    .line 13
    sget-object v4, Lcom/qmuiteam/qmui/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/util/a;->b(Landroid/view/animation/Interpolator;)V

    .line 14
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/l;->a(Landroid/content/Context;)V

    .line 15
    sget-object v3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleGravity:I

    const/16 v3, 0x51

    .line 17
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 18
    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->d(I)V

    .line 19
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_collapsedTitleGravity:I

    const v3, 0x800013

    .line 20
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 21
    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->b(I)V

    .line 22
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMargin:I

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    .line 24
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 25
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginStart:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    .line 26
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    .line 28
    :cond_1
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 29
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginTop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    .line 30
    :cond_2
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 31
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    .line 32
    :cond_3
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_titleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    .line 33
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$style;->QMUI_CollapsingTopBarLayoutExpanded:I

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->c(I)V

    .line 35
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$style;->QMUI_CollapsingTopBarLayoutCollapsed:I

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->a(I)V

    .line 36
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 37
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleTextAppearance:I

    .line 38
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 39
    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->c(I)V

    .line 40
    :cond_4
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_collapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 41
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_collapsedTitleTextAppearance:I

    .line 42
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 43
    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/util/a;->a(I)V

    .line 44
    :cond_5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_scrimVisibleHeightTrigger:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->r:I

    .line 45
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_scrimAnimationDuration:I

    const/16 p3, 0x258

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->q:J

    .line 46
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_topBarId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b:I

    .line 47
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_followTopBarCommonSkin:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 48
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a()V

    goto :goto_0

    .line 49
    :cond_6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_contentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrimInner(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_statusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 53
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/r;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)I
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    .line 11
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 12
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 13
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private a(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->c()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 14
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c()V

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    .line 17
    iget-wide v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->q:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/qmuiteam/qmui/a;->b:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/qmuiteam/qmui/a;->c:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$b;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$b;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_2

    .line 21
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 25
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static b(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->u:Ljava/util/ArrayList;

    return-object p0
.end method

.method static c(Landroid/view/View;)Lcom/qmuiteam/qmui/util/m;
    .locals 2

    .line 14
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/util/m;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    .line 16
    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d:Landroid/view/View;

    .line 4
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d:Landroid/view/View;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v5, :cond_2

    .line 11
    move-object v0, v4

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    .line 13
    :cond_4
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a:Z

    return-void
.end method

.method private d(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getWindowInsetTop()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v0

    return v0

    .line 4
    :cond_0
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setContentScrimInner(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;)I

    move-result v0

    .line 8
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_5
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Z)I
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez p2, :cond_0

    .line 35
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c(Landroid/view/View;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/m;->b()I

    move-result v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public a()V
    .locals 1

    .line 6
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_title_color:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setCollapsedTextColorSkinAttr(I)V

    .line 7
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_title_color:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setExpandedTextColorSkinAttr(I)V

    .line 8
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_bg:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrimSkinAttr(I)V

    .line 9
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_bg:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimSkinAttr(I)V

    return-void
.end method

.method public a(ILandroid/content/res/Resources$Theme;)Z
    .locals 1
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->x:I

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->x:I

    invoke-static {p1, p2, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrimInner(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->y:I

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->y:I

    invoke-static {p1, p2, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->z:I

    if-eqz p1, :cond_2

    .line 45
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    .line 46
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->A:I

    if-eqz p1, :cond_3

    .line 49
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    .line 50
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/util/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 1

    .line 26
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 30
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addOnOffsetUpdateListener(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->v:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    if-lez v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->v:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->v:I

    sub-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/util/a;->a([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->generateDefaultLayoutParams()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->generateDefaultLayoutParams()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->c()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->f()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->g()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->j()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method getScrimAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->q:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->r:I

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result v0

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->t(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->l()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->p(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->s:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->s:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 7
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->s:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->s:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->w:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->p(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 8
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Landroid/view/View;Z)I

    move-result p1

    .line 11
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->i:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lcom/qmuiteam/qmui/util/l;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTitleContainerRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v6, v3, p1

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    add-int/2addr v3, p1

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/qmuiteam/qmui/util/a;->a(IIII)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    add-int/2addr v2, v3

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v1, v2, p4, p5}, Lcom/qmuiteam/qmui/util/a;->b(IIII)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->o()V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_4

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c(Landroid/view/View;)Lcom/qmuiteam/qmui/util/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/m;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz p1, :cond_8

    .line 19
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->l()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/util/a;->a(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->d:Landroid/view/View;

    if-eqz p1, :cond_7

    if-ne p1, p0, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_4

    .line 23
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 24
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->b()V

    :cond_0
    return-void
.end method

.method public removeOnOffsetUpdateListener(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCollapsedTextColorSkinAttr(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->z:I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    .line 3
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->b(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->z:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->x:I

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrimInner(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimSkinAttr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->x:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setExpandedTextColorSkinAttr(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->A:I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    .line 3
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->d(I)V

    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->h:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->f:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->c(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->A:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->b(Landroid/graphics/Typeface;)V

    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    .line 5
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->n:I

    .line 6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->q:J

    return-void
.end method

.method public setScrimUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eq v0, p1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->r:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->r:I

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->o:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimAlpha(I)V

    .line 5
    :goto_2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->o:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->y:I

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimSkinAttr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->y:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrimInner(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->k:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
