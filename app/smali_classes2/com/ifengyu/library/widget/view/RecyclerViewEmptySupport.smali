.class public Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecyclerViewEmptySupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private final c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    new-instance v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$1;-><init>(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method private a()V
    .locals 6

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v3, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->b:I

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p0, v4}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;->a()V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;->b()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->a()V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->c:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

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

.method public setOnEmptyLayoutListener(Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->d:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport$a;

    return-void
.end method
