.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;
.super Ljava/lang/Object;
.source "QMUIStickySectionLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/section/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->setAdapter(Lcom/qmuiteam/qmui/widget/section/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qmuiteam/qmui/widget/section/b$b<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/section/a;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Lcom/qmuiteam/qmui/widget/section/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->b:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/a;->a(I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/a$b;

    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/section/a$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/a;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->a:Lcom/qmuiteam/qmui/widget/section/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$b;->b:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->c(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
