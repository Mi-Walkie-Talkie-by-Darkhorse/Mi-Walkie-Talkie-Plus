.class Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;
.super Ljava/lang/Object;
.source "QMUIContinuousNestedTopAreaBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:I

.field b:Landroid/widget/OverScroller;

.field c:Landroid/view/animation/Interpolator;

.field private d:Z

.field private e:Z

.field private f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private g:Landroid/view/View;

.field final synthetic h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/qmuiteam/qmui/a;->e:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e:Z

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->d(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->b(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->d(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->c(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;Z)Z

    return-void
.end method

.method private d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->c(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;Z)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->d(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->d(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$a;->g()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->a:I

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->c:Landroid/view/animation/Interpolator;

    sget-object p2, Lcom/qmuiteam/qmui/a;->e:Landroid/view/animation/Interpolator;

    if-eq p1, p2, :cond_1

    .line 8
    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->c:Landroid/view/animation/Interpolator;

    .line 9
    new-instance p1, Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e()V

    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->c()V

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->d:Z

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    .line 4
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->a:I

    sub-int v3, v2, v3

    .line 7
    iput v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->a:I

    .line 8
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 9
    instance-of v4, v2, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    if-eqz v4, :cond_1

    .line 10
    check-cast v2, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    if-lez v3, :cond_0

    .line 11
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v4

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result v5

    if-lt v4, v5, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    if-gez v3, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->h:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 14
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e()V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 16
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->d:Z

    .line 17
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->e:Z

    if-eqz v0, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->b()V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 20
    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->g:Landroid/view/View;

    .line 21
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$b;->c()V

    :goto_3
    return-void
.end method