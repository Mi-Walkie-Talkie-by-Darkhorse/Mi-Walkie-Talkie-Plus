.class public Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
.super Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.source "DiscoveryFragment.java"


# instance fields
.field b:Lcom/ifengyu/intercom/ui/adapter/c$a;

.field private c:Lcom/ifengyu/intercom/ui/MainActivity;

.field private d:Lcom/ifengyu/intercom/ui/adapter/c;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Landroid/view/View;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023b
    .end annotation
.end field

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023a
    .end annotation
.end field

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field titleBarRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10015b
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    const-string v0, "DiscoveryLoopData"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i:Ljava/lang/String;

    const-string v0, "loop_data_"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->j:Ljava/lang/String;

    const-string v0, "DiscoveryListInfoData"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k:Ljava/lang/String;

    const-string v0, "list_info_data_"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    return p1
.end method

.method public static a()Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "newInstance"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x7f0f00a4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b:Lcom/ifengyu/intercom/ui/adapter/c$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/c;->setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/adapter/c$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$3;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lio/reactivex/k;->create(Lio/reactivex/m;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$2;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$5;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lio/reactivex/k;->create(Lio/reactivex/m;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(IILcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object v0
.end method

.method private g()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c:Lcom/ifengyu/intercom/ui/MainActivity;

    const-string v1, "DiscoveryListInfoData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/b/a;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list_info_data_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private h()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DiscoveryLoopData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/b/a;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loop_data_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->f()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    return v0
.end method

.method private i()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->b(Lcom/ifengyu/intercom/a/b/b;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:I

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$9;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$9;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(IILcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DiscoveryFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DiscoveryFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "DiscoveryFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStop()V

    return-void
.end method
