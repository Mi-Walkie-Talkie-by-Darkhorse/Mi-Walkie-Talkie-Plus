.class public Lcom/ifengyu/intercom/ui/adapter/e;
.super Ljava/lang/Object;
.source "GaoDeOfflineCityChild.java"

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

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->d:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/e$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/e$1;-><init>(Lcom/ifengyu/intercom/ui/adapter/e;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/e;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v2, 0x1

    const-string v0, "quanguogaiyaotu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "National Basic Map"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "xian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Xi\'an"

    goto :goto_0

    :cond_1
    const-string v0, "yaan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ya\'an"

    goto :goto_0

    :cond_2
    const-string v0, "liuan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Liu\'an"

    goto :goto_0

    :cond_3
    const-string v0, "huaian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Huai\'an"

    goto :goto_0

    :cond_4
    const-string v0, "guanan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Guang\'an"

    goto :goto_0

    :cond_5
    const-string v0, "taian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Tai\'an"

    goto :goto_0

    :cond_6
    const-string v0, "xianggang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Hong Kong"

    goto :goto_0

    :cond_7
    const-string v0, "aomen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Macao"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f090259

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/e;->d(I)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    const v1, 0x7f10029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    const v1, 0x7f1002a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->e()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/e;->b(I)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f090236

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->c()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/e;->c(I)V

    return-void
.end method

.method private d()V
    .locals 0

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->d()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/e;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/adapter/e;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->restart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 6

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/adapter/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/e;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/adapter/e;->d:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/e;->a(IIZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/e$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/adapter/e$2;-><init>(Lcom/ifengyu/intercom/ui/adapter/e;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/adapter/e;->a(I)V

    :goto_0
    :pswitch_1
    const-string v0, "zxy-child"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/e;->c:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->g()V

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/adapter/e;->b(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/adapter/e;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
