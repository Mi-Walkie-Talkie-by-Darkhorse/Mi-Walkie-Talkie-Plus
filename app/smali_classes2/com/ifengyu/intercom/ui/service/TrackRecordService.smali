.class public Lcom/ifengyu/intercom/ui/service/TrackRecordService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;,
        Lcom/ifengyu/intercom/ui/service/TrackRecordService$d;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/location/AMapLocationClient;

.field private b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

.field private c:D

.field private d:D

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/Timer;

.field private i:I

.field private j:Z

.field private k:J

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/ifengyu/intercom/greendao/bean/b;

.field private o:J

.field private p:Landroid/app/NotificationManager;

.field private q:I

.field private r:Landroid/widget/RemoteViews;

.field private s:Landroid/app/Notification;

.field private t:Ljava/lang/String;

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:D

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:I

    const/16 v0, 0x2711

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;F)F
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:F

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p1, -0xffff01

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->i()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110352

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v5, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/String;)V

    :cond_1
    const-string v1, " - "

    if-eqz v0, :cond_5

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:F

    return p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:I

    return p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    return p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:I

    return p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:Landroid/app/NotificationManager;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;)V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:Ljava/util/Timer;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    if-eqz p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e()V

    const/4 p1, 0x0

    iget p2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    if-lez p2, :cond_2

    iget p2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p2, v0

    div-float/2addr p2, v0

    div-float/2addr p1, p2

    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#.0"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Float;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    const/4 p2, 0x1

    invoke-interface {p1, v0, v1, p2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(JZ)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz p1, :cond_5

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    invoke-interface {p1, v1, v2, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(JZ)V

    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object p1

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 14

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(JLjava/lang/String;ZZ)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz v2, :cond_2

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(JLjava/lang/String;ZZ)V

    :cond_2
    return-void

    :cond_3
    iget-object v8, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz v8, :cond_4

    iget-wide v9, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    iget-object v11, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(JLjava/lang/String;ZZ)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:D

    iput-wide v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v1

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/c;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/c;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "TrackRecordService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ifengyu/intercom/ui/service/TrackRecordService$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$d;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TrackRecordService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:I

    new-instance v1, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v1, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "TrackRecordService"

    const-string v2, "onLocationChanged"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:F

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_8

    float-to-int v1, v2

    iput v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:I

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    const v2, 0x40666666    # 3.6f

    mul-float v1, v1, v2

    iput v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:F

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v13

    new-array v15, v3, [F

    iget-wide v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:D

    iget-wide v6, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    move-wide v8, v1

    move-wide v10, v13

    move-object v12, v15

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v12, 0x0

    aget v4, v15, v12

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    new-instance v5, Lcom/ifengyu/intercom/bean/LocationBean;

    invoke-direct {v5, v1, v2, v13, v14}, Lcom/ifengyu/intercom/bean/LocationBean;-><init>(DD)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/b;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_4
    iget-wide v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    cmpl-double v10, v8, v6

    if-eqz v10, :cond_5

    move-wide v6, v8

    move-wide v8, v1

    move-wide v10, v13

    const/16 v16, 0x0

    move-object v12, v15

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v4, v15, v16

    iget v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x0

    :goto_1
    new-instance v4, Lcom/ifengyu/intercom/greendao/bean/c;

    const/16 v18, 0x0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v8, v1, v6

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    mul-double v6, v6, v13

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v6, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    invoke-direct/range {v17 .. v25}, Lcom/ifengyu/intercom/greendao/bean/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:J

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    iget v6, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v4, v5, v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(Ljava/util/ArrayList;Z)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:I

    :cond_7
    iput-wide v1, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:D

    iput-wide v13, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    :cond_8
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const-string v0, "TrackRecordService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/widget/RemoteViews;

    const v1, 0x7f09044d

    const-string v2, "00:00:00"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/widget/RemoteViews;

    const v1, 0x7f09044b

    const-string v2, "0m"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/widget/RemoteViews;

    const v1, 0x7f09044c

    const-string v2, "0km/h"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "track_service"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const-string v0, "track_foreground_service"

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/core/app/NotificationCompat$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Z)Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->c(Z)Landroidx/core/app/NotificationCompat$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$b;->b(Z)Landroidx/core/app/NotificationCompat$b;

    const v3, 0x7f110048

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    const v3, 0x7f110351

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    const v3, 0x7f0e0005

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$b;->a(I)Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-static {v4, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:Landroid/app/Notification;

    const/16 v3, 0x20

    iput v3, v0, Landroid/app/Notification;->flags:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:I

    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    if-eqz p1, :cond_3

    const-string v0, "is_load_last_not_saved_track"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    new-instance v2, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-direct {v2}, Lcom/ifengyu/intercom/greendao/bean/b;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    goto/16 :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    const-string v0, "last_not_saved_track_primary_key_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:I

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:Z

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/greendao/bean/c;

    new-instance v4, Lcom/ifengyu/intercom/bean/LocationBean;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/c;->g()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v9, v7

    invoke-direct {v4, v5, v6, v9, v10}, Lcom/ifengyu/intercom/bean/LocationBean;-><init>(DD)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:Ljava/util/Timer;

    if-nez v0, :cond_4

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:Ljava/util/Timer;

    new-instance v2, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
