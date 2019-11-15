.class public abstract Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseQuickAdapter.java"

# interfaces
.implements Lcom/ifengyu/library/widget/recyclerview/adapter/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;,
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;,
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TK;>;",
        "Lcom/ifengyu/library/widget/recyclerview/adapter/c;"
    }
.end annotation


# static fields
.field public static final ALPHAIN:I = 0x1

.field public static final SCALEIN:I = 0x2

.field public static final SLIDEIN_BOTTOM:I = 0x3

.field public static final SLIDEIN_LEFT:I = 0x4

.field public static final SLIDEIN_RIGHT:I = 0x5

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private flag:Z

.field private isScrolling:Z

.field private mAutoLoadMoreSize:I

.field protected mContext:Landroid/content/Context;

.field private mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEmptyView:Landroid/widget/FrameLayout;

.field private mFirstOnlyEnable:Z

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUseEmpty:Z

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mLoadMoreEnable:Z

.field private mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

.field private mLoading:Z

.field private mNextLoadEnable:Z

.field private mOpenAnimationEnable:Z

.field private mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

.field private mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

.field private mSpanSizeLookup:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isScrolling:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/f/c;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/f/c;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFirstOnlyEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mDuration:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLastPosition:I

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/a;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mIsUseEmpty:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->flag:Z

    iput v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mAutoLoadMoreSize:I

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz p2, :cond_1

    iput p2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLayoutResId:I

    :cond_1
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$1;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-static {p1, v1}, Lcom/ifengyu/library/widget/recyclerview/g/a;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)Lcom/ifengyu/library/widget/recyclerview/f/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSpanSizeLookup:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;

    return-object v0
.end method

.method private addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFirstOnlyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLastPosition:I

    if-le v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    :goto_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/a/b;->a(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->startAnim(Landroid/animation/Animator;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLastPosition:I

    :cond_3
    return-void
.end method

.method private autoLoadMore(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mAutoLoadMoreSize:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;->a()V

    goto :goto_0
.end method

.method private getExpandableItem(I)Lcom/ifengyu/library/widget/recyclerview/c/a;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFooterViewPosition()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getHeaderViewPosition()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLoadMoreViewCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLoadingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    iget-object v1, v0, Lcom/ifengyu/library/widget/recyclerview/d/a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$2;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private hasSubItems(Lcom/ifengyu/library/widget/recyclerview/c/a;)Z
    .locals 1

    invoke-interface {p1}, Lcom/ifengyu/library/widget/recyclerview/c/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExpandable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ifengyu/library/widget/recyclerview/c/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recursiveCollapse(I)I
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1
    if-ltz v1, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    instance-of v3, v3, Lcom/ifengyu/library/widget/recyclerview/c/a;

    if-eqz v3, :cond_2

    invoke-direct {p0, v4}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->recursiveCollapse(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private recursiveExpand(ILjava/util/List;)I
    .locals 6
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v1, v2

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    if-eqz v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->hasSubItems(Lcom/ifengyu/library/widget/recyclerview/c/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->b()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->recursiveExpand(ILjava/util/List;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "inserted position most greater than 0 and less than data size"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addData(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "inserted position most greater than 0 and less than data size"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->addFooterView(Landroid/view/View;I)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    move p2, v0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterViewPosition()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_2
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->addHeaderView(Landroid/view/View;I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->addHeaderView(Landroid/view/View;II)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;II)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-ne p3, v3, :cond_3

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v0, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    move p2, v0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public clearData()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLastPosition:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeLoadAnimation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mDuration:I

    return-void
.end method

.method public collapse(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->collapse(IZZ)I

    move-result v0

    return v0
.end method

.method public collapse(IZ)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->collapse(IZZ)I

    move-result v0

    return v0
.end method

.method public collapse(IZZ)I
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getExpandableItem(I)Lcom/ifengyu/library/widget/recyclerview/c/a;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->recursiveCollapse(I)I

    move-result v1

    invoke-interface {v3, v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, v2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRangeRemoved(II)V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method protected abstract convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;IZ)V"
        }
    .end annotation
.end method

.method protected createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/d/a;

    invoke-direct {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method public expand(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->expand(IZZ)I

    move-result v0

    return v0
.end method

.method public expand(IZ)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->expand(IZZ)I

    move-result v0

    return v0
.end method

.method public expand(IZZ)I
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getExpandableItem(I)Lcom/ifengyu/library/widget/recyclerview/c/a;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->hasSubItems(Lcom/ifengyu/library/widget/recyclerview/c/a;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lcom/ifengyu/library/widget/recyclerview/c/a;->b()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->recursiveExpand(ILjava/util/List;)I

    move-result v4

    add-int/2addr v0, v4

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/ifengyu/library/widget/recyclerview/c/a;->a(Z)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p3, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public expandAll(IZ)I
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->expandAll(IZZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandAll(IZZ)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int v4, p1, v0

    const/4 v0, 0x0

    add-int/lit8 v1, v4, 0x1

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v4}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getExpandableItem(I)Lcom/ifengyu/library/widget/recyclerview/c/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->hasSubItems(Lcom/ifengyu/library/widget/recyclerview/c/a;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1, v3, v3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->expand(IZZ)I

    move-result v2

    add-int/lit8 v1, v4, 0x1

    :goto_1
    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    :cond_3
    if-eqz p3, :cond_1

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, v3, v3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->expand(IZZ)I

    move-result v5

    add-int/2addr v2, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getBottomDataPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmptyViewCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mIsUseEmpty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFooterLayoutCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    return v0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5

    const/16 v0, 0x1001

    const/4 v3, 0x1

    const/16 v1, 0x1004

    const/16 v2, 0x1003

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-boolean v4, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_1
    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->autoLoadMore(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    sub-int v0, p1, v1

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getDefItemViewType(I)I

    move-result v0

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    const/16 v0, 0x1002

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getParentPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/ifengyu/library/widget/recyclerview/c/a;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/ifengyu/library/widget/recyclerview/c/a;

    invoke-interface {p1}, Lcom/ifengyu/library/widget/recyclerview/c/a;->c()I

    move-result v2

    move v3, v2

    :goto_1
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    const v2, 0x7fffffff

    move v3, v2

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/c/a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->c()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/c/a;->c()I

    move-result v0

    if-ge v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getViewHolderPosition(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public isFirstDataItem(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFirstOnlyEnable:Z

    return-void
.end method

.method public isLastDataItem(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadMoreEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    return v0
.end method

.method public isUseEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mIsUseEmpty:Z

    return-void
.end method

.method public loadMoreComplete()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->loadMoreEnd(Z)V

    return-void
.end method

.method public loadMoreEnd(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreFail()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/library/widget/recyclerview/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onBindViewHolder(Lcom/ifengyu/library/widget/recyclerview/d/a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ifengyu/library/widget/recyclerview/d/a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getItemViewType()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v1, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isScrolling:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLayoutResId:I

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onRemove(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/library/widget/recyclerview/d/a;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/ifengyu/library/widget/recyclerview/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getItemViewType()I

    move-result v0

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public openLoadAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method public openLoadAnimation(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/a;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/c;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/c;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/d;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/d;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/e;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/e;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/f;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/f;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openLoadAnimation(Lcom/ifengyu/library/widget/recyclerview/a/b;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mOpenAnimationEnable:Z

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    return-void
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onRemove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAllFooterView()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeAllHeaderView()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public setAutoLoadMoreSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mAutoLoadMoreSize:I

    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mDuration:I

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mIsUseEmpty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public setEnableLoadMore(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v1

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemRemoved(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method protected setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public setHeaderAndEmpty(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->setHeaderFooterEmpty(ZZ)V

    return-void
.end method

.method public setHeaderFooterEmpty(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    return-void
.end method

.method public setLoadMoreView(Lcom/ifengyu/library/widget/recyclerview/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mData:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLastPosition:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$a;

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mNextLoadEnable:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoadMoreEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mLoading:Z

    return-void
.end method

.method public setSpanSizeLookup(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mSpanSizeLookup:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;

    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
