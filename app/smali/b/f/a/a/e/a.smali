.class public Lb/f/a/a/e/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderAndFooterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$y;",
        ">;"
    }
.end annotation


# instance fields
.field private a:La/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/h<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:La/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/h<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, La/b/h;

    invoke-direct {v0}, La/b/h;-><init>()V

    iput-object v0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    .line 3
    new-instance v0, La/b/h;

    invoke-direct {v0}, La/b/h;-><init>()V

    iput-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    .line 4
    iput-object p1, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic e(Lb/f/a/a/e/a;)La/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    return-object p0
.end method

.method static synthetic f(Lb/f/a/a/e/a;)La/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    return-object p0
.end method

.method private j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private k(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v0

    invoke-direct {p0}, Lb/f/a/a/e/a;->j()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private l(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public g(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, La/b/h;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lb/f/a/a/e/a;->h()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lb/f/a/a/e/a;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb/f/a/a/e/a;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    invoke-virtual {v0, p1}, La/b/h;->h(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lb/f/a/a/e/a;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lb/f/a/a/e/a;->j()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, La/b/h;->h(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance v1, Lb/f/a/a/e/a$a;

    invoke-direct {v1, p0}, Lb/f/a/a/e/a$a;-><init>(Lb/f/a/a/e/a;)V

    invoke-static {v0, p1, v1}, Lb/f/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lb/f/a/a/d/a$b;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lb/f/a/a/e/a;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lb/f/a/a/e/a;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lb/f/a/a/e/a;->i()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    invoke-virtual {v0, p2}, La/b/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lb/f/a/a/e/a;->a:La/b/h;

    invoke-virtual {v0, p2}, La/b/h;->e(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lb/f/a/a/c/c;->a(Landroid/content/Context;Landroid/view/View;)Lb/f/a/a/c/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    invoke-virtual {v0, p2}, La/b/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lb/f/a/a/e/a;->b:La/b/h;

    invoke-virtual {v0, p2}, La/b/h;->e(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lb/f/a/a/c/c;->a(Landroid/content/Context;Landroid/view/View;)Lb/f/a/a/c/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f/a/a/e/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lb/f/a/a/e/a;->l(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lb/f/a/a/e/a;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-static {p1}, Lb/f/a/a/d/a;->b(Landroidx/recyclerview/widget/RecyclerView$y;)V

    :cond_1
    return-void
.end method
