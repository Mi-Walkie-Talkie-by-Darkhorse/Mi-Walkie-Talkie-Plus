.class public Lcom/ifengyu/intercom/device/mi3gw/c/d0;
.super Ljava/lang/Object;
.source "DeviceDataShare.java"


# static fields
.field private static final j:Ljava/lang/String; = "d0"

.field private static k:Lcom/ifengyu/intercom/device/mi3gw/c/d0;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/intercom/device/mi3gw/c/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ifengyu/intercom/models/DeviceModel;

.field private g:Lcom/ifengyu/intercom/models/NetDeviceModel;

.field private h:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i:I

    return-void
.end method

.method private synthetic B(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/library/http/entity/HttpDataList;->getData()Ljava/util/ArrayList;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->a()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->M0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->H0(Ljava/util/ArrayList;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    :goto_0
    return-void
.end method

.method private synthetic D(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "createGroupForDevice success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->L0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->L0()V

    return-void
.end method

.method private synthetic F(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/library/http/entity/HttpDataList;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private synthetic H(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v1, "getDeviceGroupList success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->M0(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H0(Ljava/util/ArrayList;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;",
            "Lcom/ifengyu/intercom/device/mi3gw/c/f0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 3
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gidList"

    .line 5
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 7
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->x(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/h;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/h;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$m;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$m;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic J(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v1, "getDeviceCurrentGroup success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->D0()V

    return-void
.end method

.method private J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->f:Lcom/ifengyu/intercom/models/DeviceModel;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->h:Lcom/ifengyu/talk/http/entity/TempGroup;

    return-void
.end method

.method private synthetic L(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v1, "queryGroupWithMembers success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->h:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 5
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->H(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/TempGroup;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setGname(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setAvatar(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setOwner(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setUserCount(I)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setUserCount(I)V

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->M0(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private L0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/q;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private M0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/g;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic N(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/database/a/g;->e(J)Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setNickname(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setAvatar(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/database/a/g;->d(Lcom/ifengyu/intercom/models/NetDeviceModel;)J

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    return-void
.end method

.method private N0(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private O0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic P(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v1, "queryDeviceInfo success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic R(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/library/http/entity/HttpDataList;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method private synthetic T(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "getDeviceListenGroup success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic V(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p4, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "updateMemberInGroupName success"

    invoke-static {p4, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p4, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->p(JLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method

.method private synthetic X(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p4, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "updateGroupName success"

    invoke-static {p4, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p4, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->E(JLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method

.method private synthetic Z(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/library/http/entity/HttpDataList;->getData()Ljava/util/ArrayList;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->a()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->M0()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v4}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->K0(Ljava/util/ArrayList;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    goto :goto_0

    :cond_4
    const p2, 0x7f11037b

    .line 11
    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->b(I)V

    :goto_0
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    return-object p0
.end method

.method private synthetic b0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "orderDeviceGroup success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->G0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->L0()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i:I

    return p0
.end method

.method private synthetic d0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "deleteDeviceListenGroup success"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->a()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->M0()V

    return-void
.end method

.method private synthetic f0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "removeMemberFromDeviceGroup success"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->r(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method

.method private synthetic h0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "setDeviceListenGroup success"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->a()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->M0()V

    return-void
.end method

.method private synthetic j0(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->z0()V

    return-void
.end method

.method private synthetic l0(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->A0()V

    return-void
.end method

.method private synthetic n0(JLjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->B0(J)V

    return-void
.end method

.method private synthetic p0(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->C0()V

    return-void
.end method

.method private synthetic r0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "avatar"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 4
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->i(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    return-object v0
.end method

.method private synthetic t(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "addMemberToDeviceGroup success"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->P(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method

.method private synthetic t0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "updateDeviceAvatar success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->S()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->O0()V

    return-void
.end method

.method private synthetic v([JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "batchAddGroupForDevice success"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->F([J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->L0()V

    return-void
.end method

.method private synthetic v0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "updateDeviceInfo success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->S()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->O0()V

    return-void
.end method

.method private synthetic x([JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "batchQuitGroup success"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->k0([J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->L0()V

    return-void
.end method

.method private synthetic x0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "updateDeviceGroupAvatar success"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->t1(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method

.method private synthetic z(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j:Ljava/lang/String;

    const-string v0, "changeDeviceGroupOwner success"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->R0(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N0(J)V

    return-void
.end method


# virtual methods
.method public synthetic A(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->z(JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public A0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->D(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/m;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$o;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$o;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public B0(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ifengyu/intercom/n/a;->z(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/o;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;

    invoke-direct {v2, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic C(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->B(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V

    return-void
.end method

.method public C0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->S(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/l;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/j;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$r;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$r;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public D0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->F(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/k;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/a0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$p;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$p;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic E(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->D(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public E0(JLjava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nicknameIn"

    .line 2
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 4
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/ifengyu/intercom/n/a;->C(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/y;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;JLjava/lang/String;)V

    new-instance p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;

    invoke-direct {p3, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 8
    invoke-virtual {v0, v1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public F0(JLjava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gname"

    .line 3
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 5
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ifengyu/intercom/n/a;->t(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/b0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/b0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;JLjava/lang/String;)V

    new-instance p3, Lcom/ifengyu/intercom/device/mi3gw/c/d0$s;

    invoke-direct {p3, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$s;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 9
    invoke-virtual {v0, v1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic G(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->F(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public varargs G0([J)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "gidList"

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 7
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/e;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$c;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic I(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->H(Ljava/util/ArrayList;)V

    return-void
.end method

.method public I0(J[Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object p3

    const-string v2, "account"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "accountList"

    .line 4
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "application/json; charset=utf-8"

    .line 6
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/ifengyu/intercom/n/a;->p(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p3

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/c;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$f;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 10
    invoke-virtual {p3, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic K(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->J(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method

.method public K0(Ljava/util/ArrayList;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/ifengyu/intercom/device/mi3gw/c/f0;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gidList"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/n;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/n;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$n;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$n;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_1
    :goto_0
    const p1, 0x7f11037b

    .line 10
    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->b(I)V

    return-void
.end method

.method public synthetic M(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->L(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method

.method public synthetic O(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->N(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    return-void
.end method

.method public P0(Ljava/io/File;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "image/png"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->q(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/t;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/t;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/r;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/r;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$h;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic Q(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->P(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    return-void
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nickname"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 4
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/n/a;->i(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/x;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/x;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$i;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public R0(JLjava/io/File;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "image/png"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "file"

    invoke-static {v1, p3, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 4
    invoke-interface {v0, p3}, Lcom/ifengyu/intercom/n/a;->q(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p3

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$u;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 7
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$t;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$t;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 9
    invoke-virtual {p3, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic S(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->R(Lcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic U(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->T(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic W(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->V(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic Y(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->X(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic a0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->Z(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/HttpDataList;)V

    return-void
.end method

.method public addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic c0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public closeDoubleGroupListen(Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->F(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/f;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/f;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$l;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$l;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d(J[Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object p3

    const-string v2, "account"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "accountList"

    .line 4
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "application/json; charset=utf-8"

    .line 6
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/ifengyu/intercom/n/a;->l(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p3

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/p;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$e;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 10
    invoke-virtual {p3, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public varargs e([J)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "gidList"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 7
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ifengyu/intercom/n/a;->R(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/u;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/u;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;[J)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;[J)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic e0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public varargs f([J)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "gidList"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 7
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ifengyu/intercom/n/a;->f(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/w;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/w;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;[J)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$a;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;[J)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newOwner"

    .line 3
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/ifengyu/intercom/n/a;->w(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p3

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/c0;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/c0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/d0$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$g;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V

    .line 9
    invoke-virtual {p3, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic g0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->f0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public h([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object p1

    const-string v2, "account"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "accountList"

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "gname"

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json; charset=utf-8"

    .line 8
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object p2

    .line 10
    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/n/a;->G(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/mi3gw/c/z;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/z;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$d;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 12
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public i()Lcom/ifengyu/talk/http/entity/TempGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->h:Lcom/ifengyu/talk/http/entity/TempGroup;

    return-object v0
.end method

.method public synthetic i0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->h0(Lcom/ifengyu/intercom/device/mi3gw/c/f0;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public j()Lcom/ifengyu/talk/http/entity/TempGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->d:Lcom/ifengyu/talk/http/entity/TempGroup;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k0(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j0(Ljava/lang/Long;)V

    return-void
.end method

.method public l(J)Lcom/ifengyu/talk/http/entity/TempGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/http/entity/TempGroup;

    return-object p1
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic m0(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l0(Ljava/lang/Long;)V

    return-void
.end method

.method public n()Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->f:Lcom/ifengyu/intercom/models/DeviceModel;

    return-object v0
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic o0(JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n0(JLjava/lang/Long;)V

    return-void
.end method

.method public openDoubleGroupListen(Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const v0, 0x7f1102f4

    .line 2
    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->b(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->F(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/i;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/i;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$j;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$j;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public q()Lcom/ifengyu/intercom/models/NetDeviceModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    return-object v0
.end method

.method public synthetic q0(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->p0(Ljava/lang/Long;)V

    return-void
.end method

.method public r(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->J0()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->f:Lcom/ifengyu/intercom/models/DeviceModel;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/g;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->g:Lcom/ifengyu/intercom/models/NetDeviceModel;

    :goto_0
    return-void
.end method

.method public removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic s0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->r0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->t(JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic u0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->t0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic w([JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->v([JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic w0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->v0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic y([JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->x([JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic y0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->x0(JLcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public z0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->s(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/s;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/c/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/v;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/c/d0$k;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0$k;-><init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
