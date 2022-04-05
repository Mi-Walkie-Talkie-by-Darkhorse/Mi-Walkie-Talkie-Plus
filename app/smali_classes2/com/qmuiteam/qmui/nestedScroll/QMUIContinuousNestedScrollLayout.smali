.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;
.implements Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;
    }
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/nestedScroll/c;

.field private b:Lcom/qmuiteam/qmui/nestedScroll/a;

.field private c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

.field private d:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:F

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    new-instance p1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$a;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->g:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i:Z

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j:Z

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->k:I

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->l:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->m:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->n:I

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    return-object p0
.end method

.method private a(IIIIII)V
    .locals 10

    move-object v8, p0

    iget-boolean v0, v8, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j()V

    iget-object v0, v8, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    iget-object v0, v8, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->a()V

    :cond_0
    iget-object v0, v8, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IIIIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;

    invoke-interface {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IZ)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->k:I

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IIIIII)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/a;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    return-object p0
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/c;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    return-object p0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setEnableFadeInAndOut(Z)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setCallback(Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;)V

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;-><init>(II)V

    const/4 v1, 0x5

    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->c:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i()V

    return-void
.end method

.method public a(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 9

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/c;->getCurrentScroll()I

    move-result v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/c;->getScrollOffsetRange()I

    move-result v0

    move v4, v0

    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-nez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getCurrentScroll()I

    move-result v0

    move v7, v0

    :goto_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-nez v0, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getScrollOffsetRange()I

    move-result v1

    move v8, v1

    :goto_3
    neg-int v5, p1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IIIIII)V

    return-void
.end method

.method public addOnScrollListener(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IZ)V

    return-void
.end method

.method public b(I)V
    .locals 2

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p0, v1, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/a;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IZ)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IZ)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->k:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i()V

    iput-boolean v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->l:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->m:F

    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->n:I

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->n:I

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->m:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->n:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->l:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a(IZ)V

    return-void
.end method

.method public g()V
    .locals 6

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/c;->getCurrentScroll()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/c;->getScrollOffsetRange()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v3

    if-gtz v3, :cond_1

    return-void

    :cond_1
    const v4, 0x7fffffff

    if-ge v2, v3, :cond_6

    if-lez v2, :cond_2

    iget-boolean v5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->g:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    invoke-interface {v3}, Lcom/qmuiteam/qmui/nestedScroll/a;->getCurrentScroll()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    const/high16 v5, -0x80000000

    invoke-interface {v3, v5}, Lcom/qmuiteam/qmui/nestedScroll/a;->a(I)V

    :cond_3
    if-ge v0, v1, :cond_5

    if-lez v2, :cond_5

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_4

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v0, v4}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v0, v4}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getCurrentScroll()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    neg-int v1, v3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public getBottomAreaBehavior()Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->d:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    return-object v0
.end method

.method public getBottomView()Lcom/qmuiteam/qmui/nestedScroll/a;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    return-object v0
.end method

.method public getCurrentScroll()I
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/c;->getCurrentScroll()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetCurrent()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getCurrentScroll()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getCurrentScrollPercent()F
    .locals 3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getOffsetCurrent()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getOffsetRange()I
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getContentHeight()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/c;->getScrollOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->getScrollOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getTopAreaBehavior()Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    return-object v0
.end method

.method public getTopView()Lcom/qmuiteam/qmui/nestedScroll/c;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/a;->stopScroll()V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->b()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h()V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    if-lez p5, :cond_0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result p1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result p2

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i()V

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$d;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBottomAreaView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;)V
    .locals 2
    .param p2    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/a;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->b:Lcom/qmuiteam/qmui/nestedScroll/a;

    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$c;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$c;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/b;->a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V

    if-nez p2, :cond_1

    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;-><init>(II)V

    :cond_1
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->d()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v1, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->d:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->d:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "bottomView must implement from IQMUIContinuousNestedBottomView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDraggableScrollBarEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->a()V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEnableScrollBarFadeInOut(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->i:Z

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->j()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->a()V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setEnableFadeInAndOut(Z)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setKeepBottomAreaStableWhenCheckLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->g:Z

    return-void
.end method

.method public setTopAreaView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;)V
    .locals 2
    .param p2    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/c;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/c;

    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$b;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$b;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/b;->a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V

    if-nez p2, :cond_1

    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;-><init>(II)V

    :cond_1
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->d()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v1, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "topView must implement from IQMUIContinuousNestedTopView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
