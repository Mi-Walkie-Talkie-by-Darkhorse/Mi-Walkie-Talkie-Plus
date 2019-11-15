.class public Lcom/zhy/a/a/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/zhy/a/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected f:Landroid/content/Context;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected h:Lcom/zhy/a/a/a/b;

.field protected i:Lcom/zhy/a/a/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/zhy/a/a/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhy/a/a/b;->g:Ljava/util/List;

    new-instance v0, Lcom/zhy/a/a/a/b;

    invoke-direct {v0}, Lcom/zhy/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/zhy/a/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/zhy/a/a/a/b;->a(I)Lcom/zhy/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhy/a/a/a/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/zhy/a/a/b;->f:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/zhy/a/a/a/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/a/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zhy/a/a/b;->a(Lcom/zhy/a/a/a/c;Landroid/view/View;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/zhy/a/a/b;->a(Landroid/view/ViewGroup;Lcom/zhy/a/a/a/c;I)V

    return-object v0
.end method

.method public a(Lcom/zhy/a/a/a/a;)Lcom/zhy/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/a/a/a/a",
            "<TT;>;)",
            "Lcom/zhy/a/a/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/zhy/a/a/a/b;->a(Lcom/zhy/a/a/a/a;)Lcom/zhy/a/a/a/b;

    return-object p0
.end method

.method protected a(Landroid/view/ViewGroup;Lcom/zhy/a/a/a/c;I)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/zhy/a/a/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/zhy/a/a/a/c;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhy/a/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/zhy/a/a/b$1;-><init>(Lcom/zhy/a/a/b;Lcom/zhy/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/zhy/a/a/a/c;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhy/a/a/b$2;

    invoke-direct {v1, p0, p2}, Lcom/zhy/a/a/b$2;-><init>(Lcom/zhy/a/a/b;Lcom/zhy/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/zhy/a/a/a/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/zhy/a/a/b;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zhy/a/a/b;->a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/zhy/a/a/a/c;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/a/a/a/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    invoke-virtual {p1}, Lcom/zhy/a/a/a/c;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/zhy/a/a/a/b;->a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;I)V

    return-void
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    invoke-virtual {v0}, Lcom/zhy/a/a/a/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhy/a/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/zhy/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/a/a/b;->h:Lcom/zhy/a/a/a/b;

    iget-object v1, p0, Lcom/zhy/a/a/b;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zhy/a/a/a/b;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zhy/a/a/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/zhy/a/a/b;->a(Lcom/zhy/a/a/a/c;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/zhy/a/a/b;->a(Landroid/view/ViewGroup;I)Lcom/zhy/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/zhy/a/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhy/a/a/b;->i:Lcom/zhy/a/a/b$a;

    return-void
.end method
