.class public Lcom/ifengyu/intercom/ui/service/ShareLocationService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/service/ShareLocationService$d;
    }
.end annotation


# static fields
.field private static m:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

.field private static n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/amap/api/location/AMapLocationClient;

.field private c:Lcom/ifengyu/intercom/node/h;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/greendao/dao/b;

.field private f:Lcom/amap/api/location/AMapLocationClientOption;

.field private g:Landroid/app/AlarmManager;

.field private h:Landroid/app/PendingIntent;

.field private i:Ljava/lang/String;

.field private j:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

.field private k:Landroid/content/ServiceConnection;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "ShareLocationService"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$d;-><init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c:Lcom/ifengyu/intercom/node/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.ifengyu.intercom.SHARE_LOCATION_RECEIVER"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->i:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;-><init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->k:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;-><init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->j:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->j:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p1
.end method

.method public static a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->m:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$b;-><init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/g/a;->c(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->s()[D

    move-result-object v0

    new-instance v7, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v8

    double-to-int v4, v4

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    mul-double v5, v5, v8

    double-to-int v5, v5

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    double-to-int v6, v8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u4e0a\u6b21\u4fdd\u5b58\u7684\u4f4d\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareLocationService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method private b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->g()Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setBeanUser(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareLocationService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->g()Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao$Properties;->Time:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0xa8c0

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/d;

    new-instance v2, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v2, v1, v4}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/greendao/bean/d;Z)V

    sget-object v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->n:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->n:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x2

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 13

    new-instance v12, Lcom/ifengyu/intercom/greendao/bean/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/ifengyu/intercom/greendao/bean/d;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {p1, v12}, Lorg/greenrobot/greendao/AbstractDaoSession;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ShareLocationService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    sput-object p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->m:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c:Lcom/ifengyu/intercom/node/h;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v3, v1}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "ShareLocationService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c:Lcom/ifengyu/intercom/node/h;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->m:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g:Landroid/app/AlarmManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->l:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->l:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method public onDolphinReceiveLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDolphinReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/j0;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u4f4d\u7f6e--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/j0;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareLocationService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()V

    return-void

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double v5, v5, v7

    double-to-int v5, v5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-int v6, v9

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v7

    double-to-int v7, v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u6700\u65b0\u83b7\u53d6\u7684\u4f4d\u7f6e--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/i/d0;->a(DDI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/i/d0;->a(DD)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()V

    :goto_0
    return-void
.end method

.method public onSealReceiveLocationSync(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSealReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/j0;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onSharkReceiveLocationSync(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharkReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/j0;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "ShareLocationService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
