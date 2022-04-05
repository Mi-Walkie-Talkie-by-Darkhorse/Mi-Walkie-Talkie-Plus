.class public Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
.super Landroidx/recyclerview/widget/RecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private final c:Landroidx/recyclerview/widget/RecyclerView$i;

.field private d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance p1, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance p1, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance p1, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    iget v3, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;->a()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;->b()V

    :cond_6
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setFootOrHeaderNum(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    return-void
.end method

.method public setOnEmptyLayoutListener(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$b;

    return-void
.end method
