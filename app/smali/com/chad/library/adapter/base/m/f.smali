.class public Lcom/chad/library/adapter/base/m/f;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008-J\u0006\u0010.\u001a\u00020+J\u0012\u0010/\u001a\u00020 2\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u0006\u00102\u001a\u00020\u0006J\u0008\u00103\u001a\u00020+H\u0002J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u000206H\u0002J\u0006\u00107\u001a\u00020+J\u0012\u00108\u001a\u00020+2\u0008\u0008\u0002\u00109\u001a\u00020\u0006H\u0007J\u0006\u0010:\u001a\u00020+J\u0006\u0010;\u001a\u00020+J\r\u0010<\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008=J\u0012\u0010>\u001a\u00020+2\u0008\u0010?\u001a\u0004\u0018\u00010$H\u0016J\u0015\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020BH\u0000\u00a2\u0006\u0002\u0008CR\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR$\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\nR\u001a\u0010\u0010\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\"\u0004\u0008\u0011\u0010\nR\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0011\u0010\u0014\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010&\u001a\u00020 2\u0006\u0010\r\u001a\u00020 @FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010)\u00a8\u0006D"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "Lcom/chad/library/adapter/base/listener/LoadMoreListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "enableLoadMoreEndClick",
        "",
        "getEnableLoadMoreEndClick",
        "()Z",
        "setEnableLoadMoreEndClick",
        "(Z)V",
        "isAutoLoadMore",
        "setAutoLoadMore",
        "value",
        "isEnableLoadMore",
        "setEnableLoadMore",
        "isEnableLoadMoreIfNotFullPage",
        "setEnableLoadMoreIfNotFullPage",
        "<set-?>",
        "isLoadEndMoreGone",
        "isLoading",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "loadMoreStatus",
        "getLoadMoreStatus",
        "()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "loadMoreView",
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "getLoadMoreView",
        "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "setLoadMoreView",
        "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V",
        "loadMoreViewPosition",
        "",
        "getLoadMoreViewPosition",
        "()I",
        "mLoadMoreListener",
        "Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;",
        "mNextLoadEnable",
        "preLoadNumber",
        "getPreLoadNumber",
        "setPreLoadNumber",
        "(I)V",
        "autoLoadMore",
        "",
        "position",
        "autoLoadMore$com_github_CymChad_brvah",
        "checkDisableLoadMoreIfNotFullPage",
        "getTheBiggestNumber",
        "numbers",
        "",
        "hasLoadMoreView",
        "invokeLoadMoreListener",
        "isFullScreen",
        "llm",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "loadMoreComplete",
        "loadMoreEnd",
        "gone",
        "loadMoreFail",
        "loadMoreToLoading",
        "reset",
        "reset$com_github_CymChad_brvah",
        "setOnLoadMoreListener",
        "listener",
        "setupViewHolder",
        "viewHolder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "setupViewHolder$com_github_CymChad_brvah",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcom/chad/library/adapter/base/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/i<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/chad/library/adapter/base/l/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/chad/library/adapter/base/loadmore/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method private static final c(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/m/f;->m(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/m/f;->c:Z

    :cond_0
    return-void
.end method

.method private static final d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/m/f;)V
    .locals 2

    const-string v0, "$manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    new-array v0, v0, [I

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q([I)[I

    .line 3
    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/m/f;->i([I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 4
    iget-object v1, p1, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 5
    iput-boolean v0, p1, Lcom/chad/library/adapter/base/m/f;->c:Z

    :cond_0
    return-void
.end method

.method private final i([I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 1
    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    array-length v1, p1

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-le v3, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_2
    return v0
.end method

.method private final k()V
    .locals 2

    .line 1
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->T()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/chad/library/adapter/base/m/a;

    invoke-direct {v1, p0}, Lcom/chad/library/adapter/base/m/a;-><init>(Lcom/chad/library/adapter/base/m/f;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->b:Lcom/chad/library/adapter/base/l/h;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/chad/library/adapter/base/l/h;->a()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final l(Lcom/chad/library/adapter/base/m/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/chad/library/adapter/base/m/f;->b:Lcom/chad/library/adapter/base/l/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/chad/library/adapter/base/l/h;->a()V

    :goto_0
    return-void
.end method

.method private final m(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic n(Lcom/chad/library/adapter/base/m/f;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter/base/m/f;->l(Lcom/chad/library/adapter/base/m/f;)V

    return-void
.end method

.method public static synthetic o(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/m/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/m/f;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/m/f;)V

    return-void
.end method

.method public static synthetic p(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/m/f;->c(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static synthetic q(Lcom/chad/library/adapter/base/m/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/m/f;->v(Lcom/chad/library/adapter/base/m/f;Landroid/view/View;)V

    return-void
.end method

.method private static final v(Lcom/chad/library/adapter/base/m/f;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->c:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->r()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->r()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->r()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/m/f;->j:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eq p1, v0, :cond_3

    return-void

    .line 5
    :cond_3
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_4

    return-void

    .line 6
    :cond_4
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/m/f;->c:Z

    if-nez p1, :cond_5

    return-void

    .line 7
    :cond_5
    invoke-direct {p0}, Lcom/chad/library/adapter/base/m/f;->k()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->c:Z

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->T()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_3

    .line 6
    new-instance v2, Lcom/chad/library/adapter/base/m/c;

    invoke-direct {v2, p0, v1}, Lcom/chad/library/adapter/base/m/c;-><init>(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_3
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_4

    .line 8
    new-instance v2, Lcom/chad/library/adapter/base/m/b;

    invoke-direct {v2, v1, p0}, Lcom/chad/library/adapter/base/m/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/m/f;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->g:Z

    return v0
.end method

.method public final f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object v0
.end method

.method public final g()Lcom/chad/library/adapter/base/loadmore/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->f:Lcom/chad/library/adapter/base/loadmore/a;

    return-object v0
.end method

.method public final h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->H()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->b:Lcom/chad/library/adapter/base/l/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/f;->e:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    invoke-direct {p0}, Lcom/chad/library/adapter/base/m/f;->k()V

    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/f;->b:Lcom/chad/library/adapter/base/l/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/m/f;->t(Z)V

    .line 3
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    :cond_0
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/chad/library/adapter/base/l/h;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/f;->b:Lcom/chad/library/adapter/base/l/h;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/f;->t(Z)V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->j()Z

    move-result v0

    .line 2
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/m/f;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->j()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object p1, p0, Lcom/chad/library/adapter/base/m/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 6
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/f;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/f;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/m/d;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/m/d;-><init>(Lcom/chad/library/adapter/base/m/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
