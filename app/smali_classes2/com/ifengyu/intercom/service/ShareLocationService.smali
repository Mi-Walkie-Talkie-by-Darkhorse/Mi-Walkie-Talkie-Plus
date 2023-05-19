.class public Lcom/ifengyu/intercom/service/ShareLocationService;
.super Landroid/app/Service;
.source "ShareLocationService.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field private static h:Lcom/ifengyu/intercom/service/ShareLocationService;

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/location/AMapLocationClient;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/location/AMapLocationClientOption;

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/service/ShareLocationService;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.ifengyu.intercom.SHARE_LOCATION_RECEIVER"

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/service/ShareLocationService$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/service/ShareLocationService$b;-><init>(Lcom/ifengyu/intercom/service/ShareLocationService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/service/ShareLocationService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/service/ShareLocationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->n()V

    return-void
.end method

.method public static e()Lcom/ifengyu/intercom/service/ShareLocationService;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/service/ShareLocationService;->h:Lcom/ifengyu/intercom/service/ShareLocationService;

    return-object v0
.end method

.method private f()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->s()[D

    move-result-object v0

    .line 2
    new-instance v7, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->R()Ljava/lang/String;

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

    .line 3
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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v7}, Lcom/ifengyu/intercom/service/ShareLocationService;->m(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method private g()V
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/x;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->f()V

    return-void

    .line 3
    :cond_0
    new-instance v7, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v8

    double-to-int v4, v4

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    mul-double v5, v5, v8

    double-to-int v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    double-to-int v6, v8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u81ea\u5df1\u83b7\u53d6\u7684\u4f4d\u7f6e--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareLocationService"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v7}, Lcom/ifengyu/intercom/service/ShareLocationService;->m(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    double-to-int v1, v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    double-to-int v0, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/p/d0;->l0(DDI)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ifengyu/intercom/p/d0;->k0(DD)V

    :goto_0
    return-void
.end method

.method private h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->I()Lcom/ifengyu/intercom/database/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/i;->c(I)Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

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

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 6
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setBeanUser(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/service/ShareLocationService;->i(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 11
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/service/ShareLocationService;->p(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareLocationService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/service/ShareLocationService;->i(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/service/ShareLocationService;->p(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic j(Ljava/lang/String;Lcom/ifengyu/library/account/UserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ShareLocationService"

    const-string v1, "queryOtherInfo success"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p2, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setImgUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setName(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/service/ShareLocationService;->i(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    :cond_0
    return-void
.end method

.method public static l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BeanUserLocation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xa8c0

    sub-int/2addr v1, v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->I()Lcom/ifengyu/intercom/database/a/i;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/ifengyu/intercom/database/a/i;->a(II)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/service/ShareLocationService;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    .line 6
    new-instance v2, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;Z)V

    .line 7
    sget-object v1, Lcom/ifengyu/intercom/service/ShareLocationService;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/service/ShareLocationService;->i:Ljava/util/List;

    return-object v0
.end method

.method private m(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/t0;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/x0;->t1(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->l1(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->k(Ljava/lang/String;)Lcom/ifengyu/intercom/i/w0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/w0;->q1(Lcom/ifengyu/intercom/bean/BeanUserLocation;Lcom/ifengyu/blelib/b/c;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/u0;->o1(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/t0;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->l(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x2

    if-lt v0, v3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->U(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/service/a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/service/a;-><init>(Lcom/ifengyu/intercom/service/ShareLocationService;Ljava/lang/String;)V

    new-instance p1, Lcom/ifengyu/intercom/service/ShareLocationService$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/service/ShareLocationService$a;-><init>(Lcom/ifengyu/intercom/service/ShareLocationService;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public i(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 13

    .line 1
    new-instance v12, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v6

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result v9

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v11

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/database/AppDatabase;->I()Lcom/ifengyu/intercom/database/a/i;

    move-result-object p1

    invoke-interface {p1, v12}, Lcom/ifengyu/intercom/database/a/i;->b(Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;)J

    return-void
.end method

.method public synthetic k(Ljava/lang/String;Lcom/ifengyu/library/account/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->j(Ljava/lang/String;Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public o(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x2

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
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

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ShareLocationService"

    const-string v1, "onCreate"

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    .line 4
    sput-object p0, Lcom/ifengyu/intercom/service/ShareLocationService;->h:Lcom/ifengyu/intercom/service/ShareLocationService;

    .line 5
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    .line 7
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    .line 13
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    const-string v0, "alarm"

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->n()V

    return-void

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "ShareLocationService"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/ifengyu/intercom/service/ShareLocationService;->h:Lcom/ifengyu/intercom/service/ShareLocationService;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->b:Ljava/util/HashMap;

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 10
    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->d:Landroid/app/AlarmManager;

    if-eqz v1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->g:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    iput-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->g:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

.method public onDolphinReceiveLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDolphinReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/i0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u4f4d\u7f6e--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/i0;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareLocationService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->f()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->R()Ljava/lang/String;

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

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u6700\u65b0\u83b7\u53d6\u7684\u4f4d\u7f6e--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->m(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/p/d0;->l0(DDI)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/p/d0;->k0(DD)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->g()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/ShareLocationService;->g()V

    :goto_0
    return-void
.end method

.method public onMi3ReceiveLocationSync(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMi3ReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/i0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onSealReceiveLocationSync(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSealReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/i0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onSharkReceiveLocationSync(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;-><init>(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharkReceiveLocationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/i0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareLocationService"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "ShareLocationService"

    const-string v1, "onStartCommand"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v1, :cond_0

    const-string v1, "startLocation"

    .line 3
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
