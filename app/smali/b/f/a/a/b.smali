.class public Lb/f/a/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/a/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lb/f/a/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected c:Lb/f/a/a/c/b;

.field protected d:Lb/f/a/a/b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lb/f/a/a/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/f/a/a/b;->b:Ljava/util/List;

    .line 4
    new-instance p1, Lb/f/a/a/c/b;

    invoke-direct {p1}, Lb/f/a/a/c/b;-><init>()V

    iput-object p1, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    return-void
.end method


# virtual methods
.method public e(Lb/f/a/a/c/a;)Lb/f/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/a<",
            "TT;>;)",
            "Lb/f/a/a/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    invoke-virtual {v0, p1}, Lb/f/a/a/c/b;->a(Lb/f/a/a/c/a;)Lb/f/a/a/c/b;

    return-object p0
.end method

.method public f(Lb/f/a/a/c/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/c;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lb/f/a/a/c/b;->b(Lb/f/a/a/c/c;Ljava/lang/Object;I)V

    return-void
.end method

.method protected g(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/f/a/a/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    iget-object v1, p0, Lb/f/a/a/b;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lb/f/a/a/c/b;->e(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public h(Lb/f/a/a/c/c;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb/f/a/a/b;->f(Lb/f/a/a/c/c;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Landroid/view/ViewGroup;I)Lb/f/a/a/c/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    invoke-virtual {v0, p2}, Lb/f/a/a/c/b;->c(I)Lb/f/a/a/c/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lb/f/a/a/c/a;->b()I

    move-result v0

    .line 3
    iget-object v1, p0, Lb/f/a/a/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lb/f/a/a/c/c;->b(Landroid/content/Context;Landroid/view/ViewGroup;I)Lb/f/a/a/c/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lb/f/a/a/c/c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/f/a/a/b;->j(Lb/f/a/a/c/c;Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lb/f/a/a/b;->k(Landroid/view/ViewGroup;Lb/f/a/a/c/c;I)V

    return-object v0
.end method

.method public j(Lb/f/a/a/c/c;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected k(Landroid/view/ViewGroup;Lb/f/a/a/c/c;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lb/f/a/a/b;->g(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lb/f/a/a/c/c;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lb/f/a/a/b$a;

    invoke-direct {p3, p0, p2}, Lb/f/a/a/b$a;-><init>(Lb/f/a/a/b;Lb/f/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2}, Lb/f/a/a/c/c;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lb/f/a/a/b$b;

    invoke-direct {p3, p0, p2}, Lb/f/a/a/b$b;-><init>(Lb/f/a/a/b;Lb/f/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/b;->c:Lb/f/a/a/c/b;

    invoke-virtual {v0}, Lb/f/a/a/c/b;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lb/f/a/a/c/c;

    invoke-virtual {p0, p1, p2}, Lb/f/a/a/b;->h(Lb/f/a/a/c/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/f/a/a/b;->i(Landroid/view/ViewGroup;I)Lb/f/a/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lb/f/a/a/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    return-void
.end method
