.class public Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecyclerViewEmptySupport.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private final c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method private a()V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method

.method public setFootOrHeaderNum(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->b:I

    return-void
.end method
