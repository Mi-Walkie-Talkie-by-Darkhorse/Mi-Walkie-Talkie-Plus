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

.method static synthetic a(Lcom/qmuiteam/qmui/widget/section/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    return p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/section/b;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    return p1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;II)Lcom/qmuiteam/qmui/widget/section/a$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)TVH;"
        }
    .end annotation

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {p2, p1, p3}, Lcom/qmuiteam/qmui/widget/section/b$b;->a(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/a$b;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p1, Lcom/qmuiteam/qmui/widget/section/a$b;->a:Z

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/a$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TVH;I)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v0, p2, p3}, Lcom/qmuiteam/qmui/widget/section/b$b;->a(Lcom/qmuiteam/qmui/widget/section/a$b;I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/section/b;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 2
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

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/section/b$b;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/section/b;)Lcom/qmuiteam/qmui/widget/section/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->b:Lcom/qmuiteam/qmui/widget/section/a$b;

    return-object p0
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/section/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/b;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 3
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

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 5
    instance-of v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    return-void

    .line 7
    :cond_2
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    .line 9
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    return-void

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v2, p3}, Lcom/qmuiteam/qmui/widget/section/b$b;->a(I)I

    move-result p3

    if-ne p3, v0, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    return-void

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-interface {v2, p3}, Lcom/qmuiteam/qmui/widget/section/b$b;->getItemViewType(I)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 13
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->b:Lcom/qmuiteam/qmui/widget/section/a$b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 15
    :cond_6
    invoke-direct {p0, p2, p3, v2}, Lcom/qmuiteam/qmui/widget/section/b;->a(Landroidx/recyclerview/widget/RecyclerView;II)Lcom/qmuiteam/qmui/widget/section/a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->b:Lcom/qmuiteam/qmui/widget/section/a$b;

    .line 16
    :cond_7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    if-eq v0, p3, :cond_8

    .line 17
    iput p3, p0, Lcom/qmuiteam/qmui/widget/section/b;->c:I

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->b:Lcom/qmuiteam/qmui/widget/section/a$b;

    invoke-direct {p0, p1, v0, p3}, Lcom/qmuiteam/qmui/widget/section/b;->a(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/a$b;I)V

    :cond_8
    const/4 p3, 0x1

    .line 19
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/b;->b(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    .line 21
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_9

    .line 22
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    return-void

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/b;->a:Lcom/qmuiteam/qmui/widget/section/b$b;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/section/b$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    return-void

    .line 27
    :cond_a
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/b;->e:I

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    :cond_b
    :goto_0
    return-void
.end method
