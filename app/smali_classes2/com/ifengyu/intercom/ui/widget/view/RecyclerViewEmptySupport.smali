.class public Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerViewEmptySupport.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private final c:Landroidx/recyclerview/widget/RecyclerView$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    .line 9
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method private a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    .line 5
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setFootOrHeaderNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    return-void
.end method
