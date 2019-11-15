.class public Lcom/amap/api/mapcore/util/fb;
.super Ljava/lang/Object;
.source "OfflineChild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Landroid/view/View;

.field private l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fb;->i:Z

    new-instance v0, Lcom/amap/api/mapcore/util/fb$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/fb$1;-><init>(Lcom/amap/api/mapcore/util/fb;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fb;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->b()V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fb;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-void
.end method

.method private a(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v2, 0x8

    iget v0, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->setProgress(I)V

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "#4287ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/fb;->e(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/fb;->c(I)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->f()V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/fb;->d(I)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->e()V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/fb;->b(I)V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->c()V

    goto :goto_1

    :sswitch_8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->e()V

    goto :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->d()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_6
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_8
        0x67 -> :sswitch_8
    .end sparse-switch
.end method

.method private a(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fb;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/fb;->a(II)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->b:Landroid/content/Context;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, -0x777778

    iget v0, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u4e0b\u8f7d-\u6709\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d(I)V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "#898989"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "#4287ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->f:Landroid/widget/TextView;

    const-string v1, "#898989"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

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
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->k:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/fb;->a:I

    return-void
.end method

.method public a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 6

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fb;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/fb;->i:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/fb;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->b:Landroid/content/Context;

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v1

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/fb;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->g()V

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/fb;->c(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
