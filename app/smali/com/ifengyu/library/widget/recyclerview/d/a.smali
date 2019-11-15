.class public Lcom/ifengyu/library/widget/recyclerview/d/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->c:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->d:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->c:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(IZ)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->d:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->c:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/d/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
