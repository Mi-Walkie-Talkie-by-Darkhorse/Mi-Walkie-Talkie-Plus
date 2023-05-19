.class public Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "DevicesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "r"


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->d:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y()V

    return-void
.end method

.method private A(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->j1()Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private F0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->u()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "deviceUid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 6
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->V(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/m;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private I(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->i(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ifengyu/intercom/database/a/g;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setOnline(I)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setNetDeviceModel(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic M(Ljava/lang/String;Ljava/lang/Long;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectPreDevice deviceModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/i/t0;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic O(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    const-string v1, "connectPreDevice query deviceModel error"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic Q(I)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->I(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic U(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->A(Ljava/util/List;I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->c0(I)V

    return-void
.end method

.method static synthetic W(ILcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/library/http/entity/HttpDataList;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/NetDeviceModel;

    .line 4
    new-instance v3, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v3}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, p0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 9
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 10
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBindTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 11
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBindTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 12
    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setNetDeviceModel(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/ifengyu/intercom/database/a/e;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setAgreedProtocolVersion(I)V

    .line 15
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/ifengyu/intercom/database/a/e;->e(I)I

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/ifengyu/intercom/database/a/e;->i(I)Ljava/util/List;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/ifengyu/intercom/database/a/g;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ifengyu/intercom/database/a/e;->a(Ljava/util/List;)V

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ifengyu/intercom/database/a/g;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private synthetic X(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    const-string v1, "getBindDeviceList success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->A(Ljava/util/List;I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->c1(I)V

    return-void
.end method

.method static synthetic b0(I)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ifengyu/intercom/database/a/e;->i(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c0(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->A(Ljava/util/List;I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->c1(I)V

    return-void
.end method

.method private synthetic g0()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->z0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic p0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->P0()V

    :cond_0
    return-void
.end method

.method static synthetic r0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic s0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    const-string v0, "unbindMi3GwDevice success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->s()V

    return-void
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)Lcom/ifengyu/intercom/ui/base/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p0

    return-object p0
.end method

.method private z0()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lcom/ifengyu/intercom/database/a/e;->b()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 4
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->g(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public A0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/b;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/d;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/i;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/i;

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public E0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/base/q;->V()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->F0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->e(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->d(Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->s()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->e(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->d(Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b()V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->s()V

    :goto_0
    return-void
.end method

.method public J(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getOnline()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->l1(Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->f1(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :goto_0
    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->l1(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void

    .line 8
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/j/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->i1()V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ifengyu/intercom/i/t0;->a(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public synthetic R(I)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->Q(I)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->U(ILjava/util/List;)V

    return-void
.end method

.method public synthetic a0(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->X(ILjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic e0(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->c0(ILjava/util/List;)V

    return-void
.end method

.method public synthetic h0()Lio/reactivex/ObservableSource;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->g0()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->p0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic u0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->s0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public v0(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/e;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/e;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V

    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/q;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/q;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public x0(I)V
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
    invoke-interface {v0}, Lcom/ifengyu/intercom/n/a;->k()Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/h;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/h;-><init>(I)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public y()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectPreDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/c;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/c;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/l;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/l;

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public y0(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/k;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/k;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/f;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/f;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V

    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/q;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/q;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
