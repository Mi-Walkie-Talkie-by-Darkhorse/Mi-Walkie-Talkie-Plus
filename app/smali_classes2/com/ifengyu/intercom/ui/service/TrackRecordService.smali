.class public Lcom/ifengyu/intercom/ui/service/TrackRecordService;
.super Landroid/app/Service;
.source "TrackRecordService.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;,
        Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;
    }
.end annotation


# instance fields
.field a:[F

.field private b:Lcom/amap/api/location/AMapLocationClient;

.field private c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

.field private d:D

.field private e:D

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/util/Timer;

.field private j:I

.field private k:Z

.field private l:J

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/ifengyu/intercom/greendao/bean/b;

.field private p:J

.field private q:Z

.field private r:Landroid/app/NotificationManager;

.field private s:I

.field private t:Landroid/widget/RemoteViews;

.field private u:Landroid/app/Notification;

.field private v:Ljava/lang/String;

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:I

    const/16 v0, 0x2711

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;F)F
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->w:F

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:I

    return v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->w:F

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:I

    return v0
.end method

.method private e()V
    .locals 6

    const v5, 0x7f09022e

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    return v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:I

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    return-object v0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/greendao/bean/c;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;)V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    return-void
.end method

.method public a(ZZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x42700000    # 60.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:Ljava/util/Timer;

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-interface {v0, v2, v3, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(JZ)V

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->deleteByKey(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/service/TrackRecordService$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$2;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Float;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(JZ)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public c()V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(JLjava/lang/String;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    move v5, v7

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(JLjava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    move v8, v7

    invoke-interface/range {v3 .. v8}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "TrackRecordService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TrackRecordService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:I

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->stopForeground(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 19

    const-string v2, "TrackRecordService"

    const-string v3, "onLocationChanged"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->v:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->v:Ljava/lang/String;

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->w:F

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_6

    float-to-int v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j:I

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->w:F

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    const/4 v2, 0x1

    new-array v10, v2, [F

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/ifengyu/intercom/bean/LocationBean;

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/ifengyu/intercom/bean/LocationBean;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_4
    :goto_0
    new-instance v10, Lcom/ifengyu/intercom/greendao/bean/c;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/ifengyu/intercom/greendao/bean/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c:Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v2, v5, :cond_8

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->n:I

    :cond_5
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e:D

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const-string v0, "TrackRecordService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->r:Landroid/app/NotificationManager;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04010f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    const v1, 0x7f100257

    const-string v2, "00:00:00"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    const v1, 0x7f100256

    const-string v2, "0m"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    const v1, 0x7f100255

    const-string v2, "0km/h"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->t:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f09022d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->s:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->u:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->startForeground(ILandroid/app/Notification;)V

    if-eqz p1, :cond_0

    const-string v0, "is_load_last_not_saved_track"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:Z

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    new-instance v2, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-direct {v2}, Lcom/ifengyu/intercom/greendao/bean/b;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/w;->a(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:Ljava/util/Timer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i:Ljava/util/Timer;

    new-instance v1, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;-><init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->q:Z

    const-string v0, "last_not_saved_track_primary_key_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->o:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k:Z

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/f;

    const/4 v2, 0x0

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    new-instance v4, Lcom/ifengyu/intercom/bean/LocationBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v8, v1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/ifengyu/intercom/bean/LocationBean;-><init>(DD)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "TrackRecordService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
