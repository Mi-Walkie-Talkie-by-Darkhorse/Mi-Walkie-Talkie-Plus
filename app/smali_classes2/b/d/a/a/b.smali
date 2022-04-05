.class public Lb/d/a/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lb/d/a/a/c/c;",
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

.field protected c:Lb/d/a/a/c/b;

.field protected d:Lb/d/a/a/b$c;


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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lb/d/a/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/d/a/a/b;->b:Ljava/util/List;

    new-instance p1, Lb/d/a/a/c/b;

    invoke-direct {p1}, Lb/d/a/a/c/b;-><init>()V

    iput-object p1, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    return-void
.end method


# virtual methods
.method public a(Lb/d/a/a/c/a;)Lb/d/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a/a/c/a<",
            "TT;>;)",
            "Lb/d/a/a/b;"
        }
    .end annotation

    iget-object v0, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    invoke-virtual {v0, p1}, Lb/d/a/a/c/b;->a(Lb/d/a/a/c/a;)Lb/d/a/a/c/b;

    return-object p0
.end method

.method protected a(Landroid/view/ViewGroup;Lb/d/a/a/c/c;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lb/d/a/a/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lb/d/a/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lb/d/a/a/b$a;

    invoke-direct {p3, p0, p2}, Lb/d/a/a/b$a;-><init>(Lb/d/a/a/b;Lb/d/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lb/d/a/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lb/d/a/a/b$b;

    invoke-direct {p3, p0, p2}, Lb/d/a/a/b$b;-><init>(Lb/d/a/a/b;Lb/d/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public a(Lb/d/a/a/c/c;I)V
    .locals 1

    iget-object v0, p0, Lb/d/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b;->a(Lb/d/a/a/c/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lb/d/a/a/c/c;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lb/d/a/a/c/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a/a/c/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lb/d/a/a/c/b;->a(Lb/d/a/a/c/c;Ljava/lang/Object;I)V

    return-void
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    invoke-virtual {v0}, Lb/d/a/a/c/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lb/d/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lb/d/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    iget-object v1, p0, Lb/d/a/a/b;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lb/d/a/a/c/b;->a(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    check-cast p1, Lb/d/a/a/c/c;

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b;->a(Lb/d/a/a/c/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lb/d/a/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lb/d/a/a/c/c;
    .locals 2

    iget-object v0, p0, Lb/d/a/a/b;->c:Lb/d/a/a/c/b;

    invoke-virtual {v0, p2}, Lb/d/a/a/c/b;->a(I)Lb/d/a/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lb/d/a/a/c/a;->a()I

    move-result v0

    iget-object v1, p0, Lb/d/a/a/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lb/d/a/a/c/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lb/d/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/d/a/a/c/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/d/a/a/b;->a(Lb/d/a/a/c/c;Landroid/view/View;)V

    invoke-virtual {p0, p1, v0, p2}, Lb/d/a/a/b;->a(Landroid/view/ViewGroup;Lb/d/a/a/c/c;I)V

    return-object v0
.end method

.method public setOnItemClickListener(Lb/d/a/a/b$c;)V
    .locals 0

    iput-object p1, p0, Lb/d/a/a/b;->d:Lb/d/a/a/b$c;

    return-void
.end method
