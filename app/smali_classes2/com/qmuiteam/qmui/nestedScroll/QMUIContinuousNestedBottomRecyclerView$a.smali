.class Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$p;
.source "QMUIContinuousNestedBottomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView$a;->a:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;

    invoke-static {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;->a(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomRecyclerView;)Lcom/qmuiteam/qmui/nestedScroll/b$a;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    invoke-interface {p2, p3, p1}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(II)V

    :cond_0
    return-void
.end method
