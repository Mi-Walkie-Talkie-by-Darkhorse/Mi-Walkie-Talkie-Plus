.class public Lcom/qmuiteam/qmui/widget/section/b;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "QMUIStickySectionItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/qmuiteam/qmui/widget/section/a$b;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$l;"
    }
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/section/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qmuiteam/qmui/widget/section/b$b<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private b:Lcom/qmuiteam/qmui/widget/section/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/b$b;)V
    .locals 1
    .param p2    # Lcom/qmuiteam/qmui/widget/section/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/qmuiteam/qmui/widget/section/b$b<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->d:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    new-instance p2, Lcom/qmuiteam/qmui/widget/section/b$a;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/section/b$a;-><init>(Lcom/qmuiteam/qmui/widget/section/b;)V

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/section/b$b;->a(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method static synthetic g(Lcom/qmuiteam/qmui/widget/section/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    return p0
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/widget/section/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    return p1
.end method

.method static synthetic i(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    return-object p0
.end method

.method static synthetic j(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->b:Lcom/qmuiteam/qmui/widget/section/a$b;

    return-object p0
.end method

.method static synthetic k(Lcom/qmuiteam/qmui/widget/section/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic l(Lcom/qmuiteam/qmui/widget/section/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/b;->n(Z)V

    return-void
.end method

.method private n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->c(Z)V

    return-void
.end method


# virtual methods
.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 5
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 6
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/b;->n(Z)V

    return-void

    .line 7
    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 9
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/b;->n(Z)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->b(I)I

    move-result p1

    if-ne p1, p2, :cond_4

    .line 11
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/b;->n(Z)V

    return-void

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {p2, p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->getItemViewType(I)I

    const/4 p1, 0x0

    throw p1

    :cond_5
    :goto_0
    return-void
.end method
