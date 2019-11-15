.class public abstract Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseFetchLoadAdapter.java"

# interfaces
.implements Lcom/ifengyu/library/widget/recyclerview/adapter/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$c;,
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$AnimationType;,
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;,
        Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;
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

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isScrolling:Z

.field private mAnimationDuration:I

.field private mAnimationShowFirstOnly:Z

.field private mAutoFetchMoreSize:I

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

.field private mEmptyView:Landroid/widget/FrameLayout;

.field private mFetchMoreEnable:Z

.field private mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

.field private mFetching:Z

.field private mFirstFetchSuccess:Z

.field private mFirstLoadSuccess:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUseEmpty:Z

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mLoadMoreEnable:Z

.field private mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

.field private mLoading:Z

.field private mNextFetchEnable:Z

.field private mNextLoadEnable:Z

.field private mOpenAnimationEnable:Z

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

.field private mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

.field private mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

.field private mSpanSizeLookup:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

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

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstFetchSuccess:Z

    iput v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoFetchMoreSize:I

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/f/c;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/f/c;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstLoadSuccess:Z

    iput v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoLoadMoreSize:I

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/f/c;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/f/c;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationShowFirstOnly:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationDuration:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLastPosition:I

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/a;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mIsUseEmpty:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->isScrolling:Z

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    if-eqz p2, :cond_1

    iput p2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLayoutResId:I

    :cond_1
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$1;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-static {p1, v1}, Lcom/ifengyu/library/widget/recyclerview/g/a;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->isScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)Lcom/ifengyu/library/widget/recyclerview/f/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)Lcom/ifengyu/library/widget/recyclerview/f/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSpanSizeLookup:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$c;

    return-object v0
.end method

.method private addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationShowFirstOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLastPosition:I

    if-le v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

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

    invoke-virtual {p0, v3, v4}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->startAnim(Landroid/animation/Animator;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLastPosition:I

    :cond_3
    return-void
.end method

.method private autoRequestFetchMoreData(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoFetchMoreSize:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstFetchSuccess:Z

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto fetch, pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;->onFetchMoreRequested()V

    goto :goto_0
.end method

.method private autoRequestLoadMoreData(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoLoadMoreSize:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstLoadSuccess:Z

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto load, pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

    invoke-interface {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;->onLoadMoreRequested()V

    goto :goto_0
.end method

.method private getFetchMoreViewCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreEnable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFetchingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    iget-object v1, v0, Lcom/ifengyu/library/widget/recyclerview/d/a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getLoadMoreViewCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    iget-object v1, v0, Lcom/ifengyu/library/widget/recyclerview/d/a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$2;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemInserted(I)V

    return-void
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

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRangeInserted(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "inserted position most greater than 0 and less than data size"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFrontData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public appendData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->appendData(Ljava/util/List;)V

    return-void
.end method

.method public appendData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public clearData()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLastPosition:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeLoadAnimation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationDuration:I

    return-void
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

    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method public fetchMoreComplete(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public fetchMoreComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->addFrontData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->fetchMoreComplete(I)V

    goto :goto_0
.end method

.method public fetchMoreEnd(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->addFrontData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public fetchMoreFailed()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstFetchSuccess:Z

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public getBottomDataPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmptyViewCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mIsUseEmpty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

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

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getEmptyViewCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1004

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->autoRequestFetchMoreData(I)V

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->autoRequestLoadMoreData(I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FETCH pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1000

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getDefItemViewType(I)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1002

    goto :goto_0
.end method

.method public isLoadMoreEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    return v0
.end method

.method public isUseEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mIsUseEmpty:Z

    return-void
.end method

.method public loadMoreComplete()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreComplete(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->appendData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->loadMoreComplete()V

    return-void
.end method

.method public loadMoreEnd(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->appendData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Z)V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreFail()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFirstLoadSuccess:Z

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public notifyDataItemChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$4;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$4;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/library/widget/recyclerview/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->onBindViewHolder(Lcom/ifengyu/library/widget/recyclerview/d/a;I)V

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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->isScrolling:Z

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
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

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLayoutResId:I

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

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

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
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

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->onViewAttachedToWindow(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

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

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public openLoadAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method public openLoadAnimation(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/a;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/c;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/c;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/d;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/d;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/e;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/e;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/a/f;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/recyclerview/a/f;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mSelectAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

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

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mOpenAnimationEnable:Z

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mCustomAnimation:Lcom/ifengyu/library/widget/recyclerview/a/b;

    return-void
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRemoved(I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->onRemove(Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationDuration:I

    return-void
.end method

.method public setAnimationShowFirstOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationShowFirstOnly:Z

    return-void
.end method

.method public setAutoFetchMoreSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoFetchMoreSize:I

    :cond_0
    return-void
.end method

.method public setAutoLoadMoreSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAutoLoadMoreSize:I

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mEmptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mIsUseEmpty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getEmptyViewCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemInserted(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public setEnableLoadMore(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getLoadMoreViewCount()I

    move-result v1

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemRemoved(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchMoreViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public setFetchMoreView(Lcom/ifengyu/library/widget/recyclerview/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-void
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

.method public setLoadMoreView(Lcom/ifengyu/library/widget/recyclerview/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mData:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreEnable:Z

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreView:Lcom/ifengyu/library/widget/recyclerview/f/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLastPosition:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnFetchMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestFetchMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextFetchEnable:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetchMoreEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mFetching:Z

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mRequestLoadMoreListener:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mNextLoadEnable:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoadMoreEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mLoading:Z

    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
