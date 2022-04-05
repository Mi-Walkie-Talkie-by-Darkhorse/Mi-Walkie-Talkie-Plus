.class public Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;,
        Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;
    }
.end annotation


# instance fields
.field private final q:Ljava/lang/String;

.field private r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/View;

.field private u:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "MyTrackActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    return-void
.end method

.method private A()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/greendao/bean/b;

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$e;

    invoke-direct {v4, p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    invoke-static {v3, v2, v4}, Lcom/ifengyu/intercom/g/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/g/d/b;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->y:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingleTrackDataFromServer---serverTrackID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyTrackActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-static {p1, v0, v0, v1}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x:Z

    return p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->y:I

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    return p0
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->k()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$h;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$h;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Lcom/ifengyu/intercom/greendao/bean/b;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    return v0
.end method

.method private f(I)V
    .locals 3

    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f110248

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    const v0, 0x7f1100f5

    const v2, 0x7f08013e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(I)V

    const p1, 0x7f1100d7

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    const p1, 0x7f080191

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

    return-object p0
.end method

.method private w()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$g;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private x()V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, v0, v1}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private y()V
    .locals 2

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f110355

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0902cd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:Landroid/view/View;

    return-void
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadMoreItems  sectionLoadTrackLastLoadIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyTrackActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->y:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x:Z

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090419

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->y()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->IsSaved:Lorg/greenrobot/greendao/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->BeginTime:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->z()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x()V

    return-void
.end method
