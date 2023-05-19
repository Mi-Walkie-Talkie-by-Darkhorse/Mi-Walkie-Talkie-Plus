.class public Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;
.super Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
.source "QMUIStickySectionLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/section/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;
    }
.end annotation


# instance fields
.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

.field private e:Lcom/qmuiteam/qmui/widget/section/b;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->f:I

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->h:Ljava/lang/Runnable;

    .line 6
    new-instance p3, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {p3, p1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 7
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->f:I

    return p0
.end method

.method static synthetic k(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->f:I

    return p1
.end method

.method static synthetic l(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->h:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic n(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;

    .line 3
    invoke-interface {v1, p1, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;->a(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;

    .line 7
    invoke-interface {v1, p1, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$c;->b(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getStickySectionView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStickySectionWrapView()Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    return-object v0
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->e:Lcom/qmuiteam/qmui/widget/section/b;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->e:Lcom/qmuiteam/qmui/widget/section/b;

    .line 4
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/section/b;->m()I

    move-result p3

    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 5
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->e:Lcom/qmuiteam/qmui/widget/section/b;

    .line 6
    invoke-virtual {p5}, Lcom/qmuiteam/qmui/widget/section/b;->m()I

    move-result p5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 7
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/qmuiteam/qmui/widget/section/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H::",
            "Ljava/lang/Object<",
            "TH;>;T::",
            "Ljava/lang/Object<",
            "TT;>;VH:",
            "Lcom/qmuiteam/qmui/widget/section/a$b;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/section/a<",
            "TH;TT;TVH;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->setAdapter(Lcom/qmuiteam/qmui/widget/section/a;Z)V

    return-void
.end method

.method public setAdapter(Lcom/qmuiteam/qmui/widget/section/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H::",
            "Ljava/lang/Object<",
            "TH;>;T::",
            "Ljava/lang/Object<",
            "TT;>;VH:",
            "Lcom/qmuiteam/qmui/widget/section/a$b;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/section/a<",
            "TH;TT;TVH;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Lcom/qmuiteam/qmui/widget/section/a;)V

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/section/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->d:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {v0, v1, p2}, Lcom/qmuiteam/qmui/widget/section/b;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/b$b;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->e:Lcom/qmuiteam/qmui/widget/section/b;

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/section/a;->f(Lcom/qmuiteam/qmui/widget/section/a$a;)V

    .line 6
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
