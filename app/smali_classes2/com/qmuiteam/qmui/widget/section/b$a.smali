.class Lcom/qmuiteam/qmui/widget/section/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$i;


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

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;I)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->b(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeChanged(II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->c(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->d(Lcom/qmuiteam/qmui/widget/section/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;I)I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeInserted(II)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p2

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;I)I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeMoved(III)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p3

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result p1

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;I)I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->invalidate()V

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;I)I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b$a;->a:Lcom/qmuiteam/qmui/widget/section/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Lcom/qmuiteam/qmui/widget/section/b;Z)V

    :cond_0
    return-void
.end method
