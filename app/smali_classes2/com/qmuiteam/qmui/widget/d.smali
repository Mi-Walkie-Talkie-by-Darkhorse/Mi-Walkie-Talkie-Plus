.class public abstract Lcom/qmuiteam/qmui/widget/d;
.super Ljava/lang/Object;
.source "QMUIItemViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroidx/core/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/d/e<",
            "TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method private k()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->a:Landroidx/core/d/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/d/e;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/d;->g(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Lcom/qmuiteam/qmui/widget/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/qmuiteam/qmui/widget/d<",
            "TT;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected abstract e(Ljava/lang/Object;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;I)V"
        }
    .end annotation
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/d;->h(I)V

    return-void
.end method

.method protected abstract g(Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation
.end method

.method public h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    if-lez p1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/d;->a:Landroidx/core/d/e;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroidx/core/d/f;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/core/d/f;-><init>(I)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/d;->a:Landroidx/core/d/e;

    .line 5
    :cond_0
    sget v2, Lcom/qmuiteam/qmui/R$id;->qmui_view_can_not_cache_tag:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/d;->a:Landroidx/core/d/e;

    invoke-interface {v2, v1}, Landroidx/core/d/e;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public i(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public m()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/d;->h(I)V

    goto :goto_1

    :cond_0
    if-ge v1, v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v0, v1

    if-ge v3, v4, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/d;->k()Landroid/view/View;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/d;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 8
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/d;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p0, v3, v1, v2}, Lcom/qmuiteam/qmui/widget/d;->e(Ljava/lang/Object;Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
