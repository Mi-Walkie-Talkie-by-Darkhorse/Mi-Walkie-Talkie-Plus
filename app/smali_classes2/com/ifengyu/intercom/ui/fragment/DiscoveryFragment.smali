.class public Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "DiscoveryFragment.java"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:I

.field private D:Landroid/view/View;

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017a
    .end annotation
.end field

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017b
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/ui/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->B:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->A:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->x3()V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    return p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    return p1
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->z:Lcom/ifengyu/intercom/ui/b/b;

    return-object p0
.end method

.method private l3()Ljava/util/ArrayList;
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DiscoveryListInfoData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/p/k;

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

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/p/k;->e(Ljava/lang/String;)Ljava/lang/Object;

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

.method private m3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/e0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/e0;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

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

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/f0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/f0;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/m;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private n3()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&order=-first_published_at&fields=excerpt,header_image_url,views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->b()Lcom/ifengyu/intercom/o/b/a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/o/b/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/o/b/b;

    check-cast v1, Lcom/ifengyu/intercom/o/b/a;

    .line 5
    invoke-virtual {v1}, Lcom/ifengyu/intercom/o/b/a;->c()Lcom/ifengyu/intercom/o/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/d/c;->b(Lcom/ifengyu/intercom/o/c/a;)V

    return-void
.end method

.method private o3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110193

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/d0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/d0;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x7f0601a1

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->A:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/b/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/b/b;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->z:Lcom/ifengyu/intercom/ui/b/b;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/b/b;->setOnAllItemClickListener(Lcom/ifengyu/intercom/ui/b/b$a;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->z:Lcom/ifengyu/intercom/ui/b/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/c0;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    return-void
.end method

.method private synthetic p3(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->l3()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic r3(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->z:Lcom/ifengyu/intercom/ui/b/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic t3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic v3()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->n3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private x3()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&order=-first_published_at&fields=excerpt,header_image_url,views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->b()Lcom/ifengyu/intercom/o/b/a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/o/b/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/o/b/b;

    check-cast v1, Lcom/ifengyu/intercom/o/b/a;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/o/b/a;->c()Lcom/ifengyu/intercom/o/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/d/c;->b(Lcom/ifengyu/intercom/o/c/a;)V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->m3()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->n3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->D:Landroid/view/View;

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->o3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->D:Landroid/view/View;

    return-object v0
.end method

.method public synthetic q3(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->p3(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic s3(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->r3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic u3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->t3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->v3()V

    return-void
.end method
