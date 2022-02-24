.class public Lcom/ifengyu/intercom/ui/adapter/h;
.super Ljava/lang/Object;
.source "GaoDeOfflineDownloadedChild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->d:Z

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/h$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/h$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/h;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->j:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/h;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/h;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "quanguogaiyaotu"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "National Basic Map"

    goto/16 :goto_0

    :cond_0
    const-string v0, "xian"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Xi\'an"

    goto/16 :goto_0

    :cond_1
    const-string v0, "yaan"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Ya\'an"

    goto :goto_0

    :cond_2
    const-string v0, "liuan"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Liu\'an"

    goto :goto_0

    :cond_3
    const-string v0, "huaian"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Huai\'an"

    goto :goto_0

    :cond_4
    const-string v0, "guanan"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "Guang\'an"

    goto :goto_0

    :cond_5
    const-string v0, "taian"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Tai\'an"

    goto :goto_0

    :cond_6
    const-string v0, "xianggang"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "Hong Kong"

    goto :goto_0

    :cond_7
    const-string v0, "aomen"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "Macao"

    goto :goto_0

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(I)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/16 p1, 0x63

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setProgress(I)V

    .line 31
    iput v1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method private a(IIZ)V
    .locals 0

    .line 21
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz p3, :cond_0

    .line 22
    invoke-virtual {p3, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    .line 23
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p3, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 24
    :cond_0
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 25
    iput p1, p3, Landroid/os/Message;->what:I

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->j:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/h;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/h;->a(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/h;->b()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/h;->b(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setProgress(I)V

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/h;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/h;->d(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b6

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->e:Landroid/view/View;

    const v1, 0x7f0900da

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->f:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->e:Landroid/view/View;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->g:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->e:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(I)V
    .locals 2

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setTextIsDisplayable(Z)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->h:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->setProgress(I)V

    .line 12
    iput v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/h;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/h;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/h;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/adapter/h;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    return-object p0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->restart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/adapter/h;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object p0
.end method

.method private declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/adapter/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-double v0, p1

    div-double/2addr v0, v2

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    const v4, 0x7f1101ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->d:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/intercom/ui/adapter/h;->a(IIZ)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->i:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/k;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/k;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/k;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    invoke-direct {p1, v2, v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/k;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/h;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;-><init>(Landroid/content/Context;ZZ)V

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/h$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/h$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/h;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/k$a;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method
