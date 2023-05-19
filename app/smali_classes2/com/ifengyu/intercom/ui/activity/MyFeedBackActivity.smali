.class public Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "MyFeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$f;,
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;
    }
.end annotation


# instance fields
.field private j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/http/entity/FeedbackEntity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->M(I)V

    return-void
.end method

.method static synthetic G(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->J()V

    return-void
.end method

.method static synthetic H(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    return-object p0
.end method

.method private I(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->m:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->l:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private K()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->n:I

    const/16 v2, 0xa

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/n/a;->L(II)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/v;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private L()V
    .locals 2

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090491

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1101f9

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f09032a

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const v0, 0x7f090485

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->l:Landroid/view/View;

    return-void
.end method

.method private M(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f1102dd

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    :cond_0
    const v0, 0x7f110185

    const v1, 0x7f08018e

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->C(ZZII)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/n/a;->o(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/u;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/u;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    .line 8
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic N(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MyFeedBackActivity"

    const-string v1, "queryFeedBack success"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->m:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->g()V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->h()V

    .line 11
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->n:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->n:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->n:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->i()V

    :goto_0
    return-void
.end method

.method private synthetic P(ILcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "MyFeedBackActivity"

    const-string v0, "deleteFeedBack success"

    .line 1
    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->I(I)V

    const p1, 0x7f110113

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    const p1, 0x7f08018f

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->J()V

    return-void
.end method

.method private S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->m:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;)V

    return-void
.end method


# virtual methods
.method public synthetic O(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->N(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V

    return-void
.end method

.method public synthetic R(ILcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->P(ILcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->K()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09048e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->L()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->S()V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->n:I

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->K()V

    return-void
.end method
