.class public Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "MyTrackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;,
        Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/View;

.field private r:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

.field private s:I

.field private final t:I

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "MyTrackActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->t:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900c8

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$6;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/a/a;->b(Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(I)V

    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "MyTrackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleTrackDataFromServer---serverTrackID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:I

    return p1
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->deleteByKey(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$8;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Lcom/ifengyu/intercom/greendao/bean/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v0

    new-array v4, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v3, v0, v4}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/f;

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    invoke-static {v0, v3, v4}, Lcom/ifengyu/intercom/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/a/b/b;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    return v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:I

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q()V

    return-void
.end method

.method private q()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$7;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$7;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private r()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->q:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    const-string v0, "MyTrackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadMoreItems  sectionLoadTrackLastLoadIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Z

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->u:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->r()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->A:Lorg/greenrobot/greendao/f;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    new-array v2, v5, [Lorg/greenrobot/greendao/c/i;

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->b:Lorg/greenrobot/greendao/f;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v5, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->h:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "MyTrackActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
