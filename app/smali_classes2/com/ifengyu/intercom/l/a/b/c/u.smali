.class public Lcom/ifengyu/intercom/l/a/b/c/u;
.super Landroidx/lifecycle/a;
.source "ConfigFileViewModel.java"


# static fields
.field private static final g:Ljava/lang/String; = "u"


# instance fields
.field private final b:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/common/model/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/ifengyu/intercom/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->b:Landroidx/lifecycle/o;

    .line 3
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    .line 4
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->d:Landroidx/lifecycle/o;

    .line 5
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->e:Landroidx/lifecycle/o;

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    return-void
.end method

.method private synthetic B(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->C()Lcom/ifengyu/intercom/database/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/a;->b(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    return-object p1
.end method

.method private synthetic D(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->D()Lcom/ifengyu/intercom/database/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/c;->e(Lcom/ifengyu/intercom/models/ConfigFileModel;)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getChannelModelList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/models/ChannelModel;->setConfigId(Ljava/lang/Long;)V

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/models/ChannelModel;->setId(Ljava/lang/Long;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->C()Lcom/ifengyu/intercom/database/a/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/database/a/a;->a(Ljava/util/List;)Ljava/util/List;

    .line 8
    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic F(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic H(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "load config failed failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic I(Lcom/ifengyu/intercom/models/ConfigFileModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->C()Lcom/ifengyu/intercom/database/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/a;->b(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->V(Lcom/ifengyu/intercom/models/ConfigFileModel;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic K(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "load channel success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->e:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic M(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "load channel failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->e:Landroidx/lifecycle/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic O(Lcom/ifengyu/intercom/l/a/b/c/u;Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->j(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic P(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->D()Lcom/ifengyu/intercom/database/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/c;->d(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-object p1
.end method

.method static synthetic R(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v0, "update config file success"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic S(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "update config file failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private V(Lcom/ifengyu/intercom/models/ConfigFileModel;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getFromDeviceType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    return-object p2

    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_9

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    return-object v1

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 8
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/models/ChannelModel;

    if-ge v5, v2, :cond_4

    .line 9
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v7

    if-nez v7, :cond_3

    return-object v1

    .line 10
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v7

    if-nez v7, :cond_5

    return-object v1

    .line 12
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x1

    :goto_2
    if-gt p2, v4, :cond_8

    add-int/lit8 v1, p2, -0x1

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v2

    if-eq v2, p2, :cond_7

    .line 14
    new-instance v2, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/models/ChannelModel;->setConfigId(Ljava/lang/Long;)V

    .line 16
    invoke-virtual {v2, p2}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    const/4 v5, 0x2

    .line 17
    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 18
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 19
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_9
    return-object v1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/l/a/b/c/u;)Lcom/ifengyu/intercom/database/AppDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    return-object p0
.end method

.method private j(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/e;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/h;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private k(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/a;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    return-object p1
.end method

.method public static synthetic m(Lcom/ifengyu/intercom/l/a/b/c/u;Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->k(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "delete config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_CONFIG_FILE_DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic p(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_CONFIG_FILE_DELETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic r(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->D()Lcom/ifengyu/intercom/database/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/c;->c(Ljava/util/List;)V

    return-object p1
.end method

.method private synthetic t(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v0, "delete config file success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_CONFIG_FILE_DELETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic v(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "delete config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_CONFIG_FILE_DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic x(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inset config file success, model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic z(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/u;->g:Ljava/lang/String;

    const-string v1, "insert config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->d:Landroidx/lifecycle/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic A(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->z(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic C(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->B(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-object p1
.end method

.method public synthetic E(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->D(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic G(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->F(Ljava/util/List;)V

    return-void
.end method

.method public synthetic J(Lcom/ifengyu/intercom/models/ConfigFileModel;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->I(Lcom/ifengyu/intercom/models/ConfigFileModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic L(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->K(Ljava/util/List;)V

    return-void
.end method

.method public synthetic N(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->M(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic Q(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->P(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-object p1
.end method

.method public T()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->D()Lcom/ifengyu/intercom/database/a/c;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/c/t;->a:Lcom/ifengyu/intercom/l/a/b/c/t;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/j;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    sget-object v2, Lcom/ifengyu/intercom/l/a/b/c/o;->a:Lcom/ifengyu/intercom/l/a/b/c/o;

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public U(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/p;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/p;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/n;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/n;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/g;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public W(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/c;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/l/a/b/c/b;->a:Lcom/ifengyu/intercom/l/a/b/c/b;

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/c/d;->a:Lcom/ifengyu/intercom/l/a/b/c/d;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->f:Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->D()Lcom/ifengyu/intercom/database/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/database/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/u$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/u$a;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/s;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    new-instance v2, Lcom/ifengyu/intercom/l/a/b/c/r;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/a/b/c/r;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/m;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/l;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/l;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/i;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const v0, 0x7f1100d9

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "yyyyMMddHHmmss"

    invoke-static {v2, v3, v0}, Lcom/ifengyu/intercom/device/lite/utils/f;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/q;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/a/b/c/f;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/c/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/c/k;-><init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public g()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->b:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public h()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public i()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public l()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/common/model/OperationResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/u;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public synthetic o(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->n(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic q(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic s(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->r(Ljava/util/List;)Ljava/util/List;

    return-object p1
.end method

.method public synthetic u(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->t(Ljava/util/List;)V

    return-void
.end method

.method public synthetic w(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic y(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->x(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method
