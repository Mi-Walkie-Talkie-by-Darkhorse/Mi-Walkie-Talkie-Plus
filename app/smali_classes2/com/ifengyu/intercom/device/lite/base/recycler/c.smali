.class public abstract Lcom/ifengyu/intercom/device/lite/base/recycler/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;,
        Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ifengyu/intercom/device/lite/base/recycler/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final d:Landroid/content/Context;

.field protected e:Landroid/view/LayoutInflater;

.field private f:I

.field private g:Ljava/util/BitSet;

.field private h:I

.field private i:Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/device/lite/base/recycler/c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private j:Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/device/lite/base/recycler/c$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->f:I

    .line 3
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g:Ljava/util/BitSet;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->d:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->e:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic l(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->i:Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;->a(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic n(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->j:Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;->a(Landroid/view/View;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public abstract e(Lcom/ifengyu/intercom/device/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/device/lite/base/recycler/d;",
            "ITT;Z)V"
        }
    .end annotation
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->f:I

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->a:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public i(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract j(I)I
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic m(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->l(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)V

    return-void
.end method

.method public synthetic o(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->n(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->p(Lcom/ifengyu/intercom/device/lite/base/recycler/d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->q(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/ifengyu/intercom/device/lite/base/recycler/d;I)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/device/lite/base/recycler/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->f:I

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->e(Lcom/ifengyu/intercom/device/lite/base/recycler/d;ILjava/lang/Object;Z)V

    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/device/lite/base/recycler/d;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->e:Landroid/view/LayoutInflater;

    .line 2
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->j(I)I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->i:Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance p2, Lcom/ifengyu/intercom/device/lite/base/recycler/b;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/device/lite/base/recycler/b;-><init>(Lcom/ifengyu/intercom/device/lite/base/recycler/c;Lcom/ifengyu/intercom/device/lite/base/recycler/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->j:Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance p2, Lcom/ifengyu/intercom/device/lite/base/recycler/a;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/device/lite/base/recycler/a;-><init>(Lcom/ifengyu/intercom/device/lite/base/recycler/c;Lcom/ifengyu/intercom/device/lite/base/recycler/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object v0
.end method

.method public r(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->s(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public s(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h:I

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h:I

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->g:Ljava/util/BitSet;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1

    .line 6
    :cond_1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->f:I

    :goto_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->i:Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->j:Lcom/ifengyu/intercom/device/lite/base/recycler/c$b;

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->f()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
