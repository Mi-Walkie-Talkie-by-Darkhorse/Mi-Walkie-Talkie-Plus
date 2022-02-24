.class public Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "DiscoveryFragment.java"


# instance fields
.field private g:Lcom/ifengyu/intercom/ui/MainActivity;

.field private h:Lcom/ifengyu/intercom/ui/adapter/c;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field r:Lcom/ifengyu/intercom/ui/adapter/c$a;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013b
    .end annotation
.end field

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013c
    .end annotation
.end field

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field titleBarRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041a
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:I

    const-string v0, "DiscoveryLoopData"

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m:Ljava/lang/String;

    const-string v0, "loop_data_"

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->n:Ljava/lang/String;

    const-string v0, "DiscoveryListInfoData"

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->o:Ljava/lang/String;

    const-string v0, "list_info_data_"

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->p:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->r:Lcom/ifengyu/intercom/ui/adapter/c$a;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:Lcom/ifengyu/intercom/ui/adapter/c;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->j()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->o()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:I

    return p0
.end method

.method private j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-string v1, "DiscoveryListInfoData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/i/g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list_info_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/i/g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private k()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$h;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->a(Lcom/ifengyu/intercom/g/d/b;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:I

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k:I

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/g/a;->a(IILcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$e;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private m()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DiscoveryLoopData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/i/g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loop_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/i/g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->q:Landroid/view/View;

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->e:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->i()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110323

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarLeft:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f06018d

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->j:Ljava/util/ArrayList;

    .line 12
    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/c;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v1, v2, v0, v3}, Lcom/ifengyu/intercom/ui/adapter/c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:Lcom/ifengyu/intercom/ui/adapter/c;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->r:Lcom/ifengyu/intercom/ui/adapter/c$a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/c;->setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/adapter/c$a;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "newInstance"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;-><init>()V

    return-object v0
.end method

.method private o()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l:I

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$g;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/g/a;->a(IILcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DiscoveryFragment"

    const-string v1, "onActivityCreated"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "onAttach"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DiscoveryFragment"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p3, "DiscoveryFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c0099

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->q:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->n()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->k()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->q:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "DiscoveryFragment"

    const-string v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
