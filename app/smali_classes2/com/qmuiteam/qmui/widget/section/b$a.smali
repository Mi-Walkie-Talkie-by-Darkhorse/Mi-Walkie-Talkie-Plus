.class Lcom/qmuiteam/qmui/widget/section/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "QMUIStickySectionItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/b;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/section/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/section/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->h(Lcom/qmuiteam/qmui/widget/section/b;I)I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->i(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    .line 3
    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    .line 4
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->j(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    .line 5
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->k(Lcom/qmuiteam/qmui/widget/section/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->h(Lcom/qmuiteam/qmui/widget/section/b;I)I

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->i(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeInserted(II)V

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->h(Lcom/qmuiteam/qmui/widget/section/b;I)I

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->i(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeMoved(III)V

    .line 2
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p3

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    .line 3
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->h(Lcom/qmuiteam/qmui/widget/section/b;I)I

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->i(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeRemoved(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    .line 3
    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->g(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->h(Lcom/qmuiteam/qmui/widget/section/b;I)I

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->l(Lcom/qmuiteam/qmui/widget/section/b;Z)V

    :cond_0
    return-void
.end method
